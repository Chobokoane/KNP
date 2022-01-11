import 'package:flutter/material.dart';
import 'package:kruger_national_park/ui/views/login_view.dart';
import 'package:kruger_national_park/ui/views/register_view.dart';

class WelcomeWidget extends StatelessWidget {

  WelcomeWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
              alignment: Alignment.center,
              child: Stack(
                children: <Widget>[
                  Align(
                      alignment: Alignment.topLeft,
                      child: CustomPaint(
                          painter: HeaderPainter(),
                          child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 300))),
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 200,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Kruger National Park\nIs South Africa's\nMost exciting African\nSafari destination",
                              style: TextStyle(
                                  fontSize: 35.0,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 150,
                        ),
                        SizedBox(
                            width: 250,
                            height: 47,
                            child: Container(
                              child: FlatButton(
                                color: const Color(0xfbb14400),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  'Sign In'.toUpperCase(),
                                  style: const TextStyle(color: Colors.white),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => LoginView()),
                                  );
                                },
                              ),
                            )),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                            width: 250,
                            height: 47,
                            child: Container(
                              child: FlatButton(
                                color: const Color(0xfbb14400),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  'Sign Up'.toUpperCase(),
                                  style: const TextStyle(color: Colors.white),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => SignView()),
                                  );
                                },
                              ),
                            )),
                      ],
                    ),
                  ),
                ],
              )),
        ));
  }
  void signUp (){

  }
}

class HeaderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();
    // Path number 1
    paint.color = Color(0x90A4AEAE);
    path = Path();
    path.lineTo(0, size.height);
    path.cubicTo(size.width * 0.09, size.height * 0.93, size.width * 0.11,
        size.height * 0.78, size.width * 0.11, size.height * 0.66);
    path.cubicTo(size.width * 0.11, size.height * 0.49, size.width * 0.16,
        size.height * 0.37, size.width / 4, size.height * 0.28);
    path.cubicTo(size.width * 0.36, size.height * 0.23, size.width * 0.54,
        size.height * 0.18, size.width * 0.68, size.height * 0.16);
    path.cubicTo(size.width * 0.81, size.height * 0.13, size.width * 0.89,
        size.height * 0.07, size.width * 0.98, 0);
    path.cubicTo(
        size.width * 0.94, 0, size.width * 0.86, 0, size.width * 0.84, 0);
    path.cubicTo(size.width * 0.56, 0, size.width * 0.28, 0, 0, 0);
    path.cubicTo(0, 0, 0, size.height, 0, size.height);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class FooterPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();
    paint.color = const Color(0xfbb14400).withOpacity(1);
    path = Path();
    path.lineTo(size.width, size.height / 5);
    path.cubicTo(size.width, size.height / 5, size.width * 0.94,
        size.height * 0.88, size.width * 0.65, size.height * 0.93);
    path.cubicTo(size.width * 0.36, size.height * 0.97, size.width / 5,
        size.height, size.width / 5, size.height);
    path.cubicTo(size.width / 5, size.height, size.width, size.height,
        size.width, size.height);
    path.cubicTo(size.width, size.height, size.width, size.height / 5,
        size.width, size.height / 5);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
