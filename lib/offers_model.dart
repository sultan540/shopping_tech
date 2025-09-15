import 'package:flutter/widgets.dart';
import 'package:sprints_shopping_app/l10n/app_localizations.dart';

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

List<OffersModel> getOffers(BuildContext context) {
  final loc = AppLocalizations.of(context)!;

  return [
    OffersModel(
      title: loc.offer1Title,
      subtitle: loc.offer1Subtitle,
      textbutton: loc.offer1Button,
    ),
    OffersModel(
      title: loc.offer2Title,
      subtitle: loc.offer2Subtitle,
      textbutton: loc.offer2Button,
    ),
    OffersModel(
      title: loc.offer3Title,
      subtitle: loc.offer3Subtitle,
      textbutton: loc.offer3Button,
    ),
    OffersModel(
      title: loc.offer4Title,
      subtitle: loc.offer4Subtitle,
      textbutton: loc.offer4Button,
    ),
    OffersModel(
      title: loc.offer5Title,
      subtitle: loc.offer5Subtitle,
      textbutton: loc.offer5Button,
    ),
  ];
}
