import 'package:flutter/material.dart';

import 'messages_screen.dart';
import 'profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() =>
      _HomeScreenState();
}

class _HomeScreenState
    extends State<HomeScreen> {

  String selectedCategory = "All";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:
          const Color(0xFFF4F5F7),

      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: 430,

            child: Column(
              children: [

                // MAIN CONTENT
                Expanded(
                  child:
                      SingleChildScrollView(
                    padding:
                        const EdgeInsets
                            .all(
                      20,
                    ),

                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment
                              .start,

                      children: [

                        // TOP BAR
                        Row(
                          mainAxisAlignment:
                              MainAxisAlignment
                                  .spaceBetween,

                          children: [

                            GestureDetector(
                              onTap: () {
                                Navigator.pop(
                                    context);
                              },

                              child:
                                  Container(
                                padding:
                                    const EdgeInsets
                                        .all(
                                  12,
                                ),

                                decoration:
                                    BoxDecoration(
                                  color:
                                      const Color(
                                    0xFF6C63FF,
                                  ),

                                  borderRadius:
                                      BorderRadius.circular(
                                    16,
                                  ),
                                ),

                                child:
                                    const Icon(
                                  Icons
                                      .arrow_back,
                                  color:
                                      Colors.white,
                                ),
                              ),
                            ),

                            GestureDetector(
                              onTap: () {

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (context) =>
                                            const ProfileScreen(),
                                  ),
                                );
                              },

                              child:
                                  Container(
                                height:
                                    48,
                                width:
                                    48,

                                decoration:
                                    const BoxDecoration(
                                  color:
                                      Color(
                                    0xFF1E1F26,
                                  ),

                                  shape:
                                      BoxShape.circle,
                                ),

                                child:
                                    const Icon(
                                  Icons
                                      .person_outline,
                                  color:
                                      Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(
                            height:
                                35),

                        // GREETING
                        const Text(
                          "Hi, Amina",

                          style:
                              TextStyle(
                            fontSize:
                                28,

                            fontWeight:
                                FontWeight.bold,

                            color:
                                Color(
                              0xFF1E1F26,
                            ),
                          ),
                        ),

                        const SizedBox(
                            height:
                                6),

                        const Text(
                          "What do you want to learn today?",

                          style:
                              TextStyle(
                            fontSize:
                                16,

                            color:
                                Colors.black54,
                          ),
                        ),

                        const SizedBox(
                            height:
                                26),

                        // SEARCH BAR
                        TextField(
                          decoration:
                              InputDecoration(
                            hintText:
                                "Search......",

                            hintStyle:
                                const TextStyle(
                              color:
                                  Colors.grey,
                            ),

                            prefixIcon:
                                const Icon(
                              Icons.search,

                              color:
                                  Color(
                                0xFF5B8DEF,
                              ),
                            ),

                            filled:
                                true,

                            fillColor:
                                Colors.white,

                            contentPadding:
                                const EdgeInsets.symmetric(
                              vertical:
                                  18,
                            ),

                            enabledBorder:
                                OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(
                                20,
                              ),

                              borderSide:
                                  const BorderSide(
                                color:
                                    Colors.black26,
                              ),
                            ),

                            focusedBorder:
                                OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(
                                20,
                              ),

                              borderSide:
                                  const BorderSide(
                                color:
                                    Color(
                                  0xFF5B8DEF,
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(
                            height:
                                22),

                        // BANNER
                        buildBanner(),

                        const SizedBox(
                            height:
                                28),

                        // TITLE
                        Row(
                          mainAxisAlignment:
                              MainAxisAlignment
                                  .spaceBetween,

                          children: [

                            const Text(
                              "Course",

                              style:
                                  TextStyle(
                                fontSize:
                                    34,

                                fontWeight:
                                    FontWeight.bold,
                              ),
                            ),

                            TextButton(
                              onPressed:
                                  () {

                                setState(
                                  () {

                                    selectedCategory =
                                        "All";
                                  },
                                );
                              },

                              child:
                                  const Text(
                                "View All",

                                style:
                                    TextStyle(
                                  color:
                                      Color(
                                    0xFFB08ACD,
                                  ),

                                  fontWeight:
                                      FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(
                            height:
                                10),

                        // CATEGORY BUTTONS
                        Row(
                          children: [

                            buildCategory(
                                "All"),

                            buildCategory(
                                "Maths"),

                            buildCategory(
                                "English"),

                            buildCategory(
                                "Science"),
                          ],
                        ),

                        const SizedBox(
                            height:
                                20),

                        // COURSE CONTENT
                        buildCourseContent(),
                      ],
                    ),
                  ),
                ),

                // MODERN NAVIGATION
                Container(
                  height:
                      90,

                  width:
                      double.infinity,

                  decoration:
                      BoxDecoration(
                    color:
                        Colors.white,

                    boxShadow: [
                      BoxShadow(
                        color:
                            Colors.black.withOpacity(
                          0.05,
                        ),

                        blurRadius:
                            10,

                        offset:
                            const Offset(
                          0,
                          -2,
                        ),
                      ),
                    ],
                  ),

                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment
                            .spaceAround,

                    children: [

                      _navItem(
                        Icons
                            .home_rounded,

                        "Home",

                        true,

                        () {},
                      ),

                      _navItem(
                        Icons
                            .play_circle_outline_rounded,

                        "My Courses",

                        false,

                        () {

                          setState(
                            () {

                              selectedCategory =
                                  "Maths";
                            },
                          );
                        },
                      ),

                      _navItem(
                        Icons
                            .chat_bubble_rounded,

                        "Messages",

                        false,

                        () {

                          Navigator.push(
                            context,

                            MaterialPageRoute(
                              builder:
                                  (context) =>
                                      const MessagesScreen(),
                            ),
                          );
                        },
                      ),

                      _navItem(
                        Icons
                            .person_outline_rounded,

                        "My Profile",

                        false,

                        () {

                          Navigator.push(
                            context,

                            MaterialPageRoute(
                              builder:
                                  (context) =>
                                      const ProfileScreen(),
                            ),
                          );
                        },
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

  // BANNER
  Widget buildBanner() {

    if (selectedCategory ==
        "Maths") {

      return Container(
        width:
            double.infinity,

        padding:
            const EdgeInsets
                .all(
          20,
        ),

        decoration:
            BoxDecoration(
          color:
              const Color(
            0xFF5B8DEF,
          ),

          borderRadius:
              BorderRadius.circular(
            20,
          ),
        ),

        child: Row(
          mainAxisAlignment:
              MainAxisAlignment
                  .spaceBetween,

          children: [

            const Expanded(
              child:
                  Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,

                children: [

                  Text(
                    "Algebra",

                    style:
                        TextStyle(
                      color:
                          Colors.white,

                      fontSize:
                          30,

                      fontWeight:
                          FontWeight.bold,
                    ),
                  ),

                  SizedBox(
                      height:
                          8),

                  Text(
                    "User Experience Class",

                    style:
                        TextStyle(
                      color:
                          Colors.white,

                      fontSize:
                          18,
                    ),
                  ),

                  SizedBox(
                      height:
                          16),

                  SizedBox(
                    width:
                        110,

                    child:
                        DecoratedBox(
                      decoration:
                          BoxDecoration(
                        color:
                            Color(
                          0xFFD89BFF,
                        ),

                        borderRadius:
                            BorderRadius.all(
                          Radius.circular(
                            10,
                          ),
                        ),
                      ),

                      child:
                          Padding(
                        padding:
                            EdgeInsets.symmetric(
                          vertical:
                              10,
                        ),

                        child:
                            Center(
                          child:
                              Text(
                            "Take Quiz",

                            style:
                                TextStyle(
                              color:
                                  Colors.white,

                              fontWeight:
                                  FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Image.network(
              "https://cdn-icons-png.flaticon.com/512/3135/3135789.png",

              height:
                  110,
            ),
          ],
        ),
      );
    }

    return buildCustomBanner(
      title:
          "Current Lessons",

      subtitle:
          "Explore interactive learning today.",

      buttonText:
          "Get Started",
    );
  }

  Widget buildCustomBanner({
    required String title,
    required String subtitle,
    required String buttonText,
  }) {

    return Container(
      width:
          double.infinity,

      padding:
          const EdgeInsets
              .all(
        24,
      ),

      decoration:
          BoxDecoration(
        gradient:
            const LinearGradient(
          colors: [
            Color(
              0xFF6C63FF,
            ),

            Color(
              0xFF5B8DEF,
            ),
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
      ),

      child: Row(
        children: [

          Expanded(
            child:
                Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,

              children: [

                Text(
                  title,

                  style:
                      const TextStyle(
                    color:
                        Colors.white,

                    fontSize:
                        24,

                    fontWeight:
                        FontWeight.bold,
                  ),
                ),

                const SizedBox(
                    height:
                        10),

                Text(
                  subtitle,

                  style:
                      const TextStyle(
                    color:
                        Colors.white70,

                    fontSize:
                        15,
                  ),
                ),

                const SizedBox(
                    height:
                        18),

                Container(
                  padding:
                      const EdgeInsets.symmetric(
                    horizontal:
                        18,

                    vertical:
                        10,
                  ),

                  decoration:
                      BoxDecoration(
                    color:
                        Colors.white.withOpacity(
                      0.18,
                    ),

                    borderRadius:
                        BorderRadius.circular(
                      14,
                    ),
                  ),

                  child:
                      Text(
                    buttonText,

                    style:
                        const TextStyle(
                      color:
                          Colors.white,

                      fontWeight:
                          FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(
              width:
                  18),

          Container(
            height:
                92,

            width:
                92,

            decoration:
                BoxDecoration(
              color:
                  Colors.white,

              borderRadius:
                  BorderRadius.circular(
                24,
              ),
            ),

            child:
                const Icon(
              Icons
                  .school_rounded,

              size:
                  56,

              color:
                  Color(
                0xFF6C63FF,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // COURSE CONTENT
  Widget buildCourseContent() {

    if (selectedCategory ==
        "Maths") {

      return Column(
        children: [

          LessonCard(
            title:
                "Lesson 1",

            rating:
                "1.0",

            duration:
                "1h 35m",
          ),

          const SizedBox(
              height:
                  16),

          LessonCard(
            title:
                "Lesson 2",

            rating:
                "3.0",

            duration:
                "3h 40m",
          ),
        ],
      );
    }

    return Column(
      children: [

        const CourseCard(
          title:
              "Maths",

          rating:
              "5.0",

          duration:
              "5h 15m",
        ),

        const SizedBox(
            height:
                16),

        const CourseCard(
          title:
              "English",

          rating:
              "5.0",

          duration:
              "8h 15m",
        ),

        const SizedBox(
            height:
                16),

        const CourseCard(
          title:
              "Science",

          rating:
              "5.0",

          duration:
              "9h 15m",
        ),
      ],
    );
  }

  // CATEGORY
  Widget buildCategory(
      String text) {

    bool active =
        selectedCategory ==
            text;

    return GestureDetector(
      onTap:
          () {

        setState(
          () {

            selectedCategory =
                text;
          },
        );
      },

      child:
          Padding(
        padding:
            const EdgeInsets.only(
          right:
              10,
        ),

        child:
            AnimatedContainer(
          duration:
              const Duration(
            milliseconds:
                250,
          ),

          padding:
              const EdgeInsets.symmetric(
            horizontal:
                20,

            vertical:
                11,
          ),

          decoration:
              BoxDecoration(
            color: active
                ? const Color(
                    0xFF5B1D87,
                  )
                : Colors.white,

            borderRadius:
                BorderRadius.circular(
              20,
            ),
          ),

          child:
              Text(
            text,

            style:
                TextStyle(
              color: active
                  ? Colors.white
                  : Colors.grey,

              fontWeight:
                  FontWeight.w600,
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
    VoidCallback onTap,
  ) {

    return GestureDetector(
      onTap:
          onTap,

      child:
          AnimatedContainer(
        duration:
            const Duration(
          milliseconds:
              250,
        ),

        padding:
            const EdgeInsets.symmetric(
          horizontal:
              14,

          vertical:
              8,
        ),

        decoration:
            BoxDecoration(
          color: active
              ? const Color(
                  0xFFEEE8FF,
                )
              : Colors.transparent,

          borderRadius:
              BorderRadius.circular(
            18,
          ),
        ),

        child:
            Column(
          mainAxisSize:
              MainAxisSize.min,

          children: [

            Icon(
              icon,

              size:
                  26,

              color: active
                  ? const Color(
                      0xFF6C63FF,
                    )
                  : Colors.grey,
            ),

            const SizedBox(
                height:
                    4),

            Text(
              label,

              style:
                  TextStyle(
                fontSize:
                    12,

                fontWeight:
                    FontWeight.w600,

                color: active
                    ? const Color(
                        0xFF6C63FF,
                      )
                    : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// COURSE CARD
class CourseCard
    extends StatelessWidget {

  final String title;
  final String rating;
  final String duration;

  const CourseCard({
    super.key,
    required this.title,
    required this.rating,
    required this.duration,
  });

  @override
  Widget build(
      BuildContext context) {

    return Container(
      width:
          double.infinity,

      padding:
          const EdgeInsets.all(
        22,
      ),

      decoration:
          BoxDecoration(
        color:
            Colors.white,

        borderRadius:
            BorderRadius.circular(
          26,
        ),

        boxShadow: [
          BoxShadow(
            color:
                Colors.black.withOpacity(
              0.04,
            ),

            blurRadius:
                12,

            offset:
                const Offset(
              0,
              4,
            ),
          ),
        ],
      ),

      child:
          Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,

        children: [

          Text(
            title,

            style:
                const TextStyle(
              fontSize:
                  22,

              fontWeight:
                  FontWeight.bold,
            ),
          ),

          const SizedBox(
              height:
                  14),

          Row(
            children: [

              const Icon(
                Icons.star_rounded,

                color:
                    Colors.amber,

                size:
                    20,
              ),

              const SizedBox(
                  width:
                      5),

              Text(
                  rating),

              const SizedBox(
                  width:
                      18),

              const Icon(
                Icons
                    .access_time_rounded,

                size:
                    18,
              ),

              const SizedBox(
                  width:
                      5),

              Text(
                  duration),
            ],
          ),
        ],
      ),
    );
  }
}

// LESSON CARD
class LessonCard
    extends StatelessWidget {

  final String title;
  final String rating;
  final String duration;

  const LessonCard({
    super.key,
    required this.title,
    required this.rating,
    required this.duration,
  });

  @override
  Widget build(
      BuildContext context) {

    return GestureDetector(
      onTap:
          () {

        Navigator.push(
          context,

          MaterialPageRoute(
            builder:
                (context) =>
                    const AlgebraTestScreen(),
          ),
        );
      },

      child:
          Container(
        width:
            double.infinity,

        padding:
            const EdgeInsets.all(
          20,
        ),

        decoration:
            BoxDecoration(
          color:
              Colors.white,

          borderRadius:
              BorderRadius.circular(
            22,
          ),

          boxShadow: [
            BoxShadow(
              color:
                  Colors.black.withOpacity(
                0.04,
              ),

              blurRadius:
                  10,

              offset:
                  const Offset(
                0,
                4,
              ),
            ),
          ],
        ),

        child:
            Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween,

          children: [

            Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,

              children: [

                Text(
                  title,

                  style:
                      const TextStyle(
                    fontSize:
                        22,

                    fontWeight:
                        FontWeight.bold,
                  ),
                ),

                const SizedBox(
                    height:
                        12),

                Row(
                  children: [

                    const Icon(
                      Icons.star_rounded,

                      color:
                          Colors.amber,

                      size:
                          20,
                    ),

                    const SizedBox(
                        width:
                            5),

                    Text(
                        rating),

                    const SizedBox(
                        width:
                            18),

                    const Icon(
                      Icons
                          .access_time_rounded,

                      size:
                          18,
                    ),

                    const SizedBox(
                        width:
                            5),

                    Text(
                        duration),
                  ],
                ),
              ],
            ),

            Container(
              height:
                  50,

              width:
                  50,

              decoration:
                  BoxDecoration(
                border:
                    Border.all(
                  color:
                      Colors.black,

                  width:
                      2,
                ),

                shape:
                    BoxShape.circle,
              ),

              child:
                  const Icon(
                Icons
                    .play_arrow_rounded,

                size:
                    30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ALGEBRA TEST SCREEN
class AlgebraTestScreen
    extends StatelessWidget {

  const AlgebraTestScreen({
    super.key,
  });

  @override
  Widget build(
      BuildContext context) {

    return Scaffold(
      backgroundColor:
          const Color(
        0xFFF4F5F7,
      ),

      body:
          SafeArea(
        child:
            Center(
          child:
              SizedBox(
            width:
                430,

            child:
                Column(
              children: [

                Expanded(
                  child:
                      SingleChildScrollView(
                    padding:
                        const EdgeInsets.all(
                      20,
                    ),

                    child:
                        Column(
                      children: [

                        // TOP BAR
                        Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,

                          children: [

                            GestureDetector(
                              onTap:
                                  () {

                                Navigator.pop(
                                    context);
                              },

                              child:
                                  Container(
                                padding:
                                    const EdgeInsets.all(
                                  12,
                                ),

                                decoration:
                                    BoxDecoration(
                                  color:
                                      Colors.black,

                                  borderRadius:
                                      BorderRadius.circular(
                                    14,
                                  ),
                                ),

                                child:
                                    const Icon(
                                  Icons.arrow_back,

                                  color:
                                      Colors.white,
                                ),
                              ),
                            ),

                            Container(
                              height:
                                  48,

                              width:
                                  48,

                              decoration:
                                  const BoxDecoration(
                                color:
                                    Color(
                                  0xFF1E1F26,
                                ),

                                shape:
                                    BoxShape.circle,
                              ),

                              child:
                                  const Icon(
                                Icons.person_outline,

                                color:
                                    Colors.white,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(
                            height:
                                25),

                        // SEARCH BAR
                        TextField(
                          decoration:
                              InputDecoration(
                            hintText:
                                "Search......",

                            prefixIcon:
                                const Icon(
                              Icons.search,

                              color:
                                  Color(
                                0xFF5B8DEF,
                              ),
                            ),

                            filled:
                                true,

                            fillColor:
                                Colors.white,

                            enabledBorder:
                                OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(
                                20,
                              ),

                              borderSide:
                                  const BorderSide(
                                color:
                                    Colors.black26,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(
                            height:
                                22),

                        // VIDEO SECTION
                        Container(
                          width:
                              double.infinity,

                          padding:
                              const EdgeInsets.all(
                            20,
                          ),

                          decoration:
                              BoxDecoration(
                            color:
                                const Color(
                              0xFF5B8DEF,
                            ),

                            borderRadius:
                                BorderRadius.circular(
                              20,
                            ),
                          ),

                          child:
                              Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,

                            children: [

                              const Expanded(
                                child:
                                    Text(
                                  "Watch a video to improve",

                                  style:
                                      TextStyle(
                                    color:
                                        Colors.white,

                                    fontSize:
                                        22,
                                  ),
                                ),
                              ),

                              Container(
                                height:
                                    90,

                                width:
                                    90,

                                decoration:
                                    BoxDecoration(
                                  border:
                                      Border.all(
                                    color:
                                        Colors.black,

                                    width:
                                        2,
                                  ),

                                  shape:
                                      BoxShape.circle,
                                ),

                                child:
                                    const Icon(
                                  Icons.play_arrow_rounded,

                                  size:
                                      40,
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(
                            height:
                                26),

                        buildQuestionCard(
                          "Q1. What is the value of x in the equation 2x = 10?",

                          [
                            "A. 2",
                            "B. 5 ✅",
                            "C. 8",
                            "D. 10",
                          ],
                        ),

                        const SizedBox(
                            height:
                                18),

                        buildQuestionCard(
                          "Q2. Solve: x + 4 = 9",

                          [
                            "A. 3",
                            "B. 5 ✅",
                            "C. 6",
                            "D. 9",
                          ],
                        ),

                        const SizedBox(
                            height:
                                40),

                        SizedBox(
                          width:
                              double.infinity,

                          child:
                              ElevatedButton(
                            onPressed:
                                () {

                              Navigator.push(
                                context,

                                MaterialPageRoute(
                                  builder:
                                      (context) =>
                                          const MathsResultScreen(),
                                ),
                              );
                            },

                            style:
                                ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color(
                                0xFF25B7F3,
                              ),

                              padding:
                                  const EdgeInsets.symmetric(
                                vertical:
                                    18,
                              ),

                              shape:
                                  RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(
                                  14,
                                ),
                              ),
                            ),

                            child:
                                const Text(
                              "Submit Answer",

                              style:
                                  TextStyle(
                                color:
                                    Colors.black,

                                fontSize:
                                    16,

                                fontWeight:
                                    FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // BOTTOM NAV
                Container(
                  height:
                      90,

                  decoration:
                      BoxDecoration(
                    color:
                        Colors.white,

                    boxShadow: [
                      BoxShadow(
                        color:
                            Colors.black.withOpacity(
                          0.05,
                        ),

                        blurRadius:
                            10,
                      ),
                    ],
                  ),

                  child:
                      Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceAround,

                    children: [

                      navItem(
                        Icons.home_rounded,

                        "Home",

                        true,
                      ),

                      navItem(
                        Icons.play_circle_outline_rounded,

                        "My Courses",

                        false,
                      ),

                      navItem(
                        Icons.chat_bubble_outline_rounded,

                        "Messages",

                        false,
                      ),

                      navItem(
                        Icons.person_outline_rounded,

                        "My Profile",

                        false,
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

  Widget buildQuestionCard(
    String question,
    List<String> options,
  ) {

    return Container(
      width:
          double.infinity,

      padding:
          const EdgeInsets.all(
        20,
      ),

      decoration:
          BoxDecoration(
        color:
            const Color(
          0xFFE9E9E9,
        ),

        borderRadius:
            BorderRadius.circular(
          16,
        ),
      ),

      child:
          Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,

        children: [

          Text(
            question,

            style:
                const TextStyle(
              fontSize:
                  16,

              fontWeight:
                  FontWeight.w600,
            ),
          ),

          const SizedBox(
              height:
                  14),

          ...options.map(
            (option) =>
                Padding(
              padding:
                  const EdgeInsets.only(
                bottom:
                    8,
              ),

              child:
                  Text(
                option,

                style:
                    const TextStyle(
                  fontSize:
                      15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget navItem(
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

          color: active
              ? const Color(
                  0xFF6C63FF,
                )
              : Colors.grey,
        ),

        const SizedBox(
            height:
                4),

        Text(
          label,

          style:
              TextStyle(
            fontSize:
                12,

            color: active
                ? const Color(
                    0xFF6C63FF,
                  )
                : Colors.grey,
          ),
        ),
      ],
    );
  }
}

// ================= RESULT SCREEN =================

class MathsResultScreen
    extends StatelessWidget {

  const MathsResultScreen({
    super.key,
  });

  @override
  Widget build(
      BuildContext context) {

    return Scaffold(
      backgroundColor:
          const Color(
        0xFFF4F5F7,
      ),

      body:
          SafeArea(
        child:
            Center(
          child:
              SizedBox(
            width:
                430,

            child:
                Column(
              children: [

                Expanded(
                  child:
                      SingleChildScrollView(
                    padding:
                        const EdgeInsets.all(
                      20,
                    ),

                    child:
                        Column(
                      children: [

                        // TOP BAR
                        Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,

                          children: [

                            GestureDetector(
                              onTap:
                                  () {

                                Navigator.pop(
                                    context);
                              },

                              child:
                                  Container(
                                padding:
                                    const EdgeInsets.all(
                                  12,
                                ),

                                decoration:
                                    BoxDecoration(
                                  color:
                                      Colors.black,

                                  borderRadius:
                                      BorderRadius.circular(
                                    14,
                                  ),
                                ),

                                child:
                                    const Icon(
                                  Icons.arrow_back,

                                  color:
                                      Colors.white,
                                ),
                              ),
                            ),

                            Container(
                              height:
                                  48,

                              width:
                                  48,

                              decoration:
                                  const BoxDecoration(
                                color:
                                    Color(
                                  0xFF1E1F26,
                                ),

                                shape:
                                    BoxShape.circle,
                              ),

                              child:
                                  const Icon(
                                Icons.person_outline,

                                color:
                                    Colors.white,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(
                            height:
                                120),

                        // RESULT CARD
                        Container(
                          width:
                              double.infinity,

                          padding:
                              const EdgeInsets.all(
                            20,
                          ),

                          decoration:
                              BoxDecoration(
                            color:
                                const Color(
                              0xFFEFEFEF,
                            ),

                            borderRadius:
                                BorderRadius.circular(
                              20,
                            ),
                          ),

                          child:
                              Row(
                            children: [

                              Expanded(
                                child:
                                    Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,

                                  children: [

                                    const Text(
                                      "Maths Result",

                                      style:
                                          TextStyle(
                                        fontSize:
                                            28,

                                        fontWeight:
                                            FontWeight.bold,
                                      ),
                                    ),

                                    const SizedBox(
                                        height:
                                            35),

                                    const Text(
                                      "Your score is 2/2",

                                      style:
                                          TextStyle(
                                        fontSize:
                                            22,
                                      ),
                                    ),

                                    const SizedBox(
                                        height:
                                            18),

                                    const Text(
                                      "100%",

                                      style:
                                          TextStyle(
                                        fontSize:
                                            52,

                                        fontWeight:
                                            FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              const SizedBox(
                                  width:
                                      10),

                              ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(
                                  100,
                                ),

                                child:
                                    Image.network(
                                  "https://cdn-icons-png.flaticon.com/512/4140/4140048.png",

                                  height:
                                      180,

                                  width:
                                      180,

                                  fit:
                                      BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(
                            height:
                                70),

                        // RETAKE BUTTON
                        SizedBox(
                          width:
                              double.infinity,

                          child:
                              ElevatedButton(
                            onPressed:
                                () {

                              Navigator.pop(
                                  context);
                            },

                            style:
                                ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color(
                                0xFF25B7F3,
                              ),

                              padding:
                                  const EdgeInsets.symmetric(
                                vertical:
                                    18,
                              ),

                              shape:
                                  RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(
                                  14,
                                ),
                              ),
                            ),

                            child:
                                Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.center,

                              children: [

                                Container(
                                  padding:
                                      const EdgeInsets.all(
                                    6,
                                  ),

                                  color:
                                      Colors.black,

                                  child:
                                      const Icon(
                                    Icons.arrow_back,

                                    color:
                                        Colors.white,
                                  ),
                                ),

                                const SizedBox(
                                    width:
                                        12),

                                const Text(
                                  "Retake",

                                  style:
                                      TextStyle(
                                    color:
                                        Colors.black,

                                    fontSize:
                                        18,

                                    fontWeight:
                                        FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // BOTTOM NAVIGATION
                Container(
                  height:
                      90,

                  decoration:
                      BoxDecoration(
                    color:
                        Colors.white,

                    boxShadow: [
                      BoxShadow(
                        color:
                            Colors.black.withOpacity(
                          0.05,
                        ),

                        blurRadius:
                            10,
                      ),
                    ],
                  ),

                  child:
                      Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceAround,

                    children: [

                      navItem(
                        Icons.home_rounded,

                        "Home",

                        true,
                      ),

                      navItem(
                        Icons.play_circle_outline_rounded,

                        "My Courses",

                        false,
                      ),

                      navItem(
                        Icons.chat_bubble_outline_rounded,

                        "Messages",

                        false,
                      ),

                      navItem(
                        Icons.person_outline_rounded,

                        "My Profile",

                        false,
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

  Widget navItem(
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

          color: active
              ? const Color(
                  0xFF6C63FF,
                )
              : Colors.grey,
        ),

        const SizedBox(
            height:
                4),

        Text(
          label,

          style:
              TextStyle(
            fontSize:
                12,

            color: active
                ? const Color(
                    0xFF6C63FF,
                  )
                : Colors.grey,
          ),
        ),
      ],
    );
  }
}