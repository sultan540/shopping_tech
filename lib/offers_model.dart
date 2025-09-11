class OffersModel {
  final String title;
  final String subtitle;
  final String textbutton;
  OffersModel({
    required this.title,
    required this.subtitle,
    required this.textbutton,
  });
}

final List<OffersModel> Offers = [
  OffersModel(
    title: "50% off \nElectronics",
    textbutton: "50% OFF",
    subtitle: "Limited time offer \non all tech \ngadgets",
  ),
  OffersModel(
    title: "Free \nShipping\nWeekend",
    textbutton: "FREE SHIP",
    subtitle: "No delivery \ncharges on \norders above \$50",
  ),
  OffersModel(
    title: "Buy 2 Get 1 Free",
    textbutton: "B2G1",
    subtitle: "On selected \naccessories and \nperipherals",
  ),
  OffersModel(
    title: "Student \nDiscount",
    textbutton: "20% OFF",
    subtitle: "Extra 20% off with \nvalid student ID",
  ),
  OffersModel(
    title: "Bundle Deals",
    textbutton: "BUNDLE",
    subtitle: "Save more when\nyou buy complete \nsetups",
  ),
];
