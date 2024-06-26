import 'package:endgame/src/constants/color_constants.dart';
import 'package:flutter/material.dart';

class RoundedBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const RoundedBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(
        top: Radius.circular(15),
      ),
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: ColorConstants.navigationGradient,
            ),
            height: 55,
          ),
          BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: Colors.transparent,
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            onTap: onTap,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.event), label: "Events"),
              BottomNavigationBarItem(icon: Icon(Icons.group), label: "Teams"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Settings"),
            ],
          ),
        ],
      ),
    );
  }
}
