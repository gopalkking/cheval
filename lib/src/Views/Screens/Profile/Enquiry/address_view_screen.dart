import 'package:cheval/src/Views/Routes/routes_name.dart';
import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/Utlilies/images.dart';
import 'package:cheval/src/Views/widgets/back_arrow_widget.dart';
import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddressViewScreen extends StatefulWidget {
  const AddressViewScreen({super.key});

  @override
  State<AddressViewScreen> createState() => _AddressViewScreenState();
}

class _AddressViewScreenState extends State<AddressViewScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
        decoration: BoxDecoration(
        image: const DecorationImage(
            image: AssetImage(Appimage.map),
            alignment: Alignment.bottomCenter,
            fit: BoxFit.contain),
        color: Appcolors.appColors.shade50,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 36,horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BackArrowWidget(text: 'Enquiry #: 123456789',onTap: (){
                  Get.back();
                },),
                24.vspace,
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Appcolors.appColors.shade100
                    ),
                    color: theme.splashColor,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Date: 15-12-2024',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Appcolors.appColors.shade100,
                      ),),
                      Text('Time: 10.45 AM',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Appcolors.appColors.shade100,
                      ),),
                      Text('Status: Enquiry placed',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Appcolors.appColors.shade100,
                      ),),
                      Text('Enquiry No',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Appcolors.appColors.shade100,
                      ),),
                    ],
                  ),
                ),
                16.vspace,
                    Text('Date: 15-12-2024',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Appcolors.appColors.shade100,
                      ),),
                      Text('Time: 10.45 AM',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Appcolors.appColors.shade100,
                      ),),
                      Text('Status: Bid Placed Bid No',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Appcolors.appColors.shade100,
                      ),),
                      Text('Broker Name: Lorem Ipsum',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Appcolors.appColors.shade100,
                      ),),
                      Text('Vehicle No: MH-12-CA-2365',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Appcolors.appColors.shade100,
                      ),),
                      Text('Driver Name: Lorem Ipsum',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Appcolors.appColors.shade100,
                      ),),
                    16.vspace,
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: theme.hintColor,
                        border: Border.all(
                          width: 1,
                          color: theme.splashColor,
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                           Text('Date: 15-12-2024',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Appcolors.appColors.shade100,
                      ),),
                      Text('Time: 10.45 AM',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Appcolors.appColors.shade100,
                      ),),
                      Text('Status: Bid Accepted',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Appcolors.appColors.shade100,
                      ),),
                        ],
                      ),
                    ),
                    16.vspace,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                          padding: const EdgeInsets.all(18),
                          decoration: BoxDecoration(
                            color: theme.splashColor,
                            border: Border.all(
                              width: 1,
                              color: Appcolors.appColors.shade100,
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                               Text('Date: 15-12-2024',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Appcolors.appColors.shade100,
                          ),),
                          Text('Time: 10.45 AM',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Appcolors.appColors.shade100,
                          ),),
                          Text('Status: Truck Loaded',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Appcolors.appColors.shade100,
                          ),),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: -26,
                          right: 10,
                          left: 10,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Appcolors.appColors.shade100,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            onPressed: (){
                              Get.toNamed(Appnames.generateLR);
                            }, 
                          child: Text('Upload LR',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: theme.splashColor,
                            fontWeight: FontWeight.w700
                          ),)))
                        ],
                      ),
                    Image.asset(Appimage.truck,height: 96,width: 150,fit: BoxFit.cover),
                      ],
                    ),
                    36.vspace,
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       Container(
                          padding: const EdgeInsets.all(18),
                          decoration: BoxDecoration(
                            color: theme.splashColor,
                            border: Border.all(
                              width: 1,
                              color: Appcolors.appColors.shade100,
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                               Text('Date: 15-12-2024',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Appcolors.appColors.shade100,
                          ),),
                          Text('Time: 10.45 AM',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Appcolors.appColors.shade100,
                          ),),
                          Text('Status: Trip Started',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Appcolors.appColors.shade100,
                          ),),
                            ],
                          ),
                        ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                          padding: const EdgeInsets.all(18),
                          decoration: BoxDecoration(
                            color: theme.splashColor,
                            border: Border.all(
                              width: 1,
                              color: Appcolors.appColors.shade100,
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                               Text('Date: 15-12-2024',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Appcolors.appColors.shade100,
                          ),),
                          Text('Time: 10.45 AM',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Appcolors.appColors.shade100,
                          ),),
                          Text('Status: Trip Ended',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Appcolors.appColors.shade100,
                          ),),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: -26,
                          right: 10,
                          left: 10,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Appcolors.appColors.shade100,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            onPressed: (){}, 
                          child: Text('Live Track',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: theme.splashColor,
                            fontWeight: FontWeight.w700
                          ),)))
                        ],
                      ),
                      ],
                    ),
                    24.vspace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(Appimage.file,height: 46,width: 46,fit: BoxFit.cover),
                        4.hspace,
                        Text('Upload \nDocuments',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Appcolors.appColors.shade100
                        ),
                        textAlign: TextAlign.start,
                        )
                      ],
                    ),                
              ],
            ),
          ),
        ),
      ),
    );
  }
}