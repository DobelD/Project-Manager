import 'dart:async';

import 'package:dobeld_project/controller/client_ctrl.dart';
import 'package:dobeld_project/pages/widget/client/appbar.dart';
import 'package:dobeld_project/pages/widget/client/list_client.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

import '../../../component/style.dart';

class Client extends StatefulWidget {
  const Client({super.key});

  @override
  State<Client> createState() => _ClientState();
}

class _ClientState extends State<Client> {
  final controller = Get.put(ClientController());
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
          flexibleSpace: clientAppbar(context),
          automaticallyImplyLeading: false,
          toolbarHeight: hightDevice * 0.09,
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
                children: [const SizedBox(height: 15), listClient(context)],
              ),
            )));
  }
}
