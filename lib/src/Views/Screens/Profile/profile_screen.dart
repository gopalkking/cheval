import 'package:cheval/src/Views/Routes/routes_name.dart';
import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/Utlilies/images.dart';
import 'package:cheval/src/Views/widgets/dialog_widget.dart';
import 'package:cheval/src/Views/widgets/profile_widget.dart';
import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
        decoration:  BoxDecoration(
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
            padding: const EdgeInsets.symmetric(vertical: 38,horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                       onTap: (){
                    Get.toNamed(Appnames.editProfile);
                  },
                      child: Text('Edit',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Appcolors.appColors.shade100,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),),
                    ),
                    4.hspace,
                    Image.asset(Appimage.edit,height: 14,width: 14,fit: BoxFit.fill,)
                  ],
                ),
                4.vspace,
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Appcolors.appColors.shade100,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Company Name',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: theme.splashColor,
                          ),),
                          Text('Phone: +91 099999999',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: theme.splashColor,
                          ),),
                          Text('Email : user@gmail.com',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: theme.splashColor,
                          ),),
                        ],
                      ),
                      Image.asset(Appimage.photo,height: 66,width: 66,fit: BoxFit.cover),
                    ],
                  ),
                ),
                16.vspace,
                InkWell(
                  onTap: (){
                    Get.toNamed(Appnames.enquiryManagement);
                  },
                  child: ProfileWidget(image:Image.asset(Appimage.preview,height: 24,width: 24,fit: BoxFit.fill), 
                  color:theme.splashColor,
                  text: 'Enquiry Management', image1: Image.asset(Appimage.arrow,height: 24,width: 24,fit: BoxFit.fill,color: Colors.white,)),
                ),
                8.vspace,
                InkWell(
                  onTap: (){
                    Get.toNamed(Appnames.shipmenttab);
                  },
                  child: ProfileWidget(image:Image.asset(Appimage.fast,height: 24,width: 24,fit: BoxFit.fill),
                  color:theme.splashColor, 
                  text: 'Shipment Management', image1: Image.asset(Appimage.arrow,height: 24,width: 24,fit: BoxFit.fill,color: Colors.white,)),
                ),
                8.vspace,
                InkWell(
                  onTap: (){
                    Get.toNamed(Appnames.customerManagement);
                  },
                  child: ProfileWidget(image:Image.asset(Appimage.rating,height: 24,width: 24,fit: BoxFit.fill),
                  color:theme.splashColor, 
                  text: 'Customer Management', image1: Image.asset(Appimage.arrow,height: 24,width: 24,fit: BoxFit.fill,color: Colors.white,)),
                ),
                8.vspace,
                InkWell(
                  onTap: (){
                    Get.toNamed(Appnames.communications);
                  },
                  child: ProfileWidget(image:Image.asset(Appimage.chat,height: 24,width: 24,fit: BoxFit.fill),
                  color:theme.splashColor, 
                  text: 'Communications', image1: Image.asset(Appimage.arrow,height: 24,width: 24,fit: BoxFit.fill,color: Colors.white,)),
                ),
                8.vspace,
                InkWell(
                  onTap: (){
                    Get.toNamed(Appnames.notification);
                  },
                  child: ProfileWidget(image:Image.asset(Appimage.notification,height: 24,width: 24,fit: BoxFit.fill),
                  color:theme.splashColor, 
                  text: 'Notification', image1: Image.asset(Appimage.arrow,height: 24,width: 24,fit: BoxFit.fill,color: Colors.white,)),
                ),
                8.vspace,
                InkWell(
                  onTap: (){
                    //Get.toNamed(Appnames.help);
                  },
                  child: ProfileWidget(image:Image.asset(Appimage.support,height: 24,width: 24,fit: BoxFit.fill),
                  color:theme.splashColor, 
                  text: 'Help & Support', image1: Image.asset(Appimage.arrow,height: 24,width: 24,fit: BoxFit.fill,color: Colors.white,)),
                ),
                8.vspace,
                InkWell(
                  onTap: (){
                    Get.toNamed(Appnames.reportAndAnalytics);
                  },
                  child: ProfileWidget(image:Image.asset(Appimage.report,height: 24,width: 24,fit: BoxFit.fill),
                  color:theme.splashColor, 
                  text: 'Reports & Analytics', image1: Image.asset(Appimage.arrow,height: 24,width: 24,fit: BoxFit.fill,color: Colors.white,)),
                ),
                8.vspace,
                InkWell(
                  onTap: () {
                    Get.toNamed(Appnames.subscribeScreen);
                  },
                  child: ProfileWidget(image:Image.asset(Appimage.subscription,height: 24,width: 24,fit: BoxFit.fill),
                  color:theme.splashColor, 
                  text: 'Subscription Management', image1: Image.asset(Appimage.arrow,height: 24,width: 24,fit: BoxFit.fill,color: Colors.white,)),
                ),
                8.vspace,
                InkWell(
                  onTap: (){
                    Get.toNamed(Appnames.invoiceAndPayments);
                  },
                  child: ProfileWidget(image:Image.asset(Appimage.bill,height: 24,width: 24,fit: BoxFit.fill),
                  color:theme.splashColor, 
                  text: 'Invoices & Payments', image1: Image.asset(Appimage.arrow,height: 24,width: 24,fit: BoxFit.fill,color: Colors.white,)),
                ),
                8.vspace,
                 InkWell(
                  onTap: (){Get.toNamed(Appnames.termsOfServices);},
                   child: ProfileWidget(image:Image.asset(Appimage.terms,height: 24,width: 24,fit: BoxFit.fill),
                   color:theme.splashColor, 
                                   text: 'Terms Of Services', image1: Image.asset(Appimage.arrow,height: 24,width: 24,fit: BoxFit.fill,color: Colors.white,)),
                 ),
                8.vspace,
                 InkWell(
                  onTap: (){
                    Get.toNamed(Appnames.privacyPolicyTabs);
                  },
                   child: ProfileWidget(image:Image.asset(Appimage.privacy,height: 24,width: 24,fit: BoxFit.fill),
                   color:theme.splashColor, 
                                   text: 'Privacy Policy', image1: Image.asset(Appimage.arrow,height: 24,width: 24,fit: BoxFit.fill,color: Colors.white,)),
                 ),
                12.vspace,
                 InkWell(
                  onTap: (){
                    logoutBox();
                  },
                   child: ProfileWidget(image:Image.asset(Appimage.logout,height: 24,width: 24,fit: BoxFit.fill),
                   color:const Color(0xffA8A8A8), 
                  text: 'Log Out', image1: Image.asset(Appimage.arrow,height: 24,width: 24,fit: BoxFit.fill,color: Colors.white,)),
                 ),
                12.vspace,
                InkWell(
                  onTap: (){
                    alertBox();
                  },
                  child: ProfileWidget(image:Image.asset(Appimage.delete,height: 24,width: 24,fit: BoxFit.fill),
                  color:const Color(0xffBF0300), 
                  text: 'Delete Account', image1: Image.asset(Appimage.arrow,height: 24,width: 24,fit: BoxFit.fill,color: Colors.white,)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  alertBox()  {
    return showDialog(context: context, builder: (context){
      return  MyDialogWidget(text: 'Delete Account', 
      text1: 'Are you sure you want to Delete the Account', 
      text2: ' Please note once your account, it is irreversible. All your data will be deleted and cant able to recover it!', 
      buttontext: 'Delete', 
      canceltext: 'Cancel',
      onPressed: (){
        Navigator.pop(context);
      },
      cancelButton: (){
        Navigator.pop(context);
      },
      );
    });
  }

  logoutBox()  {
    return showDialog(context: context, builder: (context){
      return  MyDialogWidget(text: 'Logout', 
      text1: 'Do you want to proceed with logout?', 
      text2: '',
      buttontext: 'Cancel', 
      canceltext: 'Logout',
      onPressed: (){
        Navigator.pop(context);
      },
      cancelButton: (){
        Navigator.pop(context);
      },
      );
    });
  }
}