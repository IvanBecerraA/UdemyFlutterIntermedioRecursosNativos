import 'package:flutter/material.dart';



class MenuItem {
  final String title;
  final IconData icon;
  final String route;

  MenuItem(this.title, this.icon, this.route);
}

final menuItems = <MenuItem>[
  MenuItem('Giróscopio', Icons.downloading, '/gyroscope'),
  MenuItem('Acelerómetro', Icons.speed, '/accelerometer'),
  MenuItem('Magnetrometro', Icons.explore_outlined, '/magnetrometer'),

  MenuItem('Brújula', Icons.sports_baseball_outlined, '/compass'),
  MenuItem('Giróscopio Ball', Icons.explore, '/compass'),
];



class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.count(
      crossAxisCount: 3,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: menuItems.map((item) => HomeMenuItem(
        title: item.title, 
        icon: item.icon, 
        route: item.route
      )).toList()
    );
  }
}


class HomeMenuItem extends StatelessWidget {

  final String title;
  final IconData icon;
  final String route;
  final List<Color> bgColors;

  const HomeMenuItem({
    super.key,
    required this.title,
    required this.icon,
    required this.route,
    this.bgColors = const [Colors.lightBlue, Colors.blue]
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColors[0],
    );
  }
}