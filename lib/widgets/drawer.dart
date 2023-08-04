import 'package:flutter/material.dart';
import 'package:tca_app_v2/widgets/list_tiles.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key, required this.selectScreen});

  final void Function(String identifier) selectScreen;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const SizedBox(
            height: 50.0,
          ),
          ListTiles(
            selectedScreen: selectScreen,
          ),
        ],
      ),
    );
  }
}
