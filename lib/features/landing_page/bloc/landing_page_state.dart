part of 'landing_page_bloc.dart';

@immutable
abstract class LandingPageState {}

abstract class LandingPageActionState extends LandingPageState {}

class LandingPageInitial extends LandingPageState {}

class LandingPageLoadingState extends LandingPageState {}

class LandingPageErrorState extends LandingPageState {}

class LandingPageSuccessState extends LandingPageState {}

class LandingPackageListSuccessState extends LandingPageState {
  final PackagesListModel packagesListModel;
  LandingPackageListSuccessState(this.packagesListModel);
}

class LandingCurrentBookingListSuccessState extends LandingPageState {
  final CurrentBookingListModel currentBookingListModel;
  LandingCurrentBookingListSuccessState(this.currentBookingListModel);
}

class LandingPageNavigateToState extends LandingPageActionState {}
