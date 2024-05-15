import 'package:flutter/material.dart';

class DesignMeetingCard extends StatelessWidget {
  final String meetingTitle;
  final List<String> participantNames;
  final String startTime;
  final String endTime;
  final bool isInverted;

  const DesignMeetingCard({
    Key? key,
    required this.meetingTitle,
    required this.participantNames,
    required this.startTime,
    required this.endTime,
    this.isInverted = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: isInverted ? Colors.yellow.shade700 : Colors.purple.shade200,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment
                  .center, // Ensures everything is centered horizontally within the column
              children: [
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                          text:
                              '${startTime.substring(0, 2)}\n'), // "11" from "11:30"
                      TextSpan(
                          text:
                              '${startTime.substring(3)}\n'), // "30" from "11:30"
                      const TextSpan(
                          text: '|',
                          style: TextStyle(
                              fontSize:
                                  24)), // Increased font size for alignment
                      TextSpan(
                          text:
                              '\n${endTime.substring(0, 2)}'), // "12" from "12:20"
                      TextSpan(
                          text:
                              '\n${endTime.substring(3)}'), // "20" from "12:20"
                    ],
                  ),
                  textAlign:
                      TextAlign.center, // Center-aligns the RichText content
                ),
              ],
            ),
            const SizedBox(width: 12), // Space between time and title
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    meetingTitle,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 42,
                    ),
                  ),
                  Wrap(
                    spacing: 12,
                    children: participantNames
                        .map((name) => Text(
                              name,
                              style: TextStyle(
                                fontSize: 18,
                                color: name == "ME"
                                    ? Colors.black
                                    : Colors.black26,
                                fontWeight: FontWeight.bold,
                              ),
                            ))
                        .toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
