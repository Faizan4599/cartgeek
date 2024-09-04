import 'package:cartgeek/constant/common_colors.dart';
import 'package:cartgeek/constant/constant.dart';
import 'package:cartgeek/features/landing_page/bloc/landing_page_bloc.dart';
import 'package:cartgeek/mixins/mixins.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LandingPageUi extends StatelessWidget with widgets {
  LandingPageUi({super.key}) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        _landingPageBloc.add(LandingLoadDataEvent());
      },
    );
  }
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final _landingPageBloc = LandingPageBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.60,
          child: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                      left: 5.0, right: 15.0, top: 40, bottom: 40),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: CommonColors.primary,
                        child: CircleAvatar(
                          // backgroundColor: CommonColors.primary,
                          radius: 48,
                          backgroundImage:
                              AssetImage('assets/images/usericon2.jpg'),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Emily Cyrus',
                        style: TextStyle(
                            fontSize: 24, color: CommonColors.primary),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  title: const Text('Home'),
                  onTap: () {
                    // Handle item tap
                    Navigator.pop(context);
                  },
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Divider(
                    color: CommonColors.primary,
                    thickness: 0.5,
                  ),
                ),
                ListTile(
                  title: const Text('Book A Nanny'),
                  onTap: () {
                    // Handle item tap
                  },
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Divider(
                    color: CommonColors.primary,
                    thickness: 0.5,
                  ),
                ),
                ListTile(
                  title: const Text('How it Works'),
                  onTap: () {
                    // Handle item tap
                  },
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Divider(
                    color: CommonColors.primary,
                    thickness: 0.5,
                  ),
                ),
                ListTile(
                  title: const Text('Why Nanny Vanny'),
                  onTap: () {
                    // Handle item tap
                  },
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Divider(
                    color: CommonColors.primary,
                    thickness: 0.5,
                  ),
                ),
                ListTile(
                  title: const Text('My Bookings'),
                  onTap: () {
                    // Handle item tap
                  },
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Divider(
                    color: CommonColors.primary,
                    thickness: 0.5,
                  ),
                ),
                ListTile(
                  title: const Text('My Profile'),
                  onTap: () {
                    // Handle item tap
                  },
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Divider(
                    color: CommonColors.primary,
                    thickness: 0.5,
                  ),
                ),
                ListTile(
                  title: const Text('Support'),
                  onTap: () {
                    // Handle item tap
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(''),
        actions: [
          IconButton(
            onPressed: () {
              _scaffoldKey.currentState?.openDrawer();
            },
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 9.0, right: 9.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              userNameImageInfo('assets/images/usericon2.jpg', 'Emily Cyrus'),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 170,
                width: Constant.screenWidth(context),
                decoration: BoxDecoration(
                  color: CommonColors.primary,
                  borderRadius: BorderRadiusDirectional.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Nanny And \nBabysitting Services",
                        style: TextStyle(
                          fontSize: 18,
                          color: CommonColors.secondary,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      circularBtn(const SizedBox(),
                          title: "Book Now",
                          onTap: () {},
                          containerColor: CommonColors.secondary,
                          width: 100)
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Your Current Booking",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: CommonColors.secondary,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    // height: 170,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BlocBuilder<LandingPageBloc, LandingPageState>(
                                bloc: _landingPageBloc,
                                buildWhen: (previous, current) =>
                                    current
                                        is LandingCurrentBookingListSuccessState ||
                                    current is LandingPageErrorState,
                                builder: (context, state) {
                                  return Text(
                                    state is LandingCurrentBookingListSuccessState
                                        ? state.currentBookingListModel.response
                                            .first.title
                                        : "NA",
                                    style: const TextStyle(
                                        color: CommonColors.primary,
                                        fontWeight: FontWeight.bold),
                                  );
                                },
                              ),
                              circularBtn(const SizedBox(),
                                  title: "Start",
                                  onTap: () {},
                                  containerColor: CommonColors.primary,
                                  width: 70)
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "From",
                                    style: TextStyle(fontSize: 11),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.calendar_month_outlined,
                                        color: CommonColors.primary,
                                        size: 20,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      BlocBuilder<LandingPageBloc,
                                          LandingPageState>(
                                        bloc: _landingPageBloc,
                                        buildWhen: (previous, current) =>
                                            current
                                                is LandingCurrentBookingListSuccessState ||
                                            current is LandingPageErrorState,
                                        builder: (context, state) {
                                          return Text(state
                                                  is LandingCurrentBookingListSuccessState
                                              ? state.currentBookingListModel
                                                  .response.first.fromDate
                                              : "--.--.----");
                                        },
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.access_time,
                                        color: CommonColors.primary,
                                        size: 20,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      BlocBuilder<LandingPageBloc,
                                          LandingPageState>(
                                        bloc: _landingPageBloc,
                                        buildWhen: (previous, current) =>
                                            current
                                                is LandingCurrentBookingListSuccessState ||
                                            current is LandingPageErrorState,
                                        builder: (context, state) {
                                          return Text(state
                                                  is LandingCurrentBookingListSuccessState
                                              ? state.currentBookingListModel
                                                  .response.first.fromTime
                                              : "00 --");
                                        },
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "To",
                                    style: TextStyle(fontSize: 11),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.date_range_outlined,
                                        color: CommonColors.primary,
                                        size: 20,
                                      ),
                                      const SizedBox(
                                        height: 5,
                                        width: 5,
                                      ),
                                      BlocBuilder<LandingPageBloc,
                                          LandingPageState>(
                                        bloc: _landingPageBloc,
                                        buildWhen: (previous, current) =>
                                            current
                                                is LandingCurrentBookingListSuccessState ||
                                            current is LandingPageErrorState,
                                        builder: (context, state) {
                                          return Text(state
                                                  is LandingCurrentBookingListSuccessState
                                              ? state.currentBookingListModel
                                                  .response.first.toDate
                                              : "--.--.----");
                                        },
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.access_time,
                                        color: CommonColors.primary,
                                        size: 20,
                                      ),
                                      const SizedBox(
                                        height: 5,
                                        width: 5,
                                      ),
                                      BlocBuilder<LandingPageBloc,
                                          LandingPageState>(
                                        bloc: _landingPageBloc,
                                        buildWhen: (previous, current) =>
                                            current
                                                is LandingCurrentBookingListSuccessState ||
                                            current is LandingPageErrorState,
                                        builder: (context, state) {
                                          return Text(state
                                                  is LandingCurrentBookingListSuccessState
                                              ? state.currentBookingListModel
                                                  .response.first.toTime
                                              : "00 --");
                                        },
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              circularBtn(
                                  const Icon(
                                    Icons.star_border_outlined,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                  title: "Rate Us",
                                  onTap: () {},
                                  containerColor: CommonColors.primary,
                                  width: 80),
                              circularBtn(
                                  const Icon(
                                    Icons.location_on_outlined,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                  title: "Geolocation",
                                  onTap: () {},
                                  containerColor: CommonColors.primary,
                                  width: 100),
                              circularBtn(
                                  const Icon(
                                    Icons.mic_none,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                  title: "Survillence",
                                  onTap: () {},
                                  containerColor: CommonColors.primary,
                                  width: 90)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Packages",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: CommonColors.secondary,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      BlocBuilder<LandingPageBloc, LandingPageState>(
                        bloc: _landingPageBloc,
                        buildWhen: (previous, current) =>
                            current is LandingPackageListSuccessState ||
                            current is LandingPageErrorState,
                        builder: (context, state) {
                          if (state is LandingPackageListSuccessState) {
                            return ListView.builder(
                              // physics: ScrollPhysics(),
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount:
                                  state.packagesListModel.response.length,
                              itemBuilder: (BuildContext context, int index) {
                                final response =
                                    state.packagesListModel.response[index];
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    // height: 130,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.2),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: const Offset(0,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Icon(
                                                Icons.calendar_month_outlined,
                                                color: CommonColors.primary,
                                                size: 30,
                                              ),
                                              circularBtn(const SizedBox(),
                                                  title: "Book Now",
                                                  onTap: () {},
                                                  containerColor:
                                                      CommonColors.primary,
                                                  width: 80)
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                response.title,
                                                style: const TextStyle(
                                                    color: CommonColors.primary,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                "\u{20B9} ${response.price}",
                                                style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color:
                                                        CommonColors.secondary),
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Text(response.desc)
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          } else {
                            return const SizedBox();
                          }
                        },
                      ),
                    ],
                  ),
                ],
              )
              // Text("Your Current Booking",style: TextStyle(),)
            ],
          ),
        ),
      ),
    );
  }
}
