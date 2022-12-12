import 'dart:async';

import 'package:dobeld_project/pages/widget/team/appbar.dart';
import 'package:dobeld_project/pages/widget/team/list_team.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

import '../../component/style.dart';
import '../../controller/team_ctrl.dart';

class Team extends StatefulWidget {
  const Team({super.key});

  @override
  State<Team> createState() => _TeamState();
}

class _TeamState extends State<Team> {
  final controller = Get.put(TeamController());
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 7), () {
      setState(() {
        controller.isShimmer = false.obs;
      });
    });
  }

  Future<void> loadData() async {
    setState(() {
      controller.isShimmer = true.obs;
    });
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      controller.isShimmer = false.obs;
    });
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<LiquidPullToRefreshState> _refreshIndicatorKey =
      GlobalKey<LiquidPullToRefreshState>();

  Future<void> _handleRefresh() {
    final Completer<void> completer = Completer<void>();
    Timer(const Duration(seconds: 1), () {
      completer.complete();
      loadData();
    });

    return completer.future.then<void>((_) {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          flexibleSpace: teamAppbar(context),
          automaticallyImplyLeading: false,
          toolbarHeight: hightDevice * 0.073,
          backgroundColor: secondC,
          elevation: 0,
        ),
        body: LiquidPullToRefresh(
          springAnimationDurationInMilliseconds: 500,
          color: Colors.transparent,
          backgroundColor: secondC,
          key: _refreshIndicatorKey,
          onRefresh: _handleRefresh,
          showChildOpacityTransition: false,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [listTeam(context), const SizedBox(height: 20)],
            ),
          ),
        ));
  }
}
