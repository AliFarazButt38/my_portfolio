import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black,
              Color(0xFF395B64),
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: kPrimaryColor,
            title: const Row(
              children: [
                Expanded(
                  child: Text('BABAR ALI'),
                ),
                Expanded(
                  child: TabBar(
                    indicatorColor: kContrastColor,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorPadding: EdgeInsets.all(-10.0),
                    indicatorWeight: 1.0,
                    tabs: [
                      Row(
                        children: [
                          Expanded(
                            child: Icon(
                              Icons.home,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Home',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Icon(
                              Icons.work_history,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Projects',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Icon(
                              Icons.info,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'About',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Icon(
                              Icons.call,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Contact',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          body: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
            child: TabBarView(
              children: [
                //'Home' Tab.
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AnimatedTextKit(
                                  animatedTexts: [
                                    WavyAnimatedText(
                                      'Hi,',
                                      textStyle: const TextStyle(
                                        color: kContrastColor,
                                        fontSize: 30.0,
                                        fontFamily: 'Ubuntu Mono',
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                AnimatedTextKit(
                                  totalRepeatCount: 1,
                                  animatedTexts: [
                                    TypewriterAnimatedText(
                                      'I craft Apps for mobile and web...',
                                      textStyle: const TextStyle(
                                        color: kContrastColor,
                                        fontSize: 50.0,
                                        fontFamily: 'Ubuntu Mono',
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                const Text(
                                  'I have 2+ years of Experience in Hybrid Apps Development. '
                                  'Before switching to cross-platform, I\'ve coded in Native as well.',
                                  style: TextStyle(
                                    color: kContrastColor,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Expanded(
                            flex: 2,
                            child: SizedBox(),
                          ),
                          const Expanded(
                            flex: 3,
                            child: CircleAvatar(
                              radius: 150.0,
                              backgroundColor: kContrastColor,
                              child: Icon(
                                Icons.code,
                                size: 200.0,
                                color: kSecondaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 150.0,
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: const MaterialStatePropertyAll(
                                  kContrastColor),
                              foregroundColor:
                                  const MaterialStatePropertyAll(kPrimaryColor),
                              shape: MaterialStateProperty.all(
                                const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                ),
                              ),
                            ),
                            onPressed: null,
                            child: const Text(
                              'Hire Now',
                              style: TextStyle(
                                fontSize: 50.0,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  const MaterialStatePropertyAll(kPrimaryColor),
                              foregroundColor: const MaterialStatePropertyAll(
                                  kContrastColor),
                              shape: MaterialStateProperty.all(
                                const RoundedRectangleBorder(
                                  side: BorderSide(
                                    color: kContrastColor,
                                    width: 3.0,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(40.0),
                                  ),
                                ),
                              ),
                            ),
                            onPressed: null,
                            child: const Text(
                              '?',
                              style: TextStyle(
                                fontSize: 50.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50.0,
                      ),
                      Center(
                        child: AnimatedTextKit(
                          repeatForever: true,
                          animatedTexts: [
                            ColorizeAnimatedText(
                              'MY WORK',
                              textStyle: const TextStyle(
                                fontSize: 100.0,
                                fontFamily: 'Horizon',
                              ),
                              colors: [
                                kPrimaryColor,
                                kSecondaryColor,
                                kContrastColor,
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GridView.count(
                          shrinkWrap: true,
                          crossAxisCount: 3,
                          mainAxisSpacing: 20.0,
                          crossAxisSpacing: 20.0,
                          children: [
                            ClipRRect(
                              borderRadius: kShowcaseImageBorderRadius,
                              child: Image.asset(
                                'images/showcase_1.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: kShowcaseImageBorderRadius,
                              child: Image.asset(
                                'images/showcase_2.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: kShowcaseImageBorderRadius,
                              child: Image.asset(
                                'images/showcase_3.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: kShowcaseImageBorderRadius,
                              child: Image.asset(
                                'images/showcase_4.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: kShowcaseImageBorderRadius,
                              child: Image.asset(
                                'images/showcase_5.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: kShowcaseImageBorderRadius,
                              child: Image.asset(
                                'images/showcase_6.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 50.0,
                      ),
                      Container(
                        height: 100.0,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: kSecondaryColor,
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Get in touch at: babar.pucit@gmail.com',
                              style: TextStyle(color: kContrastColor),
                            ),
                            //todo: make the assets load...
                            // Image.asset(
                            //   'images/social_icons/google.png',
                            // ),
                            // Image.asset(
                            //   'images/social_icons/linkedin.png',
                            // ),
                            // Image.asset(
                            //   'images/social_icons/stackoverflow.png',
                            // ),
                            // Image.asset(
                            //   'images/social_icons/twitter.png',
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                //'Projects' Tab.
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                            child: Image.asset(
                              'images/showcase_2.jpg',
                              height: 500.0,
                              width: double.infinity,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: AnimatedTextKit(
                              animatedTexts: [
                                FlickerAnimatedText(
                                  'SAB',
                                  textStyle: const TextStyle(
                                    fontSize: 90.0,
                                    color: kSecondaryColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50.0,
                      ),
                      Center(
                        child: AnimatedTextKit(
                          repeatForever: true,
                          animatedTexts: [
                            ColorizeAnimatedText(
                              'What\'s this?',
                              textStyle: const TextStyle(
                                fontSize: 100.0,
                                fontFamily: 'Horizon',
                              ),
                              colors: [
                                kPrimaryColor,
                                kSecondaryColor,
                                kContrastColor,
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        'SAB(A Construction Company App)',
                        style: TextStyle(
                          fontSize: 30.0,
                          color: kContrastColor,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Text(
                        'User can order any service and track the order from the company through the App.',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: kContrastColor,
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      IconButton.filledTonal(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.navigate_next,
                          size: 130.0,
                          color: kContrastColor,
                        ),
                      ),
                      const SizedBox(
                        height: 150.0,
                      ),
                      Container(
                        height: 100.0,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: kSecondaryColor,
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Get in touch at: babar.pucit@gmail.com',
                              style: TextStyle(color: kContrastColor),
                            ),
                            //todo: make the assets load...
                            // Image.asset(
                            //   'images/social_icons/google.png',
                            // ),
                            // Image.asset(
                            //   'images/social_icons/linkedin.png',
                            // ),
                            // Image.asset(
                            //   'images/social_icons/stackoverflow.png',
                            // ),
                            // Image.asset(
                            //   'images/social_icons/twitter.png',
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                //'About' Tab.
                SingleChildScrollView(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                        child: TextLiquidFill(
                          boxWidth: double.infinity,
                          boxBackgroundColor: kPrimaryColor,
                          waveColor: Colors.white,
                          text: 'Fluttering since 2019',
                          textStyle: const TextStyle(
                            fontSize: 70.0,
                            fontWeight: FontWeight.w900,
                            color: kContrastColor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 50.0,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'About Me',
                          style: TextStyle(
                            fontSize: 40.0,
                            color: kContrastColor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 18.0,
                            color: kContrastColorWithDecreasedOpacity,
                          ),
                          children: [
                            TextSpan(
                              text: 'Being a Mobile App Developer, ',
                            ),
                            TextSpan(
                              text:
                                  'Hybrid Apps have attracted me since the start of my Professional career. ',
                            ),
                            TextSpan(
                              text:
                                  'Since then working on Flutter to craft beautiful Apps. ',
                            ),
                            TextSpan(
                              text:
                                  'I Switched to cross-platform app development at the end of 2019 and fall in love with Google\'s Flutter SDK.',
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Education',
                          style: TextStyle(
                            fontSize: 40.0,
                            color: kContrastColor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: 'Bachelor\'s in ',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: kContrastColorWithDecreasedOpacity,
                                ),
                              ),
                              TextSpan(
                                text: 'Software Engineering',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: kContrastColorWithDecreasedOpacity,
                                    fontStyle: FontStyle.italic),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '2014  - 2018',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: kContrastColorWithDecreasedOpacity,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '(PUCIT, University of the Punjab)',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: kContrastColorWithDecreasedOpacity,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 150.0,
                      ),
                      Container(
                        height: 100.0,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: kSecondaryColor,
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Get in touch at: babar.pucit@gmail.com',
                              style: TextStyle(color: kContrastColor),
                            ),
                            //todo: make the assets load...
                            // Image.asset(
                            //   'images/social_icons/google.png',
                            // ),
                            // Image.asset(
                            //   'images/social_icons/linkedin.png',
                            // ),
                            // Image.asset(
                            //   'images/social_icons/stackoverflow.png',
                            // ),
                            // Image.asset(
                            //   'images/social_icons/twitter.png',
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                //'Contact Me' Tab.
                SingleChildScrollView(
                  child: Column(
                    children: [
                      const Text(
                        'Contact Me',
                        style: TextStyle(
                          fontSize: 50.0,
                          color: kContrastColor,
                        ),
                      ),
                      const SizedBox(
                        height: 50.0,
                      ),
                      const TextField(
                        maxLines: 15,
                        decoration: kContactFormTextFieldInputDecoration,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      TextField(
                        decoration: kContactFormTextFieldInputDecoration
                            .copyWith(labelText: 'Your email'),
                      ),
                      const SizedBox(
                        height: 50.0,
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              const MaterialStatePropertyAll(kContrastColor),
                          foregroundColor:
                              const MaterialStatePropertyAll(kPrimaryColor),
                          shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5.0),
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Submit',
                          style: TextStyle(
                            fontSize: 50.0,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 150.0,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 100.0,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: kSecondaryColor,
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Get in touch at: babar.pucit@gmail.com',
                                style: TextStyle(color: kContrastColor),
                              ),
                              //todo: make the assets load...
                              // Image.asset(
                              //   'images/social_icons/google.png',
                              // ),
                              // Image.asset(
                              //   'images/social_icons/linkedin.png',
                              // ),
                              // Image.asset(
                              //   'images/social_icons/stackoverflow.png',
                              // ),
                              // Image.asset(
                              //   'images/social_icons/twitter.png',
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Center(
                    child: Text(
                      'Chat Feature is in Pipeline',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  backgroundColor: kContrastColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                ),
              );
            },
            backgroundColor: kContrastColor,
            foregroundColor: kPrimaryColor,
            child: const Icon(
              Icons.chat_bubble_rounded,
            ),
          ),
        ),
      ),
    );
  }
}
