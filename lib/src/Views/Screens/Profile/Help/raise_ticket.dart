import 'package:cheval/src/Views/Routes/routes_name.dart';
import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:cheval/src/Views/Utlilies/images.dart';
import 'package:cheval/src/Views/widgets/custom_button.dart';
import 'package:cheval/src/Views/widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RaiseTicketScreen extends StatefulWidget {
  const RaiseTicketScreen({super.key});

  @override
  State<RaiseTicketScreen> createState() => _RaiseTicketScreenState();
}

class _RaiseTicketScreenState extends State<RaiseTicketScreen> {
  TextEditingController subject = TextEditingController();
  TextEditingController desc = TextEditingController();
  String? selectedValue;
  String? selectedCategory;

  List<DropdownMenuItem> droplist = [
    const DropdownMenuItem(
      value: 'Low',
      child: Text('Low'),
    ),
    const DropdownMenuItem(
      value: 'Medium',
      child: Text('Medium'),
    ),
    const DropdownMenuItem(
      value: 'High',
      child: Text('High'),
    ),
  ];
  List<DropdownMenuItem> categoryList = [
    const DropdownMenuItem(
      value: 'AAA',
      child: Text('AAA'),
    ),
    const DropdownMenuItem(
      value: 'BBB',
      child: Text('BBB'),
    ),
    const DropdownMenuItem(
      value: 'CCC',
      child: Text('CCC'),
    ),
  ];

