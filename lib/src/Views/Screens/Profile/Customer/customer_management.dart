import 'package:cheval/src/Views/Routes/routes_name.dart';
import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/Utlilies/images.dart';
import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:cheval/src/Views/widgets/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomerManagement extends StatefulWidget {
  const CustomerManagement({super.key});

  @override
  State<CustomerManagement> createState() => _CustomerManagementState();
}

class _CustomerManagementState extends State<CustomerManagement> {
  TextEditingController searchname = TextEditingController();
  TextEditingController searchType = TextEditingController();
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
        decoration: BoxDecoration(
        image: const DecorationImage(
            image: AssetImage(Appimage.map), alignment: Alignment.bottomCenter,fit: BoxFit.contain),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(Appimage.down,height: 30,width: 20,),
                    Text('Customer Management',style: Theme.of(context).textTheme.headlineSmall,)
                  ],
                ),
                24.vspace,
                Text('Search By Name',style: Theme.of(context).textTheme.bodyLarge),
                4.vspace,
                Textformfieldwidget(textEditingController: searchname),
                16.vspace,
                Text('Search By Type',style: Theme.of(context).textTheme.bodyLarge),
                4.vspace,
                Textformfieldwidget(textEditingController: searchType),
                24.vspace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 140,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Appcolors.appColors.shade100,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                          )
                        ),
                        onPressed: (){}, 
                      child: Text('Search',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color:const Color(0xff04A0B0),
                        fontSize: 16,
                        fontWeight: FontWeight.w700
                      ),)),
                    ),
                    SizedBox(
                      height: 40,
                      width: 140,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Appcolors.appColors.shade100,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                          )
                        ),
                        onPressed: (){
                          Get.toNamed(Appnames.customerAdd);
                        }, 
                      child: Text('+ Add',style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color:const Color(0xff04A0B0),
                        fontSize: 16,
                        fontWeight: FontWeight.w700
                      ),)),
                    )
                  ],
                ),
                24.vspace,
                customerWidget(const Color(0xff005D67), 
                Appcolors.appColors.shade100,
                'Name: Lorem Ipsum',
                'Phone:+91 91234567890',
                'Email: test@email.com',
                'Type: Consignor', 
                SizedBox(
                  height: 30,
                  width: 100,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                      )
                    ),
                    onPressed: (){
                    Get.toNamed(Appnames.customerView);
                    }, 
                  child: Text('View',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: theme.splashColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w700
                  ),)),
                )),
                16.vspace,
                customerWidget(Appcolors.appColors.shade100, 
                const Color(0xff005D67),
                'Name: Lorem Ipsum',
                'Phone:+91 91234567890',
                'Email: test@email.com',
                'Type: Consignor', 
                SizedBox(
                  height: 30,
                  width: 100,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff005D67),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                      )
                    ),
                    onPressed: (){
                      Get.toNamed(Appnames.customerView);
                    }, 
                  child: Text('View',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Appcolors.appColors.shade100,
                    fontSize: 14,
                    fontWeight: FontWeight.w700
                  ),)),
                )),
                16.vspace,
                customerWidget(theme.splashColor, 
                Appcolors.appColors.shade100,
                'Name: Lorem Ipsum',
                'Phone:+91 91234567890',
                'Email: test@email.com',
                'Type: Consignor', 
                SizedBox(
                  height: 30,
                  width: 100,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                      )
                    ),
                    onPressed: (){
                       Get.toNamed(Appnames.customerView);
                    }, 
                  child: Text('View',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: theme.splashColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w700
                  ),)),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  customerWidget(Color color,Color textColor,String text,String text1,String text2,String text3,Widget widget) {
    return Container(
      padding:const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color:color,
        border: Border.all(
          width: 1,
          color: Colors.white
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(text,style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: textColor,
              ),),
               Text(text1,style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: textColor,
              ),),
               Text(text2,style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: textColor,
              ),),
               Text(text3,style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: textColor,
              ),),
            ],
          ),
          widget,
      ],),
    );
  }
}