import 'package:flutter/material.dart';

class TopMixes extends StatelessWidget {
  const TopMixes({super.key});
   final List<Map<String, String>> mixes = const [
    {
      "title": "Pop Mix",
      "imageUrl":
          "https://yt3.googleusercontent.com/Z8w-S67SqRr1QM3uZVQLzNQc9cIx-l4pokLv17Hd5cnoDIIl16WsNetzycuFeyhKO911kBwbfg=s900-c-k-c0x00ffffff-no-rj",
    },
    {
      "title": "Chill Mix",
      "imageUrl":
          "https://yt3.googleusercontent.com/Z8w-S67SqRr1QM3uZVQLzNQc9cIx-l4pokLv17Hd5cnoDIIl16WsNetzycuFeyhKO911kBwbfg=s900-c-k-c0x00ffffff-no-rj",
    },
    {
      "title": "Jazz Mix",
      "imageUrl":
          "https://yt3.googleusercontent.com/Z8w-S67SqRr1QM3uZVQLzNQc9cIx-l4pokLv17Hd5cnoDIIl16WsNetzycuFeyhKO911kBwbfg=s900-c-k-c0x00ffffff-no-rj",
    },
    {
      "title": "Workout Mix",
      "imageUrl":
          "https://yt3.googleusercontent.com/Z8w-S67SqRr1QM3uZVQLzNQc9cIx-l4pokLv17Hd5cnoDIIl16WsNetzycuFeyhKO911kBwbfg=s900-c-k-c0x00ffffff-no-rj",
    },
    {
      "title": "Relaxing Mix",
      "imageUrl":
          "https://yt3.googleusercontent.com/Z8w-S67SqRr1QM3uZVQLzNQc9cIx-l4pokLv17Hd5cnoDIIl16WsNetzycuFeyhKO911kBwbfg=s900-c-k-c0x00ffffff-no-rj",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.separated(
        itemCount: mixes.length,
        separatorBuilder: (context, index) {
          return const SizedBox(width: 10);
        },
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(16),
        itemBuilder: (context, index) {
          final mix = mixes[index];
          return _mixCard(mix["title"]!, mix["imageUrl"]!);
         
        },
      ),
    );
  }

  Widget _mixCard(String title, String imageUrl) {
    return Container(
      width: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      alignment: Alignment.topLeft,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(
            bottom: Radius.circular(12),
          ),
        ),
        width: double.infinity,
        padding: const EdgeInsets.all(8),
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 18,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
