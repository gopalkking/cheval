import 'dart:convert';

import 'package:cheval/src/Views/Screens/New-Enquiry/permission.dart';
import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController mapController;
  LatLng? selectedLocation;
  LatLng? _initialPosition;
  String? pincode;
  String? selectedAddress;
  TextEditingController searchController = TextEditingController();
  List<dynamic> searchResults = [];
  final String apiKey = "AIzaSyCd7OjegEVO7lXnuBfmLK7S3Mv5mHghSjQ";
  final AppPermissions _permissions = AppPermissions();

  @override
  void initState() {
    super.initState();
    _permissions.locationcheckPermission();
    _setInitialLocation();
  }

  Future<void> _setInitialLocation() async {
    try {
      setState(() {
        _initialPosition = const LatLng(13.0843, 80.2705);
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Could not get current location: $e')),
      );
    }
  }

  Future<void> _getCurrentLocation() async {
    try {
      LocationSettings locationSettings = const LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 100,
      );

      Position position = await Geolocator.getCurrentPosition(
        locationSettings: locationSettings,
      );

      LatLng currentLocation = LatLng(position.latitude, position.longitude);

      mapController.animateCamera(
        CameraUpdate.newLatLngZoom(currentLocation, 15.0),
      );

      setState(() {
        selectedLocation = currentLocation;
      });
      _getPincode(currentLocation);
    } catch (e) {
      Get.snackbar(
        'Current Location',
        'Could not get current location: $e',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
      );
    }
  }

  Future<void> _getPincode(LatLng location) async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
        location.latitude,
        location.longitude,
      );
      if (placemarks.isNotEmpty) {
        Placemark place = placemarks.first;
        setState(() {
          selectedAddress = [
            place.name,
            place.subLocality?.isNotEmpty == true ? place.subLocality : null,
            place.locality,
            place.administrativeArea,
            place.country
          ].where((element) => element != null).join(", ");
          pincode = place.postalCode;
        });
      }
    } catch (e) {
      Get.snackbar(
        'Error',
        'Could not fetch pincode: $e',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
      );
    }
  }

  Future<void> _searchPlaces(String query) async {
    final String url =
        "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$query&key=$apiKey&components=country:in";

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        searchResults = data['predictions'];
      });
    } else {
      Get.snackbar(
        'Error',
        'Failed to fetch places',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
      );
    }
  }

  Future<void> _selectPlace(String placeId) async {
    final String url =
        "https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&key=$apiKey";

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      double lat = data['result']['geometry']['location']['lat'];
      double lng = data['result']['geometry']['location']['lng'];

      LatLng newLocation = LatLng(lat, lng);

      mapController.animateCamera(
        CameraUpdate.newLatLngZoom(newLocation, 15.0),
      );

      setState(() {
        selectedLocation = newLocation;
        _getPincode(newLocation);
        searchController.clear();
        searchResults = [];
      });
    } else {
      Get.snackbar(
        'Error',
        'Failed to fetch places',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: theme.splashColor,
        title: TextField(
          controller: searchController,
          style:  TextStyle(color: Appcolors.appColors.shade100, fontSize: 20),
          decoration: InputDecoration(
            hintText: "Search location...",
            border: InputBorder.none,
            suffixIcon: searchController.text.isNotEmpty
                ? IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      setState(() {
                        searchController.clear();
                        searchResults = [];
                      });
                    },
                  )
                : null,
          ),
          onChanged: _searchPlaces,
        ),
      ),
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: _initialPosition!,
              zoom: 12.0,
            ),
            onMapCreated: (GoogleMapController controller) {
              mapController = controller;
            },
            onTap: (LatLng location) {
              setState(() {
                selectedLocation = location;
                _getPincode(location);
              });
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Selected Location: $location')),
              );
            },
            markers: selectedLocation != null
                ? {
                    Marker(
                      markerId: const MarkerId('selected-location'),
                      position: selectedLocation!,
                    ),
                  }
                : {},
          ),
          if (searchResults.isNotEmpty)
            Positioned(
              top: 10,
              left: 10,
              right: 10,
              child: Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(8),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: searchResults.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const Icon(Icons.location_on),
                      title: Text(searchResults[index]['description']),
                      onTap: () {
                        _selectPlace(searchResults[index]['place_id']);
                      },
                    );
                  },
                ),
              ),
            ),
          Positioned(
            bottom: 100,
            right: 16,
            child: FloatingActionButton(
              onPressed: _getCurrentLocation,
              child: const Icon(Icons.my_location),
            ),
          ),
          Positioned(
              bottom: 16,
              left: 56,
              right: 56,
              child: ButtonWidget(
                text: 'Pick Location',
                width: MediaQuery.of(context).size.width / 1.6,
                height: 46,
                color: theme.hintColor,
                onPressed: () {
                  if (selectedLocation != null) {
                    Navigator.pop(context, {
                      "location": selectedLocation,
                      "pincode": pincode,
                      "address": selectedAddress
                    });
                  } else {
                    Get.snackbar(
                      'Error',
                      'Please select a location on the map',
                      snackPosition: SnackPosition.BOTTOM,
                      backgroundColor: Colors.redAccent,
                      colorText: Colors.white,
                    );
                  }
                },
              )),
        ],
      ),
    );
  }
}
