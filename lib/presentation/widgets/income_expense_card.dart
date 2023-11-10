import 'package:flutter/material.dart';
import 'package:money_manager/presentation/utils/custom_colors.dart';
import 'package:money_manager/presentation/utils/custom_size.dart';
import 'package:money_manager/presentation/utils/dimension.dart';

class IncomeExpenseCard extends StatelessWidget {
  const IncomeExpenseCard({super.key, required this.label, required this.amount, required this.icon});

  final String label;
  final String amount;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: Dimensions.defaultSpacing - 2, horizontal: Dimensions.defaultSpacing / 2),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            blurRadius: 12,
            spreadRadius: 3,
            offset: Offset.zero,
            color: Colors.black12,
          )
        ],
        color: label == "Income" ? CustomColors.primaryDark : CustomColors.accent,
        borderRadius: BorderRadius.circular(Dimensions.defaultRadius),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
              ),
              CustomSize.height5,
              Text(
                amount,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ],
          ),
          Icon(
            icon,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
