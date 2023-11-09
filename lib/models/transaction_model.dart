enum TransactionType {
  outflow,
  inflow,
}

enum ItemCategoryType {
  fashion,
  grocery,
  payments,
}

class Transaction {
  final ItemCategoryType? categoryType;
  final TransactionType? transactionType;
  final String? itemName;
  final String? categoryName;
  final String? amount;
  final String? date;

  const Transaction({
    this.categoryType,
    this.transactionType,
    this.itemName,
    this.categoryName,
    this.amount,
    this.date,
  });
}
