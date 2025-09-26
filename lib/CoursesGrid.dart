import 'package:assignment02/CourseCard.dart';
import 'package:flutter/material.dart';

class CoursesGrid extends StatelessWidget {
  const CoursesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final courses = [
      {
        "title": "Full Stack Web Development with JavaScript (MERN)",
        "image":
            "https://cdn.ostad.app/course/cover/2024-12-17T11-35-19.890Z-Course%20Thumbnail%2012.jpg",
        "batch": "ব্যাচ ৬",
        "seats": "৬টি বাকি",
        "days": "৬ দিন বাকি",
      },
      {
        "title": "Full Stack Web Development with Python, Django & React",
        "image":
            "https://cdn.ostad.app/course/cover/2024-12-19T15-48-52.487Z-Full-Stack-Web-Development-with-Python,-Django-&-React.jpg",
        "batch": "ব্যাচ ৫",
        "seats": "৬টি বাকি",
        "days": "৬ দিন বাকি",
      },
      {
        "title": "Full Stack Web Development with ASP.Net Core",
        "image":
            "https://cdn.ostad.app/course/cover/2024-12-18T15-29-34.261Z-Untitled-1%20(23).jpg",
        "batch": "ব্যাচ ৪",
        "seats": "৬টি বাকি",
        "days": "৬ দিন বাকি",
      },
      {
        "title": "SQA: Manual & Automated Testing",
        "image":
            "https://cdn.ostad.app/course/cover/2024-12-18T15-24-44.114Z-Untitled-1%20(21).jpg",
        "batch": "ব্যাচ ৩",
        "seats": "৬টি বাকি",
        "days": "৮ দিন বাকি",
      },
    ];

    return Padding(
      padding: const EdgeInsets.all(12),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 0.64,
        ),
        itemCount: courses.length,
        itemBuilder: (context, index) {
          final course = courses[index];
          return CourseCard(
            title: course["title"]!,
            imageUrl: course["image"]!,
            batch: course["batch"]!,
            seats: course["seats"]!,
            days: course["days"]!,
          );
        },
      ),
    );
  }
}
