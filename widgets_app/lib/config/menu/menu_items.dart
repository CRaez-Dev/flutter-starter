import 'package:flutter/material.dart' show IconData, Icons;
import 'package:flutter/widgets.dart';
import 'package:widgets_app/ui/screens/screens.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final String name;
  final IconData icon;
  final Widget widget;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.name,
    required this.icon,
    required this.widget,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
      name: ButtonsScreen.name,
      title: 'Buttons',
      subTitle: "Flutter's Buttons ",
      link: '/buttons',
      icon: Icons.smart_button_outlined,
      widget: ButtonsScreen()),
  MenuItem(
      name: CardsScreen.name,
      title: 'Card',
      subTitle: 'Stylized container',
      link: '/cards',
      icon: Icons.credit_card,
      widget: CardsScreen()),
  MenuItem(
      name: ProgressScreen.name,
      title: 'Progress indicator',
      subTitle: 'Controlled and general',
      link: '/progress_indicator',
      icon: Icons.refresh_rounded,
      widget: ProgressScreen()),
  MenuItem(
      name: SnackbarScreen.name,
      title: 'Snackbars and Dialog',
      subTitle: 'Screen kpis',
      link: '/snackbars',
      icon: Icons.info_outline,
      widget: SnackbarScreen()),
  MenuItem(
      name: AnimatedScreen.name,
      title: 'Animated container',
      subTitle: 'Statefull widget animated',
      link: '/animated',
      icon: Icons.check_box_outlined,
      widget: AnimatedScreen())
];
