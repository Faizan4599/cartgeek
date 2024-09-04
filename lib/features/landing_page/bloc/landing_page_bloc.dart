import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cartgeek/constant/api_urls.dart';
import 'package:cartgeek/constant/constant.dart';
import 'package:cartgeek/features/landing_page/model/current_booking_list_data_model.dart';
import 'package:cartgeek/features/landing_page/model/packages_list_data_model.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
part 'landing_page_event.dart';
part 'landing_page_state.dart';

class LandingPageBloc extends Bloc<LandingPageEvent, LandingPageState> {
  LandingPageBloc() : super(LandingPageInitial()) {
    on<LandingLoadDataEvent>(landingLoadDataEvent);
    on<LandingPackageListDataEvent>(landingPackageListDataEvent);
    on<LandingCurrentBookingListDataEvent>(landingCurrentBookingListDataEvent);
  }

  FutureOr<void> landingLoadDataEvent(
      LandingLoadDataEvent event, Emitter<LandingPageState> emit) {
    add(LandingPackageListDataEvent());
    add(LandingCurrentBookingListDataEvent());
  }

  Future<void> landingPackageListDataEvent(
      LandingPackageListDataEvent event, Emitter<LandingPageState> emit) async {
    emit(LandingPageLoadingState());

    try {
      final response = await http
          .get(Uri.parse(Constant.mainBaseUrl + ApiUrls.packages_list));
      if (response.statusCode == 200) {
        final data = packagesListModelFromJson(response.body);
        print("Package List Message ${data.message}");
        emit(LandingPackageListSuccessState(data));
      } else {
        emit(LandingPageErrorState());
      }
    } catch (e) {
      print("Error ${e.toString()}");
      emit(LandingPageErrorState());
    }
  }

  Future<void> landingCurrentBookingListDataEvent(
      LandingCurrentBookingListDataEvent event,
      Emitter<LandingPageState> emit) async {
    emit(LandingPageLoadingState());
    try {
      final response = await http
          .get(Uri.parse(Constant.mainBaseUrl + ApiUrls.current_booking_list));
      if (response.statusCode == 200) {
        final data = currentBookingListModelFromJson(response.body);
        print("Current Bokking List Message ${data.message}");
        emit(LandingCurrentBookingListSuccessState(data));
      } else {
        emit(LandingPageErrorState());
      }
    } catch (e) {
      print("Error ${e.toString()}");
      emit(LandingPageErrorState());
    }
  }
}
