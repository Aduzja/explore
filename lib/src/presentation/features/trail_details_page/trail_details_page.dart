import 'package:explore/src/application/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

class TrailDetailsPage extends StatefulWidget {
  final int trailIndex;

  const TrailDetailsPage({super.key, required this.trailIndex});

  @override
  _TrailDetailsPageState createState() => _TrailDetailsPageState();
}

class _TrailDetailsPageState extends State<TrailDetailsPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(16),
          ),
          color: AppColors.backgroundGrey,
        ),
        child: ListView(
          children: [
            Text(
              'Szlak Zabytków Techniki',
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w700,
                fontSize: 22,
              ),
            ),
            TabBar(
              controller: _tabController,
              tabs: const [
                Tab(text: 'Lista'),
                Tab(text: 'Mapa'),
              ],
            ),
            SingleChildScrollView(
              child: StaggeredGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                children: List.generate(10, (index) {
                  if (index == 0) {
                    return StaggeredGridTile.extent(
                      crossAxisCellCount: 1,
                      mainAxisExtent: 93,
                      child: Material(
                        color: AppColors.green,
                        borderRadius: BorderRadius.circular(12),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(12),
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(14),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Image.asset(
                                    'assets/icons/corner_arrow.png',
                                    height: 12,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    'Zaplanuj podróż',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      color: AppColors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  } else {
                    return StaggeredGridTile.extent(
                      crossAxisCellCount: 1,
                      mainAxisExtent: 186,
                      child: Material(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(12),
                        elevation: 4,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(12),
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: const DecorationImage(
                                image: AssetImage('assets/images/fabryka.jpeg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 6, top: 10),
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
                                    height: 60,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(12),
                                        bottomRight: Radius.circular(12),
                                      ),
                                      color: AppColors.black.withOpacity(0.46),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 8,
                                        bottom: 8,
                                        right: 8,
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Stara fabryka $index',
                                                style: GoogleFonts.roboto(
                                                  color: AppColors.white,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                'Bielsko-biała $index'.toUpperCase(),
                                                style: GoogleFonts.roboto(
                                                  color: AppColors.white,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 10,
                                                ),
                                              ),
                                              Text(
                                                'czas zwiedzania: $index h',
                                                style: GoogleFonts.roboto(
                                                  color: AppColors.white,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 11,
                                                ),
                                              ),
                                            ],
                                          ),
                                          IconButton(
                                            icon: Image.asset(
                                              'assets/icons/navigate_icon.png',
                                            ),
                                            onPressed: () {},
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
                  }
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
