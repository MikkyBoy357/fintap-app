class TransactionFilter {
  String? startDate;
  String? endDate;
  bool showDebit;
  bool showCredit;
  bool showBoth;
  bool sortNewest;

  TransactionFilter({
    this.startDate,
    this.endDate,
    this.showDebit = true,
    this.showCredit = true,
    this.showBoth = true,
    this.sortNewest = true,
  });
}