import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String batch;
  final String seats;
  final String days;

  const CourseCard({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.batch,
    required this.seats,
    required this.days,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
        side: BorderSide(color: Colors.black, style: BorderStyle.solid),
      ),
      clipBehavior: Clip.antiAlias,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imageUrl,
            height: 100,
            width: double.infinity,
            fit: BoxFit.cover,
          ),

          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Text(
                  batch,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),

                Text(seats, style: TextStyle(fontSize: 12, color: Colors.blue)),
                Text(days, style: TextStyle(fontSize: 12, color: Colors.red)),
              ],
            ),
          ),

          SizedBox(height: 8),
          Divider(height: 2),
          SizedBox(height: 8),
          // Title
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              title,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey.shade300,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              onPressed: () {},
              child: Text("বিস্তারিত দেখুন →"),
            ),
          ),
        ],
      ),
    );
  }
}
