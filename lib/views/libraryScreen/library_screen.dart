import 'package:flutter/material.dart';
import 'package:groovo/constants/colors.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        title: Row(
          children: [
            Image.asset("assets/images/logo.png", height: 28),
            SizedBox(width: 8),
            Text(
              "Your Library",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.logoColor,
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          const SizedBox(height: 10),
          _buildCategoryChips(),
          const SizedBox(height: 24),
          _buildIconTile(Icons.add, Colors.cyanAccent, "Add New Playlist"),
          _buildIconTile(
            Icons.favorite_border,
            Colors.cyanAccent,
            "Your Liked Songs",
          ),
          const SizedBox(height: 20),
          const Text(
            "Recently played",
            style: TextStyle(
              color: Colors.cyanAccent,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 12),
          _buildMusicTile(
            imageUrl:
                'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcStrv_oPE6vni313HxiliDz1adIGEbzlBmZH7Aczogkb7bLKVGz5chCNwrPYoCHR4KXYr0UjqWiEQHbwYIU6FgaiQ',
            title: "Conan Gray",
          ),
          _buildMusicTile(
            imageUrl:
                'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcStrv_oPE6vni313HxiliDz1adIGEbzlBmZH7Aczogkb7bLKVGz5chCNwrPYoCHR4KXYr0UjqWiEQHbwYIU6FgaiQ',
            title: "3:00am vibes",
            subtitle: "18 songs",
          ),
          _buildMusicTile(
            imageUrl:
                'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcStrv_oPE6vni313HxiliDz1adIGEbzlBmZH7Aczogkb7bLKVGz5chCNwrPYoCHR4KXYr0UjqWiEQHbwYIU6FgaiQ',
            title: "Wiped Out!",
            subtitle: "The Neighbourhood",
          ),
          _buildMusicTile(
            imageUrl:
                'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcStrv_oPE6vni313HxiliDz1adIGEbzlBmZH7Aczogkb7bLKVGz5chCNwrPYoCHR4KXYr0UjqWiEQHbwYIU6FgaiQ',
            title: "Extra Dynamic",
            subtitle: "Updated Aug 10 • ur mom ashley",
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryChips() {
    final categories = [
      "Folders",
      "Playlists",
      "Artists",
      "Albums",
      "Podcasts",
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:
            categories
                .map(
                  (e) => Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Chip(
                      label: Text(
                        e,
                        style: const TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Colors.grey[800],
                    ),
                  ),
                )
                .toList(),
      ),
    );
  }

  Widget _buildIconTile(IconData icon, Color iconColor, String title) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey[900],
        child: Icon(icon, color: iconColor),
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildMusicTile({
    required String imageUrl,
    required String title,
    String? subtitle,
  }) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 4),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Image.network(
          imageUrl,
          height: 50,
          width: 50,
          fit: BoxFit.cover,
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle:
          subtitle != null
              ? Text(
                subtitle,
                style: TextStyle(color: Colors.grey[400], fontSize: 12),
              )
              : null,
    );
  }
}
