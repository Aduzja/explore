import 'package:explore/src/application/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlaceDetailsPage extends StatelessWidget {
  const PlaceDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        backgroundColor: AppColors.backgroundGrey,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Image.asset(
                'assets/icons/back_icon.png',
                width: 33,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Row(
              children: [
                IconButton(
                  icon: Image.asset(
                    'assets/icons/favorite_icon.png',
                    width: 33,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image.asset(
                    'assets/icons/search_icon.png',
                    width: 33,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
      body: Container(
        color: AppColors.backgroundGrey,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Stara Fabryka',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                ),
              ),
              Text(
                'Bielsko-Biała,\nPlac Żwirki i Wigury 8',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              Text(
                'Orientacyjny czas zwiedzania: 1,5h',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                ),
              ),
              ExpansionTile(
                title: Row(
                  children: [
                    Icon(
                      Icons.circle,
                      color: AppColors.green,
                      size: 20,
                    ),
                    SizedBox(width: 8),
                    Text('10.00-20.00'),
                    Icon(
                      Icons.arrow_drop_down,
                      color: AppColors.darkBlue,
                    ),
                  ],
                ),
                children: <Widget>[
                  ListTile(
                    title: Text('Poniedziałek: 10.00-20.00'),
                  ),
                  ListTile(
                    title: Text('Wtorek: 10.00-20.00'),
                  ),
                  ListTile(
                    title: Text('Środa: 10.00-20.00'),
                  ),
                  ListTile(
                    title: Text('Czwartek: 10.00-20.00'),
                  ),
                  ListTile(
                    title: Text('Piątek: 10.00-20.00'),
                  ),
                  ListTile(
                    title: Text('Sobota: 10.00-20.00'),
                  ),
                  ListTile(
                    title: Text('Niedziela: 10.00-20.00'),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Image.asset(
                  'assets/images/fabryka.jpeg',
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                'Opis szczegółowy',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/disabled_icon.png',
                  ),
                  SizedBox(width: 6),
                  Text(
                    'Udogodnienia dla osób z niepełnosprawnością',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/parking_icon.png',
                  ),
                  SizedBox(width: 6),
                  Text(
                    'Parking',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/languages_icon.png',
                  ),
                  SizedBox(width: 6),
                  Text(
                    'Język: polski, angielski',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/pay_icon.png',
                  ),
                  SizedBox(width: 6),
                  Text(
                    'Płatne',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/animal_friendly_icon.png',
                  ),
                  SizedBox(width: 6),
                  Text(
                    'Zwierzęta dozwolone',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Divider(
                color: AppColors.lightGrey,
                thickness: 1,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/web_icon.png',
                  ),
                  SizedBox(width: 6),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'www.example.com',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                        color: AppColors.darkBlue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/phone_icon.png',
                  ),
                  SizedBox(width: 6),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      '+48 123 456 789',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                        color: AppColors.darkBlue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/mail_icon.png',
                  ),
                  SizedBox(width: 6),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'example@example.com',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                        color: AppColors.darkBlue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/facebook_icon.png',
                  ),
                  SizedBox(width: 6),
                  Image.asset(
                    'assets/icons/instagram_icon.png',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
