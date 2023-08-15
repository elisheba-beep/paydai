import 'package:flutter/material.dart';
import 'package:paydai/bottomNav.dart';
import 'package:paydai/mainPages/cards.dart';
import 'package:paydai/mainPages/home.dart';
import 'package:paydai/mainPages/settings.dart';
import 'package:paydai/mainPages/transactions.dart';
import 'package:paydai/subpages/home/swap.dart';

// main pages
const String landingPage = 'landingPage';
const String homePage = 'homePage';
const String cardsPage = 'cardsPage';
const String transactionsPage = 'transactionsPage';
const String settingsPage = 'settingsPage';

// subpages
// home
const String swap = 'swap';

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    // main pages
    case landingPage:
      return MaterialPageRoute(builder: (context) => const BottomNav());

    case homePage:
      return MaterialPageRoute(builder: (context) => const Home());

    case cardsPage:
      return MaterialPageRoute(builder: (context) => const Cards());

    case transactionsPage:
      return MaterialPageRoute(builder: (context) => const Transactions());

    case settingsPage:
      return MaterialPageRoute(builder: (context) => const Settings());

    // subpages
    // home
    case swap:
      return MaterialPageRoute(builder: (context) => const Swap());

    default:
      throw ('this route name does not exist');
  }
}
