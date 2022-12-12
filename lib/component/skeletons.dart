import 'package:dobeld_project/component/style.dart';
import 'package:dobeld_project/controller/home_ctrl.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skeletons/skeletons.dart';

Widget projectSkeletons(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: Container(
      padding: const EdgeInsets.all(15),
      height: hightDevice * 0.15,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade300, offset: Offset.zero, blurRadius: 5)
          ]),
      child: Row(
        children: [
          Expanded(
              flex: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SkeletonLine(
                    style: SkeletonLineStyle(
                        height: 12,
                        width: widthDevice * 0.35,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  const SizedBox(height: 5),
                  SkeletonLine(
                    style: SkeletonLineStyle(
                        height: 10,
                        width: widthDevice * 0.25,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SkeletonLine(
                              style: SkeletonLineStyle(
                                  height: 10,
                                  width: widthDevice * 0.15,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                const SkeletonAvatar(
                                  style: SkeletonAvatarStyle(
                                      height: 17, width: 17),
                                ),
                                const SizedBox(width: 5),
                                SkeletonLine(
                                  style: SkeletonLineStyle(
                                      height: 10,
                                      width: widthDevice * 0.2,
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 15),
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SkeletonLine(
                              style: SkeletonLineStyle(
                                  height: 10,
                                  width: widthDevice * 0.15,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                const SkeletonAvatar(
                                  style: SkeletonAvatarStyle(
                                      height: 17, width: 17),
                                ),
                                const SizedBox(width: 5),
                                SkeletonLine(
                                  style: SkeletonLineStyle(
                                      height: 10,
                                      width: widthDevice * 0.2,
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              )),
          const Expanded(
              flex: 2,
              child: SkeletonAvatar(
                style: SkeletonAvatarStyle(
                    height: 70, width: 70, shape: BoxShape.circle),
              ))
        ],
      ),
    ),
  );
}

Widget homeSkeleton(BuildContext context) {
  return Column(
    children: [
      homeAppBarSkeleton(context),
      dashboardSkeleton(context),
      listProjectSkeleton(context)
    ],
  );
}

Widget homeAppBarSkeleton(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: Row(
                children: [
                  const SkeletonAvatar(
                    style: SkeletonAvatarStyle(
                        height: 45, width: 45, shape: BoxShape.circle),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SkeletonLine(
                        style: SkeletonLineStyle(
                            height: 10,
                            width: widthDevice * 0.07,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      const SizedBox(height: 5),
                      SkeletonLine(
                        style: SkeletonLineStyle(
                            height: 12,
                            width: widthDevice * 0.15,
                            borderRadius: BorderRadius.circular(20)),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SkeletonAvatar(
              style: SkeletonAvatarStyle(height: 25, width: 25),
            )
          ],
        ),
        const SizedBox(height: 15),
        SkeletonLine(
          style: SkeletonLineStyle(
              height: 40,
              width: double.infinity,
              borderRadius: BorderRadius.circular(20)),
        )
      ],
    ),
  );
}

Widget dashboardSkeleton(BuildContext context) {
  final controller = Get.put(HomeController());
  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
    child: SizedBox(
      height: hightDevice * 0.22,
      width: double.infinity,
      child: ListView.builder(
          itemCount: controller.dashboard.length,
          scrollDirection: Axis.horizontal,
          physics: const ScrollPhysics(),
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Container(
                  height: hightDevice * 0.22,
                  width: widthDevice * 0.45,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade300,
                            offset: Offset.zero,
                            blurRadius: 5)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SkeletonAvatar(
                          style: SkeletonAvatarStyle(height: 30, width: 30),
                        ),
                        const SizedBox(height: 50),
                        SkeletonLine(
                          style: SkeletonLineStyle(
                              height: 22,
                              width: widthDevice * 0.12,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        const SizedBox(height: 15),
                        SkeletonLine(
                          style: SkeletonLineStyle(
                              height: 18,
                              width: widthDevice * 0.35,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ],
                    ),
                  ),
                ));
          }),
    ),
  );
}

Widget listProjectSkeleton(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 15),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SkeletonLine(
              style: SkeletonLineStyle(
                  height: 20,
                  width: widthDevice * 0.25,
                  borderRadius: BorderRadius.circular(20)),
            ),
            SkeletonLine(
              style: SkeletonLineStyle(
                  height: 14,
                  width: widthDevice * 0.15,
                  borderRadius: BorderRadius.circular(20)),
            ),
          ],
        ),
        const SizedBox(height: 15),
        Column(
          verticalDirection: VerticalDirection.down,
          mainAxisSize: MainAxisSize.min,
          children: [
            MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: ListView.builder(
                    padding: const EdgeInsets.only(bottom: 30),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return projectSkeletons(context);
                    }))
          ],
        )
      ],
    ),
  );
}

Widget teamSkeleton(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10, right: 15, left: 15),
    child: Container(
      padding: const EdgeInsets.all(15),
      height: hightDevice * 0.1,
      width: double.infinity,
      decoration: BoxDecoration(
          color: whiteC,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade300, offset: Offset.zero, blurRadius: 5)
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Row(
              children: [
                SkeletonAvatar(
                  style: SkeletonAvatarStyle(
                      height: hightDevice * 0.15,
                      width: widthDevice * 0.15,
                      shape: BoxShape.circle),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SkeletonLine(
                      style: SkeletonLineStyle(
                          height: 14,
                          width: widthDevice * 0.25,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    const SizedBox(height: 10),
                    SkeletonLine(
                      style: SkeletonLineStyle(
                          height: 10,
                          width: widthDevice * 0.35,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ],
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SkeletonAvatar(
                style: SkeletonAvatarStyle(height: 15, width: 15),
              ),
              const SizedBox(width: 10),
              SkeletonLine(
                style: SkeletonLineStyle(
                    height: 10,
                    width: widthDevice * 0.15,
                    borderRadius: BorderRadius.circular(20)),
              ),
            ],
          )
        ],
      ),
    ),
  );
}

Widget clientSkeleton(BuildContext context) {
  return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
      child: Container(
        padding: const EdgeInsets.all(15),
        height: hightDevice * 0.12,
        width: double.infinity,
        decoration: BoxDecoration(
            color: whiteC,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade300,
                  offset: Offset.zero,
                  blurRadius: 5)
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SkeletonAvatar(
                    style: SkeletonAvatarStyle(
                        height: hightDevice * 0.17,
                        width: widthDevice * 0.17,
                        shape: BoxShape.circle),
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SkeletonLine(
                        style: SkeletonLineStyle(
                            height: 12,
                            width: widthDevice * 0.25,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      const SizedBox(height: 7),
                      SkeletonLine(
                        style: SkeletonLineStyle(
                            height: 10,
                            width: widthDevice * 0.35,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          SizedBox(
                            child: Row(
                              children: [
                                const SkeletonAvatar(
                                  style: SkeletonAvatarStyle(
                                      height: 12, width: 12),
                                ),
                                const SizedBox(width: 5),
                                SkeletonLine(
                                  style: SkeletonLineStyle(
                                      height: 10,
                                      width: widthDevice * 0.22,
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),
                          SizedBox(
                            child: Row(
                              children: [
                                const SkeletonAvatar(
                                  style: SkeletonAvatarStyle(
                                      height: 15, width: 15),
                                ),
                                const SizedBox(width: 5),
                                SkeletonLine(
                                  style: SkeletonLineStyle(
                                      height: 10,
                                      width: widthDevice * 0.22,
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ));
}
