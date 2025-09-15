import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'ShopCraft'**
  String get appTitle;

  /// No description provided for @subtitle.
  ///
  /// In en, this message translates to:
  /// **'Your Premium Shopping'**
  String get subtitle;

  /// No description provided for @subtitle1.
  ///
  /// In en, this message translates to:
  /// **'Experience'**
  String get subtitle1;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signIn;

  /// No description provided for @signup.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signup;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @text1.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get text1;

  /// No description provided for @text2.
  ///
  /// In en, this message translates to:
  /// **'Join ShopCraft today'**
  String get text2;

  /// No description provided for @text3.
  ///
  /// In en, this message translates to:
  /// **'  Enter your name'**
  String get text3;

  /// No description provided for @text4.
  ///
  /// In en, this message translates to:
  /// **'Please enter your name'**
  String get text4;

  /// No description provided for @text5.
  ///
  /// In en, this message translates to:
  /// **'  Enter your email'**
  String get text5;

  /// No description provided for @text6.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid email'**
  String get text6;

  /// No description provided for @text7.
  ///
  /// In en, this message translates to:
  /// **'  Enter your password'**
  String get text7;

  /// No description provided for @text8.
  ///
  /// In en, this message translates to:
  /// **'Please enter your email'**
  String get text8;

  /// No description provided for @text9.
  ///
  /// In en, this message translates to:
  /// **'  Confirm your password'**
  String get text9;

  /// No description provided for @text10.
  ///
  /// In en, this message translates to:
  /// **'User saved '**
  String get text10;

  /// No description provided for @text11.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get text11;

  /// No description provided for @text12.
  ///
  /// In en, this message translates to:
  /// **'Password is required'**
  String get text12;

  /// No description provided for @text13.
  ///
  /// In en, this message translates to:
  /// **'Welcome Back'**
  String get text13;

  /// No description provided for @text14.
  ///
  /// In en, this message translates to:
  /// **'Email is required '**
  String get text14;

  /// No description provided for @text15.
  ///
  /// In en, this message translates to:
  /// **'Incorrect password '**
  String get text15;

  /// No description provided for @text16.
  ///
  /// In en, this message translates to:
  /// **'Forgot password'**
  String get text16;

  /// No description provided for @text17.
  ///
  /// In en, this message translates to:
  /// **'Account sign-in successfully'**
  String get text17;

  /// No description provided for @text18.
  ///
  /// In en, this message translates to:
  /// **'Our Products'**
  String get text18;

  /// No description provided for @text19.
  ///
  /// In en, this message translates to:
  /// **'Featured Products'**
  String get text19;

  /// No description provided for @text20.
  ///
  /// In en, this message translates to:
  /// **'Shop Our Collection'**
  String get text20;

  /// No description provided for @text21.
  ///
  /// In en, this message translates to:
  /// **'Hot Offers 🔥'**
  String get text21;

  /// No description provided for @text22.
  ///
  /// In en, this message translates to:
  /// **'Must start with a uppercase'**
  String get text22;

  /// No description provided for @textPremiumLaptop.
  ///
  /// In en, this message translates to:
  /// **'Premium Laptop Collection'**
  String get textPremiumLaptop;

  /// No description provided for @textWorkspace.
  ///
  /// In en, this message translates to:
  /// **'Professional Workspace'**
  String get textWorkspace;

  /// No description provided for @textLighting.
  ///
  /// In en, this message translates to:
  /// **'Ambient Lighting'**
  String get textLighting;

  /// No description provided for @offer1Title.
  ///
  /// In en, this message translates to:
  /// **'50% off \nElectronics'**
  String get offer1Title;

  /// No description provided for @offer1Subtitle.
  ///
  /// In en, this message translates to:
  /// **'Limited time offer \non all tech \ngadgets'**
  String get offer1Subtitle;

  /// No description provided for @offer1Button.
  ///
  /// In en, this message translates to:
  /// **'50% OFF'**
  String get offer1Button;

  /// No description provided for @offer2Title.
  ///
  /// In en, this message translates to:
  /// **'Free \nShipping\nWeekend'**
  String get offer2Title;

  /// No description provided for @offer2Subtitle.
  ///
  /// In en, this message translates to:
  /// **'No delivery \ncharges on \norders above  \$50'**
  String get offer2Subtitle;

  /// No description provided for @offer2Button.
  ///
  /// In en, this message translates to:
  /// **'FREE SHIP'**
  String get offer2Button;

  /// No description provided for @offer3Title.
  ///
  /// In en, this message translates to:
  /// **'Buy 2 Get 1 Free'**
  String get offer3Title;

  /// No description provided for @offer3Subtitle.
  ///
  /// In en, this message translates to:
  /// **'On selected \naccessories and \nperipherals'**
  String get offer3Subtitle;

  /// No description provided for @offer3Button.
  ///
  /// In en, this message translates to:
  /// **'B2G1'**
  String get offer3Button;

  /// No description provided for @offer4Title.
  ///
  /// In en, this message translates to:
  /// **'Student \nDiscount'**
  String get offer4Title;

  /// No description provided for @offer4Subtitle.
  ///
  /// In en, this message translates to:
  /// **'Extra 20% off with \nvalid student ID'**
  String get offer4Subtitle;

  /// No description provided for @offer4Button.
  ///
  /// In en, this message translates to:
  /// **'20% OFF'**
  String get offer4Button;

  /// No description provided for @offer5Title.
  ///
  /// In en, this message translates to:
  /// **'Bundle Deals'**
  String get offer5Title;

  /// No description provided for @offer5Subtitle.
  ///
  /// In en, this message translates to:
  /// **'Save more when\nyou buy complete \nsetups'**
  String get offer5Subtitle;

  /// No description provided for @offer5Button.
  ///
  /// In en, this message translates to:
  /// **'BUNDLE'**
  String get offer5Button;

  /// No description provided for @toastItemAdded.
  ///
  /// In en, this message translates to:
  /// **'Item added to cart'**
  String get toastItemAdded;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'  Password'**
  String get password;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
