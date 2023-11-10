import 'package:money_manager/models/transaction_model.dart';

class UserInfoModel {
  final String userName;
  final String totalBalance;
  final String inflow;
  final String outflow;
  final List<Transaction> transaction;

  UserInfoModel({
    required this.userName,
    required this.totalBalance,
    required this.inflow,
    required this.outflow,
    required this.transaction,
  });
}

const List<Transaction> transactionOne = [
  Transaction(
    categoryType: ItemCategoryType.fashion,
    transactionType: TransactionType.outflow,
    categoryName: "shoes",
    itemName: "Puma Sneakers",
    amount: "3,500.00",
    date: "Aug 3",
  ),
  Transaction(
    categoryType: ItemCategoryType.fashion,
    transactionType: TransactionType.outflow,
    categoryName: "Bag",
    itemName: "Gucci Flac",
    amount: "8,390.00",
    date: "Nov 9",
  ),
];

const List<Transaction> transactionTwo = [
  Transaction(
    categoryType: ItemCategoryType.payments,
    transactionType: TransactionType.inflow,
    categoryName: "Payments",
    itemName: "Transfer from Jacksson",
    amount: "18,220.00",
    date: "Oct 21",
  ),
  Transaction(
    categoryType: ItemCategoryType.grocery,
    transactionType: TransactionType.outflow,
    categoryName: "Food",
    itemName: "Chicken wing",
    amount: "489.00",
    date: "Oct 8",
  ),
  Transaction(
    categoryType: ItemCategoryType.payments,
    transactionType: TransactionType.inflow,
    categoryName: "Payment",
    itemName: "Comapany income",
    amount: "489.00",
    date: "Sep 21",
  ),
  Transaction(
    categoryType: ItemCategoryType.fashion,
    transactionType: TransactionType.outflow,
    categoryName: "Specs",
    itemName: "Raiban",
    amount: "4699.00",
    date: "Sep 17",
  ),
];

final userData = UserInfoModel(
  userName: "Hey, John!",
  totalBalance: "4,586.00",
  inflow: "4,000.00",
  outflow: "2,000.00",
  transaction: transactionOne,
);
