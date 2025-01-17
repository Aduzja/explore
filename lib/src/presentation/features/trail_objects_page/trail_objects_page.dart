import 'package:explore/src/application/constants/app_colors.dart';
import 'package:explore/src/application/cubit/root_cubit.dart';
import 'package:explore/src/presentation/features/place_details_page/place_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

class TrailObjectsPage extends StatefulWidget {
  const TrailObjectsPage({super.key});

  @override
  _TrailObjectsPageState createState() => _TrailObjectsPageState();
}

class _TrailObjectsPageState extends State<TrailObjectsPage> with SingleTickerProviderStateMixin {
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
        color: AppColors.backgroundGrey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Text(
                'Szlak Zabytków Techniki',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                ),
              ),
            ),
            TabBar(
              controller: _tabController,
              indicatorColor: AppColors.darkBlue,
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: AppColors.darkGrey,
              unselectedLabelColor: AppColors.darkGrey.withOpacity(0.5),
              labelStyle: GoogleFonts.roboto(
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
              tabs: const [
                Tab(text: 'Lista'),
                Tab(text: 'Mapy'),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
                    child: BlocBuilder<RootCubit, RootState>(
                      builder: (context, state) {
                        if (state.isLoading) {
                          return Center(child: CircularProgressIndicator());
                        } else if (state.errorMessage.isNotEmpty) {
                          return Center(child: Text('Error: ${state.errorMessage}'));
                        } else if (state.selectedTrailItems.isNotEmpty) {
                          return SingleChildScrollView(
                            child: StaggeredGrid.count(
                              crossAxisCount: 2,
                              mainAxisSpacing: 8,
                              crossAxisSpacing: 8,
                              children: state.selectedTrailItems.map((item) {
                                final index = state.selectedTrailItems.indexOf(item);

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
                                                  'O szlaku',
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
                                        onTap: index == 2
                                            ? () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) => PlaceDetailsPage(item: item),
                                                  ),
                                                );
                                              }
                                            : null,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(12),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                index == 1
                                                    ? 'assets/images/huta.jpeg'
                                                    : index == 2
                                                        ? 'assets/images/fabryka.jpeg'
                                                        : index == 3
                                                            ? 'assets/images/szyb.jpeg'
                                                            : index == 4
                                                                ? 'assets/images/koleje.jpeg'
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
                                                  height: 65,
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
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Column(
                                                          mainAxisAlignment: MainAxisAlignment.end,
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                            Flexible(
                                                              child: Text(
                                                                state.selectedTrailItems.elementAt(index).name.length >
                                                                        12
                                                                    ? '${state.selectedTrailItems.elementAt(index).name.substring(0, 12)}...'
                                                                    : state.selectedTrailItems.elementAt(index).name,
                                                                style: GoogleFonts.roboto(
                                                                  color: AppColors.white,
                                                                  fontWeight: FontWeight.w700,
                                                                  fontSize: 14,
                                                                ),
                                                                maxLines: 2,
                                                                softWrap: true,
                                                                overflow: TextOverflow.ellipsis,
                                                              ),
                                                            ),
                                                            Text(
                                                              state.selectedTrailItems
                                                                  .elementAt(index)
                                                                  .location
                                                                  .toUpperCase(),
                                                              style: GoogleFonts.roboto(
                                                                color: AppColors.white,
                                                                fontWeight: FontWeight.w500,
                                                                fontSize: 10,
                                                              ),
                                                            ),
                                                            Text(
                                                              'czas zwiedzania: ${state.selectedTrailItems.elementAt(index).estimatedVisitDuration}',
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
                              }).toList(),
                            ),
                          );
                        } else {
                          return Center(child: Text('No data available'));
                        }
                      },
                    ),
                  ),
                  Container(
                    color: Colors.grey,
                    child: Center(
                      child: Text('Mapa Szlaku $widget.trailIndex'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
