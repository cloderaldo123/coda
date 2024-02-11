import 'package:coda/app/app.bottomsheets.dart';
import 'package:coda/app/app.dialogs.dart';
import 'package:coda/app/app.locator.dart';
import 'package:coda/services/scrollroute_service.dart';
import 'package:coda/ui/common/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final _scrollRouteService = locator<ScrollrouteService>();

  final scrollController = ScrollController();

  void listenScroll() {
    print('listen Scroll');
    _scrollRouteService.listenScroll();

  }

  get globalKeys => _scrollRouteService.pageGlobalKeys;

  List<String> pageTitles = [
    'Home',
    'About',
    'For Student',
    'Career Guide',
    'Contact'
  ];

  String get counterLabel => 'Counter is: $_counter';

  int _counter = 0;

  void click({required int index}) {
    _scrollRouteService.click(index: index);
  }

  void incrementCounter() {
    _counter++;
    rebuildUi();
  }

  void showDialog() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Stacked Rocks!',
      description: 'Give stacked $_counter stars on Github',
    );
  }

  void showBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
    );
  }
}
