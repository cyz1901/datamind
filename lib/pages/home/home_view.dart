import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/pagers.dart';
import 'home_logic.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.find<HomeLogic>();
    final state = Get.find<HomeLogic>().state;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: double.infinity,
                  decoration: BoxDecoration(border: Border(right: BorderSide(width: 0.5))),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 24, top: 21, bottom: 53),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 6.6,
                            ),
                            // SvgPicture.asset(
                            //   'assets/logo_text.svg',
                            //   // width: 30,
                            //   // height: 30,
                            //   // color: AppColor.FFE0E3EA,
                            // ),
                          ],
                        ),
                      ),
                      // Expanded(
                      //   child: ListView.builder(
                      //     itemCount: 3,
                      //     // physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                      //     itemBuilder: (BuildContext context, int index) {
                      //       return getButtonList()[index];
                      //     },
                      //   ),
                      // )
                    ],
                  ),
                ),
                Expanded(
                    child: Column(
                  children: [
                    Container(
                      height: 72,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Color(0xFFe8eaed).withOpacity(0.1),
                          offset: const Offset(0, 1),
                        )
                      ]),
                    ),
                    // Expanded(
                    //   child: GetRouterOutlet.builder(
                    //     routerDelegate: Get.nestedKey(Pagers.homePage),
                    //     builder: (BuildContext context) {
                    //       return Scaffold(
                    //         // backgroundColor: AppColor.BLACK,
                    //         body: GetRouterOutlet(
                    //           // initialRoute: Pagers.vpnPage,
                    //           anchorRoute: Pagers.homePage,
                    //         ),
                    //       );
                    //     },
                    //   ),
                    // )
                  ],
                ))
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 20,
            color: Colors.purple,
          )
        ],
      ),
    );
  }
}
