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
      name: CounterScreen.name,
      title: 'Counter Screen',
      subTitle: "Riverpod counter",
      link: '/counter_with_riverpod',
      icon: Icons.add,
      widget: CounterScreen()),
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
      widget: AnimatedScreen()),
  MenuItem(
      name: UiControlsScreen.name,
      title: 'Animated Ui Controls',
      subTitle: "Flutter's control series",
      link: '/ui_controls',
      icon: Icons.car_rental_outlined,
      widget: UiControlsScreen()),
  MenuItem(
      name: AppTutorialScreen.name,
      title: 'OnBoarding',
      subTitle: "Small OnBoarding",
      link: '/app_tutorial',
      icon: Icons.accessible_rounded,
      widget: AppTutorialScreen()),
  MenuItem(
      name: InfiniteScrollScreen.name,
      title: 'Infinite Scroll and PullRefresh',
      subTitle: "Infinite Scroll and PullRefresh",
      link: '/infinite_scroll_pull_to_refresh',
      icon: Icons.list_alt_rounded,
      widget: InfiniteScrollScreen())
];
