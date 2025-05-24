import 'package:flutter/material.dart';
import 'package:groovo/constants/colors.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.primaryColor,
        title: Row(
          children: [
            Image.asset("assets/images/logo.png", height: 28),
            SizedBox(width: 8),
            Text(
              "Search",
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
          const SizedBox(height: 16),
          _buildSearchBar(),
          const SizedBox(height: 24),
          Text(
            "Your Top Genres",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          _buildGenreGrid(topGenres, crossAxisCount: 2),
          const SizedBox(height: 24),
          Text(
            "Browse All",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          _buildGenreGrid(browseAll, crossAxisCount: 2),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return TextField(
      decoration: InputDecoration(
        hintText: "Songs, Artists, Podcasts & More",
        hintStyle: const TextStyle(color: Colors.white70),
        prefixIcon: const Icon(Icons.search, color: Colors.white),
        filled: true,
        fillColor: Colors.grey[850],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
      ),
    );
  }

  Widget _buildGenreGrid(List<GenreItem> items, {int crossAxisCount = 2}) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: 2,
      ),
      itemBuilder: (_, index) {
        final item = items[index];
        return Container(
          decoration: BoxDecoration(
            color: item.color,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(12),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  item.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Transform.rotate(
                  angle: 0.5,
                  child: Image.network(
                    item.imageUrl,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class GenreItem {
  final String title;
  final String imageUrl;
  final Color color;

  GenreItem({required this.title, required this.imageUrl, required this.color});
}

final List<GenreItem> topGenres = [
  GenreItem(
    title: "Kpop",
    imageUrl:
        "https://m.media-amazon.com/images/I/31frqdXGxzL._AC_UF1000,1000_QL80_.jpg",
    color: Colors.green,
  ),
  GenreItem(
    title: "Indie",
    imageUrl:
        "https://m.media-amazon.com/images/I/31frqdXGxzL._AC_UF1000,1000_QL80_.jpg",
    color: Colors.pinkAccent,
  ),
  GenreItem(
    title: "R&B",
    imageUrl:
        "https://m.media-amazon.com/images/I/31frqdXGxzL._AC_UF1000,1000_QL80_.jpg",
    color: Colors.indigo,
  ),
  GenreItem(
    title: "Pop",
    imageUrl:
        "https://m.media-amazon.com/images/I/31frqdXGxzL._AC_UF1000,1000_QL80_.jpg",
    color: Colors.deepOrange,
  ),
];

final List<GenreItem> browseAll = [
  GenreItem(
    title: "Made for You",
    imageUrl:
        "https://m.media-amazon.com/images/I/31frqdXGxzL._AC_UF1000,1000_QL80_.jpg",
    color: Colors.cyan,
  ),
  GenreItem(
    title: "RELEASED",
    imageUrl:
        "https://m.media-amazon.com/images/I/31frqdXGxzL._AC_UF1000,1000_QL80_.jpg",
    color: Colors.purpleAccent,
  ),
  GenreItem(
    title: "Music Charts",
    imageUrl:
        "https://m.media-amazon.com/images/I/31frqdXGxzL._AC_UF1000,1000_QL80_.jpg",
    color: Colors.blue,
  ),
  GenreItem(
    title: "Podcasts",
    imageUrl:
        "https://m.media-amazon.com/images/I/31frqdXGxzL._AC_UF1000,1000_QL80_.jpg",
    color: Colors.redAccent,
  ),
  GenreItem(
    title: "Bollywood",
    imageUrl:
        "https://m.media-amazon.com/images/I/31frqdXGxzL._AC_UF1000,1000_QL80_.jpg",
    color: Colors.amber,
  ),
  GenreItem(
    title: "Pop Fusion",
    imageUrl:
        "https://m.media-amazon.com/images/I/31frqdXGxzL._AC_UF1000,1000_QL80_.jpg",
    color: Colors.teal,
  ),
];
