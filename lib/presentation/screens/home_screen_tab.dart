import 'package:flutter/material.dart';
import 'package:money_manager/models/user_info_model.dart';
import 'package:money_manager/presentation/utils/custom_colors.dart';
import 'package:money_manager/presentation/utils/custom_size.dart';
import 'package:money_manager/presentation/utils/dimension.dart';
import 'package:money_manager/presentation/widgets/income_expense_card.dart';
import 'package:money_manager/presentation/widgets/transation_item_tile.dart';

class HomeScreenTab extends StatelessWidget {
  const HomeScreenTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(Dimensions.defaultSpacing),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSize.height30,
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(Dimensions.defaultRadius),
                child: Image.asset("assets/images/avatar.jpeg"),
              ),
              title: Text(userData.userName),
              trailing: Image.asset("assets/icons/bell.png"),
            ),
            CustomSize.height20,
            Center(
              child: Column(
                children: [
                  Text(
                    "\$${userData.totalBalance}",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  CustomSize.height5,
                  Text(
                    "Total Balance",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: CustomColors.fontSubHeading, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            CustomSize.height20,
            Row(
              children: [
                Expanded(
                  child: IncomeExpenseCard(
                    label: "Income",
                    amount: "\$${userData.inflow}",
                    icon: Icons.arrow_upward,
                  ),
                ),
                CustomSize.width15,
                Expanded(
                  child: IncomeExpenseCard(
                    label: "Expense",
                    amount: "-\$${userData.outflow}",
                    icon: Icons.arrow_downward,
                  ),
                ),
              ],
            ),
            CustomSize.height20,
            Text(
              "Recent Transactions",
              style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            CustomSize.height15,
            Text(
              "Today",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: CustomColors.fontSubHeading, fontWeight: FontWeight.w500),
            ),
            ...userData.transaction.map(
              (transaction) => TransationItemTile(transaction: transaction),
            ),
            CustomSize.height10,
            Text(
              "Yesterday",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: CustomColors.fontSubHeading, fontWeight: FontWeight.w500),
            ),
            ...transactionTwo.map(
              (transaction) => TransationItemTile(transaction: transaction),
            ),
          ],
        ),
      ),
    );
  }
}
