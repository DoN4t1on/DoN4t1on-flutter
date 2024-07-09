import 'package:donation/pages/activity.dart';
import 'package:donation/pages/home.dart';
import 'package:donation/pages/profile.dart';
import 'package:donation/pages/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeroPage extends StatelessWidget {
  const HeroPage({super.key});

  @override
  Widget build(BuildContext context) {
    var navbarNotifier = ValueNotifier(0);

    List<Widget> destinations = [
      NavigationDestination(
        icon: SvgPicture.asset('lib/assets/home.svg'),
        label: 'Home',
      ),
      NavigationDestination(
        icon: SvgPicture.asset('lib/assets/search.svg'),
        label: 'Search',
      ),
      NavigationDestination(
        icon: SvgPicture.asset('lib/assets/flash.svg'),
        label: 'Activity',
      ),
      NavigationDestination(
        icon: SvgPicture.asset('lib/assets/user.svg'),
        label: 'Profile',
      ),
    ];

    var destinationPages = const [
      HomePage(),
      SearchPage(),
      ActivityPage(),
      ProfilePage(),
    ];

    var destinationAppBarText = [
      'Donation',
      'Search',
      'Activity',
      'Profile',
    ];

    return ValueListenableBuilder(
      valueListenable: navbarNotifier,
      builder: (context, value, _) => Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title:  Text(destinationAppBarText[value]),
        ),
        body: destinationPages[value],
        bottomNavigationBar: NavigationBar(
          selectedIndex: value,
          destinations: destinations,
          onDestinationSelected: (value) => navbarNotifier.value = value,
        ),
      ),
    );
  }
}
