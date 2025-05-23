import 'package:flutter/material.dart';

class RecentListening extends StatelessWidget {
  const RecentListening({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _recentCard(
            "https://images.unsplash.com/photo-1553095066-5014bc7b7f2d",
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _recentCard(
            "https://images.unsplash.com/photo-1553095066-5014bc7b7f2d",
          ),
        ),
      ],
    );
  }

  Widget _recentCard(String imageUrl) {
    return Container(
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
