import 'package:bwa_cozy/pages/error_page.dart';
import 'package:bwa_cozy/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/facility_item.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void> _launchURL(String url) async {
      final Uri uri = Uri(host: url);
      try {
        if (await canLaunchUrl(uri)) {
          launchUrl(uri, mode: LaunchMode.externalApplication);
        } else {
          throw Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => ErrorPage(),
              ),
              (route) => false);
        }
      } catch (e) {
        print('Error launching URL: $e');
      }

      // final Uri uri = Uri(host: url);
      // if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      //   throw "Can't launch url";
      // }
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Stack(
          children: [
            //!NOTE: THUMBNAIL

            Image.asset(
              'assets/thumbnail.png',
              height: 350,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 24, left: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/btn_back.png',
                      width: 40,
                    ),
                  ),
                  Image.asset(
                    'assets/btn_wishlist.png',
                    width: 40,
                  ),
                ],
              ),
            ),
            ListView(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 328),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(18))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 30),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //!NOTE: TITLE

                                Text(
                                  'Kuratakeso Hott',
                                  style: blackTextStyle.copyWith(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(height: 2),
                                Text.rich(
                                  TextSpan(
                                    text: '\$52',
                                    style:
                                        purpleTextStyle.copyWith(fontSize: 16),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: ' / month',
                                          style: greyTextStyle.copyWith(
                                              fontSize: 16))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/icon_star.png',
                                  width: 20,
                                ),
                                const SizedBox(width: 2),
                                Image.asset(
                                  'assets/icon_star.png',
                                  width: 20,
                                ),
                                const SizedBox(width: 2),
                                Image.asset(
                                  'assets/icon_star.png',
                                  width: 20,
                                ),
                                const SizedBox(width: 2),
                                Image.asset(
                                  'assets/icon_star.png',
                                  width: 20,
                                ),
                                const SizedBox(width: 2),
                                Image.asset(
                                  'assets/icon_star.png',
                                  width: 20,
                                  color: greyColor,
                                ),
                                const SizedBox(width: 2),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),

                      //! NNOTE: MAIN FACILITIES

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Text(
                          'Main Facilities',
                          style: regularBlackTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FacilityItem(
                              name: 'kitchen',
                              total: 2,
                              imageUrl: 'assets/icon_kitchen.png',
                            ),
                            FacilityItem(
                              name: 'bedroom',
                              total: 3,
                              imageUrl: 'assets/icon_bedroom.png',
                            ),
                            FacilityItem(
                              name: 'big lemari',
                              total: 3,
                              imageUrl: 'assets/icon_cupboard.png',
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),

                      // ! PHOTOS

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Text(
                          'Photos',
                          style: regularBlackTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                      const SizedBox(height: 12),

                      SizedBox(
                        height: 88,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            SizedBox(width: edge),
                            Image.asset(
                              'assets/photo1.png',
                              width: 110,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(width: 18),
                            Image.asset(
                              'assets/photo2.png',
                              width: 110,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(width: 18),
                            Image.asset(
                              'assets/photo3.png',
                              width: 110,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(width: 18),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),

                      // ! Location

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Text(
                          'Location',
                          style: regularBlackTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Jln. Kappan Sukses No. 20',
                                  style: greyTextStyle.copyWith(
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  'Jakarta',
                                  style: greyTextStyle.copyWith(
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                _launchURL('naon');
                              },
                              child: Image.asset(
                                'assets/btn_map.png',
                                width: 40,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 40),

                      // ! Button

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: purpleColor,

                                  // foregroundColor: redColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(17))),
                              onPressed: () {
                                Uri uri = Uri.parse('tel:+6212345678');
                                launchUrl(uri);
                              },
                              child: Text(
                                'Book Now',
                                style: whiteTextStyle.copyWith(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              )),
                        ),
                      ),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
