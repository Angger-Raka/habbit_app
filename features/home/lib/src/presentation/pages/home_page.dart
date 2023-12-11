import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:blur/blur.dart';

class BaseColor {
  static Color bgColor1 = Color(0xFF01012F);
  static Color bgColor2 = Color(0xFF39384B);
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: BaseColor.bgColor1,
        appBar: PreferredSize(
          preferredSize: Size(double.maxFinite, 60),
          child: Row(
            children: [
              SizedBox(width: 16),
              SvgPicture.asset(
                MainAssets.logo,
                width: 40,
                height: 40,
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: BaseColor.bgColor2,
                ),
                child: Center(
                  child: Icon(
                    Icons.notifications,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ),
              10.sbw,
              Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: BaseColor.bgColor2,
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Hi, Mr. Lazy',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      5.sbw,
                      SvgPicture.asset(
                        MainAssets.flagEn,
                        width: 35,
                        height: 35,
                      ),
                    ],
                  )),
            ],
          ),
        ),
        body: Stack(
          children: [
            Background(),
            Panel(),
          ],
        ));
  }
}

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Spacer(),
          Expanded(
            flex: 5,
            child: Image.asset(
              MainAssets.waifu,
              width: 300,
              height: 300,
            ),
          ),
        ],
      ),
    );
  }
}

class Panel extends StatelessWidget {
  const Panel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Today is",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    ),
                  ),
                  child: Text(
                    'a best',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Row(
                  children: [
                    40.sbw,
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: Colors.white,
                          width: 1,
                        ),
                      ),
                      child: Text(
                        'day to win',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Daily',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    12.sbw,
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 0,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        'Summary',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: double.maxFinite,
                          // color: Colors.red,
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: ClipPath(
                                    clipper: ContainerClipper(),
                                    child: Container(
                                      width: double.maxFinite,
                                      height: double.maxFinite,
                                      child: Blur(
                                        blur: 5,
                                        child: Container(
                                          width: double.maxFinite,
                                          height: double.maxFinite,
                                          // color: Colors.red,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: CustomPaint(
                                    painter: ContainerPainter(
                                      isleft: false,
                                    ),
                                    size: Size.infinite,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                20.sbh,
                Expanded(
                  child: Container(
                    width: double.maxFinite,
                    height: double.maxFinite,
                    color: Colors.red,
                    padding: EdgeInsets.all(8),
                    child: CustomPaint(
                      size: Size.infinite,
                      painter: FooterPainter(),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// class CustomContainer extends StatelessWidget {
//   const CustomContainer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return CustomPaint(
//       painter: ContainerPainter(),
//       child: Container(
//         width: double.maxFinite,
//         height: 100,
//         // color: Colors.red,
//       ),
//     );
//   }
// }

class ContainerPainter extends CustomPainter {
  ContainerPainter({required this.isleft});

  bool isleft;

  @override
  void paint(Canvas canvas, Size size) {
    final paintContainer = Paint()
      ..color = const Color(0xff45445D66).withOpacity(0.4)
      // ..color = Colors.transparent
      ..maskFilter = MaskFilter.blur(BlurStyle.inner, 2)
      ..style = PaintingStyle.fill
      ..strokeWidth = 3;

    final paintCircle = Paint()
      ..color = isleft ? Color(0xffC9F5B8) : Color(0xff080A1E)
      ..style = PaintingStyle.fill
      ..strokeWidth = 3;

    final path = Path()
      ..moveTo(30, 0)
      ..lineTo(size.width - (size.width / 3) - 30, 0)
      ..quadraticBezierTo(
        size.width - (size.width / 3),
        0,
        size.width - (size.width / 3),
        30,
      )
      ..quadraticBezierTo(
        size.width - (size.width / 3),
        60,
        size.width - (size.width / 3) + 30,
        60,
      )
      ..quadraticBezierTo(
        size.width,
        60,
        size.width,
        100,
      )
      ..lineTo(size.width, size.height - 30)
      ..quadraticBezierTo(
        size.width,
        size.height,
        size.width - 30,
        size.height,
      )
      ..lineTo(30, size.height)
      ..quadraticBezierTo(
        0,
        size.height,
        0,
        size.height - 30,
      )
      ..lineTo(0, 30)
      ..quadraticBezierTo(0, 0, 30, 0);

    canvas.drawPath(path, paintContainer);
    canvas.drawCircle(
      Offset(
        size.width - 26,
        26,
      ),
      26,
      paintCircle,
    );
  }

  @override
  bool shouldRepaint(ContainerPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(ContainerPainter oldDelegate) => false;
}

class FooterPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xff45445D).withOpacity(0.4)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;

    final path = Path()
      ..moveTo(30, 0)
      ..lineTo(size.width - 30, 0)
      ..quadraticBezierTo(
        size.width,
        0,
        size.width,
        30,
      )
      ..lineTo(size.width, size.height - 30)
      ..quadraticBezierTo(
        size.width,
        size.height,
        size.width - 30,
        size.height,
      )
      ..lineTo(3 * (size.width / 4), size.height) // - 30
      ..lineTo(2 * (size.width / 4), size.height - (size.height / 4))
      ..lineTo(1 * (size.width / 4), size.height)
      ..lineTo(30, size.height)
      ..quadraticBezierTo(0, size.height, 0, size.height - 30)
      ..lineTo(0, 30)
      ..quadraticBezierTo(0, 0, 30, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(FooterPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(FooterPainter oldDelegate) => false;
}

class ContainerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(30, 0)
      ..lineTo(size.width - (size.width / 3) - 30, 0)
      ..quadraticBezierTo(
        size.width - (size.width / 3),
        0,
        size.width - (size.width / 3),
        30,
      )
      ..quadraticBezierTo(
        size.width - (size.width / 3),
        60,
        size.width - (size.width / 3) + 30,
        60,
      )
      ..quadraticBezierTo(
        size.width,
        60,
        size.width,
        100,
      )
      ..lineTo(size.width, size.height - 30)
      ..quadraticBezierTo(
        size.width,
        size.height,
        size.width - 30,
        size.height,
      )
      ..lineTo(30, size.height)
      ..quadraticBezierTo(
        0,
        size.height,
        0,
        size.height - 30,
      )
      ..lineTo(0, 30)
      ..quadraticBezierTo(0, 0, 30, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

//  | 1 | 2 | 3 |

// 1/3

//  100 / 3 