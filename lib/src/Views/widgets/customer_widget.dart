import 'package:flutter/material.dart';

class CustomerWidget extends StatelessWidget {
  final TextEditingController textEditingController;
  final AutovalidateMode? autovalidateMode;
   final String? Function(String?)? validator;
  const CustomerWidget({super.key, required this.textEditingController, this.autovalidateMode, this.validator});

  @override
  Widget build(BuildContext context) {
     ThemeData theme = Theme.of(context);
    return TextFormField(
      controller: textEditingController,
      style: Theme.of(context).textTheme.titleSmall,
      autovalidateMode: autovalidateMode,
      decoration: InputDecoration(
         contentPadding: const EdgeInsets.all(12),
        fillColor: theme.scaffoldBackgroundColor,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0.0),
                  borderSide: const BorderSide(
                    color: Colors.red,
                    width: 2.0
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide:  BorderSide(
                    color: theme.splashColor,
                    width: 2.0,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  borderSide:  BorderSide(
                    color: theme.splashColor,
                    width: 2.0
                  )
                ),
      ),
    );
  }
}