import 'package:bwa_cozy/models/space.dart';
import 'package:bwa_cozy/models/tips.dart';
import 'package:bwa_cozy/shared/theme.dart';
import 'package:bwa_cozy/widgets/city_card.dart';
import 'package:bwa_cozy/widgets/space_card.dart';
import 'package:bwa_cozy/widgets/tips_card.dart';
import 'package:flutter/material.dart';

import '../models/city.dart';
import '../widgets/bottom_navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ListView(
            children: [
              //! NOTE: TITLE/HEADER

              const SizedBox(
                height: 30,
              ),
              Text(
                'Explore Now',
                style: blackTextStyle.copyWith(fontSize: 24),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                'Mencari kosan yang cozy',
                style: greyTextStyle.copyWith(fontSize: 16),
              ),
              const SizedBox(
                height: 30,
              ),
              Text('Popular Cities',
                  style: regularBlackTextStyle.copyWith(fontSize: 16)),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    //!NOTE: POPULAR CITIES

                    CityCard(CityModel(
                        id: 1, name: 'Jakarta', imageUrl: 'assets/city1.png')),
                    const SizedBox(
                      width: 24,
                    ),
                    CityCard(CityModel(
                        id: 2,
                        name: 'Bandung',
                        imageUrl: 'assets/city2.png',
                        isPopular: true)),
                    const SizedBox(
                      width: 24,
                    ),
                    CityCard(CityModel(
                        id: 3, name: 'Surabaya', imageUrl: 'assets/city3.png')),
                    const SizedBox(
                      width: 24,
                    ),
                    CityCard(CityModel(
                        id: 3,
                        name: 'Padang',
                        imageUrl: 'assets/city4.png',
                        isPopular: true)),
                    const SizedBox(
                      width: 24,
                    ),
                    CityCard(CityModel(
                        id: 3, name: 'Aceh', imageUrl: 'assets/city5.png')),
                    const SizedBox(
                      width: 24,
                    ),
                    CityCard(CityModel(
                        id: 3, name: 'Bogor', imageUrl: 'assets/city6.png')),
                  ],
                ),
              ),

              // !NOTE: RECOMMENDED SPACE
              const SizedBox(height: 30),
              Text(
                'Recommended Space',
                style: regularBlackTextStyle.copyWith(fontSize: 16),
              ),
              const SizedBox(height: 16),
              SpaceCard(SpaceModel(
                  id: 1,
                  rating: 4,
                  name: 'Kuratakeso Hott',
                  imageUrl: 'assets/space1.png',
                  price: 52,
                  city: 'Bandung',
                  country: 'Germany')),
              const SizedBox(height: 30),
              SpaceCard(SpaceModel(
                  id: 2,
                  rating: 5,
                  name: 'Roemah Nenek',
                  imageUrl: 'assets/space2.png',
                  price: 11,
                  city: 'Melbourne',
                  country: 'Australia')),
              const SizedBox(height: 30),
              SpaceCard(SpaceModel(
                  id: 3,
                  rating: 3,
                  name: 'Darling How',
                  imageUrl: 'assets/space3.png',
                  price: 20,
                  city: 'Jakarta',
                  country: 'Indonesia')),

              // !NOTE: TIPS & GUIDANCE

              const SizedBox(height: 30),
              Text(
                'Tips & Guidance',
                style: regularBlackTextStyle.copyWith(fontSize: 16),
              ),
              const SizedBox(height: 16),
              TipsCard(
                TipsGuidanceModel(
                    name: 'City Guidelines',
                    updateAt: '20 Apr',
                    imageUrl: 'assets/tips1.png'),
              ),
              const SizedBox(height: 20),
              TipsCard(
                TipsGuidanceModel(
                    name: 'Jakarta Fairship',
                    updateAt: '11 Dec',
                    imageUrl: 'assets/tips2.png'),
              ),
              const SizedBox(height: 145),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        width: MediaQuery.of(context).size.width - (2 * edge),
        height: 65,
        decoration: BoxDecoration(
            color: const Color(0xffF6F7F8),
            borderRadius: BorderRadius.circular(23)),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(imageUrl: 'assets/icon_home.png', isActive: true),
            BottomNavbarItem(
                imageUrl: 'assets/icon_email.png', isActive: false),
            BottomNavbarItem(imageUrl: 'assets/icon_card.png', isActive: false),
            BottomNavbarItem(imageUrl: 'assets/icon_love.png', isActive: false),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
