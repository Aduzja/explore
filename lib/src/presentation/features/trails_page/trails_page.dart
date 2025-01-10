import 'package:explore/src/application/constants/app_colors.dart';
import 'package:explore/src/presentation/features/trail_details_page/trail_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

class TrailsPage extends StatelessWidget {
  const TrailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundGrey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        backgroundColor: AppColors.backgroundGrey,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
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
                const SizedBox(width: 12),
                Text(
                  'Szlaki',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                  ),
                ),
              ],
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
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: ListView(
          children: [
            SingleChildScrollView(
              child: StaggeredGrid.count(
                crossAxisCount: 1,
                mainAxisSpacing: 15,
                children: List.generate(10, (index) {
                  return StaggeredGridTile.extent(
                    crossAxisCellCount: 1,
                    mainAxisExtent: 186,
                    child: Material(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(12),
                      elevation: 4,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(12),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const TrailDetailsPage(trailIndex: 3),
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/trail.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10, top: 10),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/icons/add_favorite_icon.png',
                                      ),
                                      Icon(
                                        Icons.circle,
                                        color: AppColors.white.withOpacity(0.43),
                                        size: 40,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 120,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(12),
                                      bottomRight: Radius.circular(12),
                                    ),
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        AppColors.black.withOpacity(0),
                                        AppColors.black.withOpacity(0.5),
                                        AppColors.black.withOpacity(0.5),
                                      ],
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 16),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Szlak $index',
                                          style: GoogleFonts.roboto(
                                            color: AppColors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18,
                                          ),
                                        ),
                                        Divider(
                                          color: AppColors.white.withOpacity(0.5),
                                          thickness: 1,
                                          height: 4,
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'Ilość obiektów \nna szlaku'.toUpperCase(),
                                                  style: GoogleFonts.roboto(
                                                    color: AppColors.white,
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                                const SizedBox(width: 12),
                                                Text(
                                                  '$index',
                                                  style: GoogleFonts.roboto(
                                                    color: AppColors.white,
                                                    fontWeight: FontWeight.w200,
                                                    fontSize: 37,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(right: 6),
                                              child: IconButton(
                                                icon: Image.asset(
                                                  'assets/icons/navigate_icon.png',
                                                ),
                                                onPressed: () {},
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
