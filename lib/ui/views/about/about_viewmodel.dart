import 'package:coda/services/scrollroute_service.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../app/app.locator.dart';

class AboutViewModel extends BaseViewModel {
  final _scrollRouteService = locator<ScrollrouteService>();

  ScrollController get scrollController => _scrollRouteService.scrollController;
  List<GlobalKey> get globalKeys => _scrollRouteService.pageGlobalKeys;

  void click({required int index}) {
    _scrollRouteService.click(index: index);
  }
}
