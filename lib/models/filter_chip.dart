class FilterChipData {
  String label;
  bool isSelected;

  FilterChipData(this.label, this.isSelected);
}

List<FilterChipData> categories = [
  FilterChipData("Cakes", false),
  FilterChipData("Cupcakes", false),
  FilterChipData("Macaroon", false),
  FilterChipData("Cakepops", false),
];
