import 'package:bwa_cozy/pages/home_page.dart';
import 'package:bwa_cozy/shared/theme.dart';
import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/error.png',
              height: 86,
              width: 300,
            ),
            const SizedBox(height: 70),
            Text(
              'Where are you going?',
              style: blackTextStyle.copyWith(
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 14),
            Text(
              'Seems like the page that you were\nrequested is already gone',
              textAlign: TextAlign.center,
              style: greyTextStyle.copyWith(
                  fontSize: 16, fontWeight: FontWeight.w300),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width - 82 * 2,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: purpleColor,

                        // foregroundColor: redColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17))),
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                          (route) => false);
                    },
                    child: Text(
                      'Book Now',
                      style: whiteTextStyle.copyWith(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
