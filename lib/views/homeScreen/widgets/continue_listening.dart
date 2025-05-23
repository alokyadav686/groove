import 'package:flutter/material.dart';

class ContinueListening extends StatelessWidget {
  const ContinueListening({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {
        "title": "Coffee & Jazz",
        "image":
            "https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg",
      },
      {
        "title": "RELEASED",
        "image":
            "https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg",
      },
      {
        "title": "Anything Goes",
        "image":
            "https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg",
      },
      {
        "title": "Anime OSTs",
        "image":
            "https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg",
      },
      {
        "title": "Harry's House",
        "image":
            "https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg",
      },
      {
        "title": "Lo-Fi Beats",
        "image":
            "https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg",
      },
    ];

    return GridView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 4,
      ),
      itemBuilder: (_, i) {
        return Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(67, 99, 105, 0.2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(items[i]['image']!, fit: BoxFit.cover),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  items[i]['title']!,
                  style: const TextStyle(color: Colors.white),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
