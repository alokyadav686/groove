import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: const [
            CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
            ),
            SizedBox(width: 10),
            Text("Welcome back!\nchandrama", style: TextStyle(color: Colors.white,fontSize: 16, fontWeight: FontWeight.w600)),
          ],
        ),
        Row(
          children: const [
            Icon(Icons.bar_chart, color: Colors.white,),
            SizedBox(width: 16),
            Icon(Icons.notifications_none, color: Colors.white,),
            SizedBox(width: 16),
            Icon(Icons.settings, color: Colors.white,),
          ],
        ),
      ],
    );
    
  }
}