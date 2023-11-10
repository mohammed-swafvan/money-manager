import 'dart:math';
import 'package:flutter/material.dart';
import 'package:money_manager/models/transaction_model.dart';
import 'package:money_manager/presentation/utils/custom_colors.dart';
import 'package:money_manager/presentation/utils/dimension.dart';

class TransationItemTile extends StatelessWidget {
  const TransationItemTile({super.key, required this.transaction});
  final Transaction transaction;

  String getSign(TransactionType type) {
    switch (type) {
      case TransactionType.inflow:
        return "+";
      case TransactionType.outflow:
        return "-";
    }
  }

  Color getRandomiconBgColor() {
    Random random = Random();
    int index = random.nextInt(CustomColors.randomColorList.length);
    Color color = CustomColors.randomColorList[index];
    return color;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: Dimensions.defaultSpacing / 2),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset.zero,
            blurRadius: 8,
            spreadRadius: 2,
          ),
        ],
        color: CustomColors.background,
        borderRadius: BorderRadius.circular(
          Dimensions.defaultRadius,
        ),
      ),
      child: ListTile(
        leading: Container(
          padding: EdgeInsets.all(Dimensions.defaultSpacing / 2),
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                offset: Offset.zero,
                blurRadius: 4,
                spreadRadius: 2,
              ),
            ],
            color: getRandomiconBgColor(),
            borderRadius: BorderRadius.circular(Dimensions.defaultRadius - 3),
          ),
          child: Icon(
            transaction.categoryType == ItemCategoryType.fashion ? Icons.supervised_user_circle_sharp : Icons.house,
            size: 34,
            color: CustomColors.background,
          ),
        ),
        title: Text(
          transaction.categoryName!,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w700,
                color: CustomColors.fontDark,
                fontSize: Dimensions.fontSizeTitle,
              ),
        ),
        subtitle: Text(
          transaction.itemName!,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: CustomColors.fontSubHeading,
              ),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "${getSign(transaction.transactionType!)}\$${transaction.amount}",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color:
                        transaction.transactionType == TransactionType.outflow ? CustomColors.accent : CustomColors.primaryDark,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            Text(
              transaction.date!,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: CustomColors.fontSubHeading,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
