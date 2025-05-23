import 'package:flutter/material.dart';
import 'package:groovo/constants/colors.dart';

class CustomNav extends StatelessWidget {
  final int selectedIndex;
final void Function(int index) onItemSelected;

   const CustomNav({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(color: AppColors.primaryColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItems(Icons.home_outlined, "Home", 0),
          _buildNavItems(Icons.search, "Search", 1),
          _buildNavItems(Icons.folder_open_outlined, "Library", 2),
        ],
      ),
    );
  }

  Widget _buildNavItems(IconData icon, String label, int index) {
    bool isSelected = index == selectedIndex;
    return GestureDetector(
      onTap: () => onItemSelected(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.white),
          SizedBox(height: 4,),
          Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
