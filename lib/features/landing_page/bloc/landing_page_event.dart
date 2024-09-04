part of 'landing_page_bloc.dart';

@immutable
abstract class LandingPageEvent {}

class LandingLoadDataEvent extends LandingPageEvent {}

class LandingPackageListDataEvent extends LandingPageEvent {}

class LandingCurrentBookingListDataEvent extends LandingPageEvent {}