  clickEvent(String value) async {
    selectedValue = value;
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      color: Appcolors.appColors.shade50,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                   Get.toNamed(Appnames.help);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        Appimage.down,
                        height: 30,
                        width: 20,
                      ),
                      Text(
                        'Help & Support',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),
                8.vspace,
                Center(
                  child: Text(
                    'Raise A Ticket',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
                16.vspace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Select Category',
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium!
                          .copyWith(color: Colors.white.withValues(alpha:0.75)),
                    ),
                    Text(
                      ' *',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            color: Colors.red,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                  ],
                ),
                 Container(
                  //SET HEIGHT
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child: IntrinsicWidth(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: StatefulBuilder(builder: (context, miniState) {
                        return DropdownButtonHideUnderline(
                          child: DropdownButton(
                            //OR SET iconSize
                            // iconSize: 45,
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(
                                    color: Colors.grey.shade800, fontSize: 18),
                            iconEnabledColor: Appcolors.appColors.shade100,
                            focusColor: Colors.transparent,
                            hint: Text('Select Category',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium
                                    ?.copyWith(
                                      color: Colors.grey.shade800,
                                    )),
                            dropdownColor: Colors.white,
                            iconSize: 34,
                            icon: Container(
                              height: 50,
                              width: 50,
                              decoration:  BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  bottomLeft: Radius.circular(8),
                                  topRight: Radius.circular(12),
                                  bottomRight: Radius.circular(12)
                                ),
                                color:theme.splashColor,
                              ),
                              child: const Icon(
                                Icons.arrow_drop_down,
                                color: Colors.white,
                              ),
                            ),
                            value: selectedCategory,
                            onChanged: (value) => setState(() {
                              selectedCategory = value;
                            }),
                            items: categoryList,
                          ),
                        );
                      }),
                    ),
                  ),
                ),
                24.vspace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Subject',
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium!
                          .copyWith(color: Colors.white.withValues(alpha:0.75)),
                    ),
                    Text(
                      ' *',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            color: Colors.red,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: TextFormField(
                    controller: subject,
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          color: Colors.grey.shade800,
                        ),
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                        hintText: 'Enter Subject',
                        hintStyle:
                            Theme.of(context).textTheme.labelMedium!.copyWith(
                                  color: Colors.grey.shade800,
                                ),
                        alignLabelWithHint: true,
                        fillColor: Colors.white,
                        filled: true),
                  ),
                ),
                24.vspace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Description',
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium!
                          .copyWith(color: Colors.white.withValues(alpha:0.75)),
                    ),
                    Text(
                      ' *',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            color: Colors.red,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: TextFormField(
                    controller: desc,
                    minLines: 4,
                    maxLines: null,
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          color: Colors.grey.shade800,
                        ),
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                        hintText: 'Describe Your issue',
                        hintStyle:
                            Theme.of(context).textTheme.labelMedium!.copyWith(
                                  color: Colors.grey.shade800,
                                ),
                        alignLabelWithHint: true,
                        fillColor: const Color(0xffD7D7D7),
                        filled: true),
                  ),
                ),
                24.vspace,
                Text(
                  'Attachments (you can select multiple files) ',
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(color: Colors.white.withValues(alpha:0.75)),
                ),
                4.vspace,
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 46,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 46,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(4),
                                  bottomRight: Radius.circular(4)),
                              color: theme.splashColor),
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            'Choose Files',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(color: Colors.grey.shade800),
                          ),
                        ),
                        12.hspace,
                        Text(
                          'No Files Choosen',
                          style:
                              Theme.of(context).textTheme.labelMedium!.copyWith(
                                    color: Colors.grey.shade800,
                                  ),
                        )
                      ],
                    ),
                  ),
                ),
                // const SizedBox(height: 16.0),
                // ListView.builder(
                //   shrinkWrap: true,
                //   physics: const NeverScrollableScrollPhysics(),
                //   itemCount: ticketController.selectedFiles.length,
                //   itemBuilder: (context, index) {
                //     return ListTile(
                //       contentPadding: const EdgeInsets.symmetric(vertical: 5),
                //       leading: const Icon(Icons.file_present),
                //       title: Text(
                //         ticketController.selectedFiles[index].name,
                //         style: Theme.of(context).textTheme.labelSmall!.copyWith(
                //               color: Colors.white,
                //             ),
                //       ),
                //       trailing: IconButton(
                //         icon: const Icon(Icons.remove_circle, color: Colors.red),
                //         onPressed: () => removeFile(index),
                //       ),
                //     );
                //   },
                // ),
                24.vspace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Select Priority',
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium!
                          .copyWith(color: Colors.white.withValues(alpha:0.75)),
                    ),
                    Text(
                      ' *',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            color: Colors.red,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                  ],
                ),
                4.vspace,
                Container(
                  //SET HEIGHT
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child: IntrinsicWidth(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: StatefulBuilder(builder: (context, miniState) {
                        return DropdownButtonHideUnderline(
                          child: DropdownButton(
                            //OR SET iconSize
                            // iconSize: 45,
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(
                                    color: Colors.grey.shade800, fontSize: 18),
                            iconEnabledColor: Appcolors.appColors.shade100,
                            focusColor: Colors.transparent,
                            hint: Text('Select Priority',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium
                                    ?.copyWith(
                                      color: Colors.grey.shade800,
                                    )),
                            dropdownColor: Colors.white,
                            iconSize: 34,
                            icon: Container(
                              height: 50,
                              width: 50,
                              decoration:  BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  bottomLeft: Radius.circular(8),
                                  topRight: Radius.circular(12),
                                  bottomRight: Radius.circular(12)
                                ),
                                color:theme.splashColor,
                              ),
                              child: const Icon(
                                Icons.arrow_drop_down,
                                color: Colors.white,
                              ),
                            ),
                            value: selectedValue,
                            onChanged: (value) => setState(() {
                              clickEvent(value);
                            }),
                            items: droplist,
                          ),
                        );
                      }),
                    ),
                  ),
                ),
                36.vspace,
                Center(
                    child: ButtonWidget(
                  text: 'Raise A Ticket',
                  width: MediaQuery.of(context).size.width / 2,
                  height: 50,
                  color: theme.splashColor,
                  onPressed: () {
                    Get.toNamed(Appnames.help);
                  },
                )),
                16.vspace,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
