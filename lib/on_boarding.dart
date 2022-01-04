import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:kruger_national_park/ui/home_page.dart';
import 'package:kruger_national_park/ui/login.dart';
import 'package:kruger_national_park/ui/widget/button_widget.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(

      body:  SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'A reader lives a thousand lives',
              body: 'The man who never reads lives only one.',
              image: buildImage('assets/images/Leopard.jpg'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Today a reader, tomorrow a leader',
              body: 'Start your journey',
              footer: ButtonWidget(
                text: 'Explore Wild Animal',
                onClicked: () => goToLogin(context),
              ),
              image: buildImage('assets/images/rhino.jpg'),
              decoration: getPageDecoration(),
            ),
          ],
          done: const Text('Read', style: TextStyle(fontWeight: FontWeight.w600,color: Color(0xFFE0E0E0))),
          onDone: () => goToLogin(context),
          showSkipButton: true,
          skip: const Text('Skip',style: TextStyle(fontSize: 18,color: Color(0xFF545454))),
          onSkip: () => goToLogin(context),
          next: const Icon(Icons.arrow_forward,size:22,color: Color(0xFF545454),),
          dotsDecorator: getDotDecoration(),
          globalBackgroundColor:  const  Color(0xFFE0E0E0),
          skipFlex: 0,
          nextFlex: 0,
        ),
      )
    );
  }

  void goToLogin(context) => Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (_) => Login()),
  );

  Widget buildImage(String path) =>
       SizedBox(width: 400,height: 550,child: Image.asset(path,));

  DotsDecorator getDotDecoration() => DotsDecorator(
    color: const Color(0xFFBDBDBD),
    size: const Size(10, 10),
    activeSize: const Size(22, 10),
    activeShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
  );

  PageDecoration getPageDecoration() => PageDecoration(
    titleTextStyle: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
    bodyTextStyle: const TextStyle(fontSize: 20),
    descriptionPadding:const  EdgeInsets.all(16).copyWith(bottom: 0),
    imagePadding: const EdgeInsets.all(24),
    pageColor: const  Color(0xFFE0E0E0),
  );
}