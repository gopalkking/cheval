import 'package:cheval/src/Views/Utlilies/colors.dart';
import 'package:flutter/material.dart';

class RecentBidsWidget extends StatelessWidget {
  final String enquiry;
  final String date;
  final String from;
  final String to;
  final String brokerName;
  final String brokerRating;
  final Widget widget;
  const RecentBidsWidget({super.key, required this.enquiry, required this.date, required this.from, required this.to, required this.brokerName, required this.brokerRating, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Appcolors.appColors.shade100,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(enquiry,style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: const Color(0xff232323),
                ),),
                Text(date,style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: const Color(0xff232323),
                ),),
                Text(from,style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: const Color(0xff232323),
                ),),
                Text(to,style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: const Color(0xff232323),
                ),),
                Text(brokerName,style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: const Color(0xff232323),
                ),),
                Text(brokerRating,style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: const Color(0xff232323),
                ),),
              ],
            ),
            widget,
        ],
      ),
    );
  }
}