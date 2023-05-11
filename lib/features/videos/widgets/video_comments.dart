import 'package:flutter/material.dart';

class VideoComments extends StatefulWidget {
  const VideoComments({super.key});

  @override
  State<VideoComments> createState() => _VideoCommentsState();
}

class _VideoCommentsState extends State<VideoComments> {
  void _onClosePressed() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
      ),
      child: Scaffold(
        backgroundColor: Colors.grey.shade50,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade50,
          title: const Text("22796 comments"),
          centerTitle: true,
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: _onClosePressed,
              icon: const Icon(Icons.close),
            ),
          ],
        ),
        body: ListView.separated(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 16,
          ),
          separatorBuilder: (context, index) {
            return const SizedBox(height: 20);
          },
          itemCount: 10,
          itemBuilder: (context, index) => Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                radius: 18,
                child: Text('니꼬'),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '니꼬',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade500,
                      ),
                    ),
                    const SizedBox(width: 3),
                    const Text(
                        "That's not it live seen the same thing but also in a cave,"),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Column(
                children: [
                  Icon(
                    Icons.favorite_border,
                    color: Colors.grey.shade500,
                    size: 20,
                  ),
                  const SizedBox(height: 2),
                  Text(
                    '52.2K',
                    style: TextStyle(
                      color: Colors.grey.shade500,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: Row(
            children: [
              CircleAvatar(
                radius: 18,
                backgroundColor: Colors.grey.shade500,
                foregroundColor: Colors.white,
                child: const Text('니꼬'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
