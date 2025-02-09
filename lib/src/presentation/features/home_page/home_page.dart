import 'package:explore/src/application/constants/app_colors.dart';
import 'package:explore/src/application/cubit/root_cubit.dart';
import 'package:explore/src/presentation/base/widgets/custom_app_bar.dart';
import 'package:explore/src/presentation/base/widgets/custom_bottom_navigation_bar.dart';
import 'package:explore/src/presentation/features/trails_page/trails_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BlocBuilder<RootCubit, RootState>(
        builder: (context, state) {
          return CustomBottomNavigationBar(
            currentIndex: state.selectedIndex,
            onTap: (index) {
              // Bottom nav bar działa z tą linijką kodu
              // context.read<RootCubit>().selectTab(index);
            },
          );
        },
      ),
      appBar: AppBar(
        toolbarHeight: 80,
        title: const CustomAppBar(),
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
        child: BlocBuilder<RootCubit, RootState>(builder: (context, state) {
          if (state.errorMessage.isNotEmpty) {
            return Center(
              child: Text(
                state.errorMessage,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                ),
              ),
            );
          }
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(
                color: AppColors.darkBlue,
                backgroundColor: AppColors.lightGrey,
              ),
            );
          } else if (state.trailData != null) {
            return ListView(
              children: [
                Column(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 22),
                        child: Image.asset(
                          'assets/icons/bottom_arrow.png',
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Polecane',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                  ],
                ),
                SingleChildScrollView(
                  child: StaggeredGrid.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    children: List.generate(state.trailData!.homepageItems.length, (index) {
                      final item = state.trailData!.homepageItems[index];
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
                      } else if (index == 2) {
                        return StaggeredGridTile.extent(
                          crossAxisCellCount: 1,
                          mainAxisExtent: 186,
                          child: Material(
                            color: AppColors.blue,
                            borderRadius: BorderRadius.circular(12),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(12),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const TrailsPage(),
                                  ),
                                );
                              },
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
                                        'Szlaki',
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
                                  image: DecorationImage(
                                    image: AssetImage(
                                      index == 0
                                          ? 'assets/images/trail.jpg'
                                          : index == 1
                                              ? 'assets/images/planetarium.jpg'
                                              : index == 2
                                                  ? 'assets/images/drewniana.jpeg'
                                                  : index == 3
                                                      ? 'assets/images/muzyka_filmowa.jpeg'
                                                      : index == 4
                                                          ? 'assets/images/park_etno.jpeg'
                                                          : index == 5
                                                              ? 'assets/images/historyczne.jpeg'
                                                              : 'assets/images/trail.jpg',
                                    ),
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
                                        height: 50,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(12),
                                            bottomRight: Radius.circular(12),
                                          ),
                                          color: AppColors.black.withOpacity(0.46),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                item.name.length > 12 ? '${item.name.substring(0, 12)}...' : item.name,
                                                style: GoogleFonts.roboto(
                                                  color: AppColors.white,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                item.category,
                                                style: GoogleFonts.roboto(
                                                  color: AppColors.white,
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 9,
                                                ),
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
            );
          }
          return const Center(
            child: Text(
              'Brak danych',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 16,
              ),
            ),
          );
        }),
      ),
    );
  }
}
