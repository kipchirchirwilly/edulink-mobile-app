import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'messages_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
                        "My Profile",

                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1E1F26),
                        ),
                      ),

                      const SizedBox(width: 48),
                    ],
                  ),
                ),

                Expanded(
                  child: SingleChildScrollView(
                    padding:
                        const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),

                    child: Column(
                      children: [

                        const SizedBox(height: 60),

                        // PROFILE CARD
                        Stack(
                          clipBehavior: Clip.none,

                          children: [

                            Container(
                              width: double.infinity,

                              padding:
                                  const EdgeInsets.only(
                                top: 85,
                                left: 22,
                                right: 22,
                                bottom: 28,
                              ),

                              decoration: BoxDecoration(
                                gradient:
                                    const LinearGradient(
                                  colors: [
                                    Color(0xFF6A5AE0),
                                    Color(0xFF5B8DEF),
                                  ],

                                  begin:
                                      Alignment.topLeft,

                                  end:
                                      Alignment.bottomRight,
                                ),

                                borderRadius:
                                    BorderRadius.circular(
                                  30,
                                ),

                                boxShadow: [
                                  BoxShadow(
                                    color:
                                        const Color(
                                      0xFF6A5AE0,
                                    ).withOpacity(0.18),

                                    blurRadius: 20,
                                    offset:
                                        const Offset(
                                      0,
                                      10,
                                    ),
                                  ),
                                ],
                              ),

                              child: Column(
                                children: [

                                  // NAME
                                  const Text(
                                    "Amina Hassan",

                                    style: TextStyle(
                                      fontSize: 28,
                                      fontWeight:
                                          FontWeight.bold,
                                      color:
                                          Colors.white,
                                    ),
                                  ),

                                  const SizedBox(
                                      height: 8),

                                  const Text(
                                    "Student • EduLink Learner",

                                    style: TextStyle(
                                      fontSize: 15,
                                      color:
                                          Colors.white70,
                                    ),
                                  ),

                                  const SizedBox(
                                      height: 28),

                                  // STATS
                                  Container(
                                    padding:
                                        const EdgeInsets
                                            .symmetric(
                                      vertical: 18,
                                    ),

                                    decoration:
                                        BoxDecoration(
                                      color: Colors
                                          .white
                                          .withOpacity(
                                        0.12,
                                      ),

                                      borderRadius:
                                          BorderRadius
                                              .circular(
                                        22,
                                      ),
                                    ),

                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment
                                              .spaceAround,

                                      children: [

                                        _statItem(
                                          "12",
                                          "Courses",
                                        ),

                                        _divider(),

                                        _statItem(
                                          "87%",
                                          "Progress",
                                        ),

                                        _divider(),

                                        _statItem(
                                          "4.9",
                                          "Rating",
                                        ),
                                      ],
                                    ),
                                  ),

                                  const SizedBox(
                                      height: 28),

                                  // PROFILE DETAILS
                                  _profileTile(
                                    Icons.email_outlined,
                                    "Email",
                                    "amina@gmail.com",
                                  ),

                                  const SizedBox(
                                      height: 14),

                                  _profileTile(
                                    Icons.school_outlined,
                                    "Course",
                                    "Mathematics & Science",
                                  ),

                                  const SizedBox(
                                      height: 14),

                                  _profileTile(
                                    Icons.person_outline,
                                    "Gender",
                                    "Female",
                                  ),

                                  const SizedBox(
                                      height: 14),

                                  _profileTile(
                                    Icons.location_on_outlined,
                                    "Location",
                                    "Sydney, Australia",
                                  ),

                                  const SizedBox(
                                      height: 28),

                                  // BUTTONS
                                  Row(
                                    children: [

                                      Expanded(
                                        child:
                                            ElevatedButton(
                                          onPressed:
                                              () {},

                                          style:
                                              ElevatedButton
                                                  .styleFrom(
                                            backgroundColor:
                                                Colors
                                                    .white,

                                            foregroundColor:
                                                const Color(
                                              0xFF6A5AE0,
                                            ),

                                            elevation:
                                                0,

                                            padding:
                                                const EdgeInsets
                                                    .symmetric(
                                              vertical:
                                                  16,
                                            ),

                                            shape:
                                                RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius
                                                      .circular(
                                                18,
                                              ),
                                            ),
                                          ),

                                          child:
                                              const Text(
                                            "Edit Profile",

                                            style:
                                                TextStyle(
                                              fontSize:
                                                  16,
                                              fontWeight:
                                                  FontWeight
                                                      .bold,
                                            ),
                                          ),
                                        ),
                                      ),

                                      const SizedBox(
                                          width: 14),

                                      Container(
                                        height: 56,
                                        width: 56,

                                        decoration:
                                            BoxDecoration(
                                          color: Colors
                                              .white
                                              .withOpacity(
                                            0.18,
                                          ),

                                          borderRadius:
                                              BorderRadius
                                                  .circular(
                                            18,
                                          ),
                                        ),

                                        child:
                                            const Icon(
                                          Icons.settings,
                                          color: Colors
                                              .white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            // PROFILE IMAGE
                            Positioned(
                              top: -55,
                              left: 0,
                              right: 0,

                              child: Center(
                                child: Container(
                                  decoration:
                                      BoxDecoration(
                                    shape:
                                        BoxShape.circle,

                                    border: Border.all(
                                      color:
                                          Colors.white,
                                      width: 5,
                                    ),

                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors
                                            .black
                                            .withOpacity(
                                          0.12,
                                        ),

                                        blurRadius: 15,
                                      ),
                                    ],
                                  ),

                                  child:
                                      const CircleAvatar(
                                    radius: 55,

                                    backgroundImage:
                                        NetworkImage(
                                      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=400',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 30),
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

                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const MessagesScreen(),
                            ),
                          );
                        },

                        child: _navItem(
                          Icons.chat_bubble_outline,
                          "Messages",
                          false,
                        ),
                      ),

                      _navItem(
                        Icons.person,
                        "My Profile",
                        true,
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

  // PROFILE TILE
  Widget _profileTile(
    IconData icon,
    String title,
    String value,
  ) {
    return Container(
      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.14),

        borderRadius:
            BorderRadius.circular(20),
      ),

      child: Row(
        children: [

          Container(
            height: 50,
            width: 50,

            decoration: BoxDecoration(
              color: Colors.white,

              borderRadius:
                  BorderRadius.circular(16),
            ),

            child: Icon(
              icon,
              color: const Color(0xFF6A5AE0),
            ),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,

              children: [

                Text(
                  title,

                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 13,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  value,

                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight:
                        FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // STATS
  Widget _statItem(
    String value,
    String label,
  ) {
    return Column(
      children: [

        Text(
          value,

          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),

        const SizedBox(height: 4),

        Text(
          label,

          style: const TextStyle(
            fontSize: 13,
            color: Colors.white70,
          ),
        ),
      ],
    );
  }

  // DIVIDER
  Widget _divider() {
    return Container(
      height: 35,
      width: 1,
      color: Colors.white24,
    );
  }

  // BOTTOM NAV ITEM
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