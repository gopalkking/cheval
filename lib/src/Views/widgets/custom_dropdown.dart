import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  final String? value;
  final ValueChanged<String?> onChanged;
  final List<String> items;
  final String?labeltext;
  const CustomDropdown(
      {super.key,
      required this.value,
      required this.onChanged,
      required this.items,this.labeltext});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return DropdownButtonFormField<String>(
      style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 18),
      decoration: InputDecoration(
        labelText: labeltext,
        labelStyle: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 19),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(color: theme.splashColor, width: 2.0)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(color: theme.splashColor, width: 2.0)),
      ),
      isExpanded: true,
      iconSize: 26,
      icon: const Icon(
        Icons.arrow_drop_down,
        color: Colors.white,
      ),
      value:items.contains(value) ? value : null,
      items: items.map((String value) {
        return DropdownMenuItem<String>(
          value: value ,
          child: Text(
            value,
          ),
        );
      }).toList(),
      onChanged: onChanged,
      dropdownColor: Appcolors.appColors.shade50,
    );
  }
}
