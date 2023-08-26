import 'package:flutter/material.dart';
import 'package:louvo/components/login_screen.dart';
import 'package:louvo/components/register_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:louvo/welcome_screen.dart';

class LandPage extends StatefulWidget {
  const LandPage({Key? key}) : super(key: key);

  @override
  State<LandPage> createState() => _LandPageState();
}

class _LandPageState extends State<LandPage> {
  Color purpleLight = Color.fromARGB(255, 229, 203, 251);
  Color purpleDark = Color.fromARGB(255, 156, 119, 208);
  Color purpleDarkBorder = Color.fromARGB(255, 91, 46, 153);
  @override
  Widget build(BuildContext context) {
    CarouselController _controller = CarouselController();
    int currentIndex = 0;
    int maxIndex = 3;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 252, 248, 255),
      body: SafeArea(
        child: Stack(
          children: [
            CarouselSlider(
              carouselController: _controller, 
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height / 1.2,
                viewportFraction: 1,
              ),
              items: [
                  {
                    'image': 'assets/images/Image1.png',
                    'title': 'Welcome to LOUVO',
                    'description' : 'An application focusing on providing reliable E-Wallet'
                  },
                  {
                    'image': 'assets/images/Image2.png',
                    'title': 'Reliable and Fast',
                    'description' : 'Transfer anywhere and anytime between users only using your handphone'
                  },
                  {
                    'image': 'assets/images/Image3.png',
                    'title': 'Safe and Secure',
                    'description' : 'Your transaction history will be safe from others'
                  },].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Center(
                        child: Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(i['image']!),
                            SizedBox(height: 10),
                            Text(
                              i['title']!,
                              style: TextStyle(
                                fontSize: 28.0,
                                fontWeight: FontWeight.bold,
                                color: purpleDark
                                ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              width: 340, 
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    i['description']!,
                                    style: TextStyle(fontSize: 20.0,color: Colors.black54),
                                    textAlign: TextAlign.center,
                                    
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
           Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.all(16.0),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: purpleDark,
                borderRadius: BorderRadius.circular(100),
              ),
              child: IconButton(
                icon: Align(
                  child: Icon(Icons.keyboard_arrow_right, size: 36.0, color: Colors.white),
                ),
                 onPressed: () {
                    if (currentIndex == maxIndex - 1) {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => WelcomePage()),
                      );
                    } else {
                      _controller.nextPage(); 
                      currentIndex++;
                    } 
                  },
              ),
            ),
           ),
          ],
        ),
      ),
    );
  }
}
