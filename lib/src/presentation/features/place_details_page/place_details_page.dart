import 'package:explore/src/application/constants/app_colors.dart';
import 'package:explore/src/models/trail_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlaceDetailsPage extends StatelessWidget {
  final TrailItem item;
  const PlaceDetailsPage({super.key, required this.item});
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
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            bottom: 40.0,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Jedynie przykładowe dane zaciągane z data.json
                Text(
                  item.name,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                  ),
                ),
                Text(
                  item.location,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Orientacyjny czas zwiedzania: ${item.estimatedVisitDuration ?? ''}',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  ),
                ),
                Theme(
                  data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    iconColor: AppColors.darkBlue,
                    tilePadding: EdgeInsets.all(0),
                    showTrailingIcon: false,
                    title: Row(
                      children: [
                        Icon(
                          Icons.circle,
                          color: AppColors.green,
                          size: 18,
                        ),
                        SizedBox(width: 8),
                        Text(
                          '10.00-20.00',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w800,
                            fontSize: 20,
                            color: AppColors.darkBlue,
                          ),
                        ),
                        SizedBox(width: 8),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: AppColors.darkBlue,
                          size: 30,
                        ),
                      ],
                    ),
                    children: <Widget>[
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Poniedziałek',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  '10.00-20.00',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Wtorek',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  '10.00-20.00',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Środa',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  '10.00-20.00',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Czwartek',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  '10.00-20.00',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Piątek',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  '10.00-20.00',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Sobota',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  '10.00-20.00',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Niedziela',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  '10.00-20.00',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 12),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    'assets/images/fabryka.jpeg',
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  item.description ?? '',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 12),
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
                        fontSize: 12,
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
                        fontSize: 12,
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
                        fontSize: 12,
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
                        fontSize: 12,
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
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Divider(
                    color: AppColors.darkGrey.withOpacity(0.2),
                    thickness: 1,
                  ),
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
                SizedBox(height: 40),
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/fb_icon.png',
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
      ),
    );
  }
}
