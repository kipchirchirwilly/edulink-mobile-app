import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'profile_screen.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),

      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 430,
            ),

            child: Column(
              children: [

                // TOP BAR
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 18,
                  ),

                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,

                    children: [

                      // BACK BUTTON
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius:
                              BorderRadius.circular(14),
                        ),

                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },

                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      const Text(
                        "Messages",

                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1E1F26),
                        ),
                      ),

                      // PROFILE ICON
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const ProfileScreen(),
                            ),
                          );
                        },

                        child: Container(
                          height: 48,
                          width: 48,

                          decoration:
                              const BoxDecoration(
                            color: Color(0xFF1E1F26),
                            shape: BoxShape.circle,
                          ),

                          child: const Icon(
                            Icons.person_outline,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // CHAT AREA
                Expanded(
                  child: ListView(
                    padding:
                        const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),

                    children: [

                      // USER MESSAGE
                      Align(
                        alignment:
                            Alignment.centerRight,

                        child: Container(
                          constraints:
                              const BoxConstraints(
                            maxWidth: 290,
                          ),

                          padding:
                              const EdgeInsets.symmetric(
                            horizontal: 18,
                            vertical: 14,
                          ),

                          decoration: BoxDecoration(
                            color:
                                const Color(0xFF25B7F3),

                            borderRadius:
                                BorderRadius.circular(
                              18,
                            ),
                          ),

                          child: const Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.end,

                            children: [

                              Text(
                                "I didn’t understand question 2.\nCan you explain it",

                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  height: 1.4,
                                ),
                              ),

                              SizedBox(height: 8),

                              Text(
                                "12:22 pm",

                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight:
                                      FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 18),

                      // TEACHER MESSAGE
                      Align(
                        alignment:
                            Alignment.centerLeft,

                        child: Container(
                          constraints:
                              const BoxConstraints(
                            maxWidth: 280,
                          ),

                          padding:
                              const EdgeInsets.symmetric(
                            horizontal: 18,
                            vertical: 14,
                          ),

                          decoration: BoxDecoration(
                            color: Colors.white,

                            borderRadius:
                                BorderRadius.circular(
                              18,
                            ),

                            boxShadow: [
                              BoxShadow(
                                color: Colors.black
                                    .withOpacity(
                                  0.04,
                                ),

                                blurRadius: 8,
                                offset:
                                    const Offset(0, 2),
                              ),
                            ],
                          ),

                          child: const Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,

                            children: [

                              Text(
                                "Sure! You need to isolate x by dividing both sides by 2.",

                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  height: 1.5,
                                ),
                              ),

                              SizedBox(height: 8),

                              Align(
                                alignment:
                                    Alignment
                                        .bottomRight,

                                child: Text(
                                  "12:23 pm",

                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight:
                                        FontWeight
                                            .w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 18),

                      // USER MESSAGE
                      Align(
                        alignment:
                            Alignment.centerRight,

                        child: Container(
                          constraints:
                              const BoxConstraints(
                            maxWidth: 260,
                          ),

                          padding:
                              const EdgeInsets.symmetric(
                            horizontal: 18,
                            vertical: 14,
                          ),

                          decoration: BoxDecoration(
                            color:
                                const Color(0xFF25B7F3),

                            borderRadius:
                                BorderRadius.circular(
                              18,
                            ),
                          ),

                          child: const Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.end,

                            children: [

                              Text(
                                "Ohhh I get it now, thank you!",

                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  height: 1.4,
                                ),
                              ),

                              SizedBox(height: 8),

                              Text(
                                "12:23 pm",

                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight:
                                      FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // MESSAGE INPUT
                Padding(
                  padding:
                      const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 14,
                  ),

                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(
                      horizontal: 14,
                    ),

                    decoration: BoxDecoration(
                      color: Colors.white,

                      borderRadius:
                          BorderRadius.circular(
                        20,
                      ),

                      border: Border.all(
                        color: Colors.grey.shade300,
                      ),
                    ),

                    child: Row(
                      children: [

                        const Expanded(
                          child: TextField(
                            decoration:
                                InputDecoration(
                              hintText:
                                  "Type a message...",
                              border:
                                  InputBorder.none,
                            ),
                          ),
                        ),

                        IconButton(
                          onPressed: () {},

                          icon: const Icon(
                            Icons.send,
                            color:
                                Color(0xFF6A5AE0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // BOTTOM NAVIGATION
                Container(
                  height: 82,

                  decoration: BoxDecoration(
                    color: Colors.white,

                    boxShadow: [
                      BoxShadow(
                        color:
                            Colors.black.withOpacity(
                          0.04,
                        ),

                        blurRadius: 10,
                      ),
                    ],
                  ),

                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceAround,

                    children: [

                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const HomeScreen(),
                            ),
                          );
                        },

                        child: _navItem(
                          Icons.home_rounded,
                          "Home",
                          false,
                        ),
                      ),

                      _navItem(
                        Icons.play_circle_outline,
                        "My Courses",
                        false,
                      ),

                      _navItem(
                        Icons.chat_bubble,
                        "Messages",
                        true,
                      ),

                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const ProfileScreen(),
                            ),
                          );
                        },

                        child: _navItem(
                          Icons.person_outline,
                          "My Profile",
                          false,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // NAV ITEM
  Widget _navItem(
    IconData icon,
    String label,
    bool active,
  ) {
    return Column(
      mainAxisAlignment:
          MainAxisAlignment.center,

      children: [

        Icon(
          icon,
          size: 28,

          color: active
              ? const Color(0xFF6A5AE0)
              : Colors.grey,
        ),

        const SizedBox(height: 4),

        Text(
          label,

          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,

            color: active
                ? const Color(0xFF6A5AE0)
                : Colors.grey,
          ),
        ),
      ],
    );
  }
}