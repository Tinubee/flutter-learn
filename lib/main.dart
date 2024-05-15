import 'package:flutter/material.dart';
import 'package:toonflix/widgets/curency_card.dart'; // Assuming you have renamed the CurrencyCard to DesignMeetingCard and it now lives here.

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: CircleAvatar(
                        radius:
                            48, // slightly smaller to create a border effect
                        backgroundImage: NetworkImage(
                            'https://www.woolha.com/media/2020/03/eevee.png'),
                      ),
                    ),
                    Text(
                      '+',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 68,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  'Monday 16',
                  style: TextStyle(
                      fontSize: 22, color: Colors.white.withOpacity(0.8)),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const Text(
                      'TODAY',
                      style: TextStyle(
                        fontSize: 42,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      '●',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.pink,
                      ),
                    ),
                    Text(
                      '17 18 19 20',
                      style: TextStyle(
                        fontSize: 42,
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const DesignMeetingCard(
                  meetingTitle: 'DESIGN MEETING',
                  participantNames: ['ALEX', 'ELENA', 'NANA'],
                  startTime: '11:30',
                  endTime: '12:20',
                  isInverted: true,
                ),
                const SizedBox(height: 20),
                const DesignMeetingCard(
                  meetingTitle: 'DAILY PROJECT',
                  participantNames: ['ME', 'RICHARD', 'CIRY', '+4'],
                  startTime: '12:35',
                  endTime: '14:10',
                  isInverted: false,
                ),
                const SizedBox(height: 20),
                const DesignMeetingCard(
                  meetingTitle: 'DESIGN MEETING',
                  participantNames: ['DEN', 'NANA', 'MARK'],
                  startTime: '15:00',
                  endTime: '16:30',
                  isInverted: true,
                ),
                const SizedBox(height: 20),
                // Other CurrencyCard widgets go here
              ],
            ),
          ),
        ),
      ),
    );
  }
}
