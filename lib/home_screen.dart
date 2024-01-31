import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:footer/footer.dart';
import 'constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:url_launcher/url_launcher.dart';
import 'helpers/projects_details_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController messageTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  int showcaseNumber = 1;

  void launchUpworkUrl() async {
    final Uri url = Uri.parse('https://www.upwork.com/freelancers/~01e32e5f2fbba79b12');
    bool isLaunched = await launchUrl(url);
    if (!isLaunched) {
      throw Exception('Couldn\'t Launch the $url successfully');
    }
  }

  SnackBar giveCustomSnackBar({required String message}) {
    return SnackBar(
      content: Center(
        child: Text(
          message,
          style: const TextStyle(
            color: kPrimaryColor,
            fontSize: 18.0,
          ),
        ),
      ),
      backgroundColor: kContrastColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
    );
  }

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
                  child: Text('Faraz Ahmad'),
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
                                      'I craft Apps for ios and android...',
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
                                  'I have 1+ year of Experience in Hybrid Apps Development. '
                                  'i am making cross-platform applications for more then 1 year',
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
                          Expanded(
                            flex: 3,
                            child: CircleAvatar(
                              radius: 150.0,
                              backgroundColor: kContrastColor,
                              child: Image.asset("images/profile.jpg"),
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
                            onPressed: () {
                              launchUpworkUrl();
                            },
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
                          const Tooltip(
                            preferBelow: false,
                            textStyle: TextStyle(
                              color: kContrastColor,
                              fontSize: 12.0,
                            ),
                            decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.all(
                                Radius.circular(5.0),
                              ),
                            ),
                            message:
                                'This will redirect you to my Upwork Freelance Account',
                            child: Icon(
                              Icons.question_mark,
                              color: kContrastColor,
                              size: 50.0,
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
                                'images/showcase_1.png',
                                // fit: BoxFit.fill,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: kShowcaseImageBorderRadius,
                              child: Image.asset(
                                'images/showcase_2.png',
                                // fit: BoxFit.fill,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: kShowcaseImageBorderRadius,
                              child: Image.asset(
                                'images/showcase_3.png',

                              ),
                            ),
                            // ClipRRect(
                            //   borderRadius: kShowcaseImageBorderRadius,
                            //   child: Image.asset(
                            //     'images/showcase_4.jpg',
                            //     fit: BoxFit.fill,
                            //   ),
                            // ),
                            // ClipRRect(
                            //   borderRadius: kShowcaseImageBorderRadius,
                            //   child: Image.asset(
                            //     'images/showcase_5.jpg',
                            //     fit: BoxFit.fill,
                            //   ),
                            // ),
                            // ClipRRect(
                            //   borderRadius: kShowcaseImageBorderRadius,
                            //   child: Image.asset(
                            //     'images/showcase_6.png',
                            //     fit: BoxFit.fill,
                            //   ),
                            // ),
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
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Get in touch at farazUpwork38@gmail.com',
                                  style: TextStyle(
                                    color: kContrastColor,
                                    fontSize: 15.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  'Made with 🩵 using Flutter',
                                  style: TextStyle(
                                    color: kContrastColor,
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
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
                        alignment: Alignment.topCenter,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                            child: Image.asset(
                              'images/showcase_$showcaseNumber.png',
                              height: 500.0,

                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: AnimatedTextKit(
                              animatedTexts: [
                                FlickerAnimatedText(
                                  projectsTitles[showcaseNumber - 1],
                                  textStyle: TextStyle(
                                    fontSize: 90.0,
                                    color: kSecondaryColor.withOpacity(0.5),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Center(
                        child: AnimatedTextKit(
                          repeatForever: true,
                          animatedTexts: [
                            ColorizeAnimatedText(
                              'What\'s this?',
                              textStyle: const TextStyle(
                                fontSize: 50.0,
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
                      Text(
                        projectsShortDescriptions[showcaseNumber - 1],
                        style: const TextStyle(
                          fontSize: 30.0,
                          color: kContrastColor,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        projectsDescriptions[showcaseNumber - 1],
                        style: const TextStyle(
                          fontSize: 20.0,
                          color: kContrastColor,
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(kSecondaryColor),
                        ),
                        onPressed: () {
                          if (showcaseNumber < 3) {
                            setState(() {
                              showcaseNumber++;
                            });
                          } else {
                            setState(() {
                              showcaseNumber = 1;
                            });
                          }
                        },
                        child: const Icon(
                          Icons.navigate_next,
                          size: 100.0,
                          color: kContrastColor,
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
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
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Get in touch at farazUpwork38@gmail.com',
                                  style: TextStyle(
                                    color: kContrastColor,
                                    fontSize: 15.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  'Made with 🩵 using Flutter',
                                  style: TextStyle(
                                    color: kContrastColor,
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
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
                          text: 'Fluttering since 2022',
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
                                  'I Switched to cross-platform app development at the end of 2022 and fall in love with Google\'s Flutter SDK.',
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
                          '2018-2022',
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
                          '(UOG, University of Gujrat)',
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
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Get in touch at farazUpwork38@gmail.com',
                                  style: TextStyle(
                                    color: kContrastColor,
                                    fontSize: 15.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  'Made with 🩵 using Flutter',
                                  style: TextStyle(
                                    color: kContrastColor,
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
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
                      TextField(
                        controller: messageTextEditingController,
                        style: const TextStyle(
                          color: kContrastColor,
                        ),
                        maxLines: 15,
                        decoration:
                            kContactFormTextFieldInputDecoration.copyWith(
                          labelText: 'Message',
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      TextField(
                        controller: emailTextEditingController,
                        style: const TextStyle(
                          color: kContrastColor,
                          fontSize: 20.0,
                        ),
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
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            giveCustomSnackBar(
                                message:
                                    'Your message has been submitted. Thanks!'),
                          );
                          messageTextEditingController.clear();
                          emailTextEditingController.clear();
                        },
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
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Get in touch at farazUpwork38@gmail.com',
                                    style: TextStyle(
                                      color: kContrastColor,
                                      fontSize: 15.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    'Made with 🩵 using Flutter',
                                    style: TextStyle(
                                      color: kContrastColor,
                                      fontSize: 10.0,
                                    ),
                                  ),
                                ],
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
                giveCustomSnackBar(message: 'Chat feature is in pipeline!'),
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
