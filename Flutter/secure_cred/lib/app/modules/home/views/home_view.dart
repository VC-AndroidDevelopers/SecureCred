import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:secure_cred/app/data/widget.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _key = GlobalKey();
    final GlobalKey<PopupMenuButtonState> _popup_key = GlobalKey();

    return Obx(
      () => Scaffold(
        //values
        key: _key,
        extendBody: true,
        drawerEdgeDragWidth: 1,
        drawerEnableOpenDragGesture: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        backgroundColor: controller.selectedMenu.value == 5
            ? const Color(0xffF2F2F2)
            : Colors.white,

        //Widgets
        floatingActionButton: Container(
          padding: const EdgeInsets.only(bottom: 35),
          alignment: Alignment.bottomCenter,
          child: FloatingActionButton(
              hoverElevation: 0,
              elevation: 0,
              backgroundColor: Colors.black,
              onPressed: () {
                _popup_key.currentState!.showButtonMenu();
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(90),
              ),
              child: PopupMenuButton(
                  enabled: false,
                  popUpAnimationStyle: AnimationStyle.noAnimation,
                  key: _popup_key,
                  position: PopupMenuPosition.over,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  tooltip: "",
                  offset: const Offset(95, -130),
                  surfaceTintColor: Colors.white,
                  itemBuilder: (context) {
                    return [
                      const PopupMenuItem(
                          child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            radius: 10,
                            child: Icon(
                              Icons.add,
                              size: 15,
                            ),
                          ),
                          SizedBox(width: 15),
                          Text("Add New Password"),
                        ],
                      )),
                      const PopupMenuItem(
                          child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            radius: 10,
                            child: Icon(
                              Icons.add,
                              size: 15,
                            ),
                          ),
                          SizedBox(width: 15),
                          Text("Add New Category"),
                        ],
                      )),
                    ];
                  },
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ))),
        ),
        bottomNavigationBar: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(16),
          height: Get.height / 12,
          decoration: const BoxDecoration(
              color: Color(0xffEBEBEB),
              borderRadius: BorderRadius.all(Radius.circular(45))),
          child: Center(
            child: Container(
                margin: const EdgeInsets.only(right: 10, left: 10),
                child: Obx(
                  () => Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //Home
                          IconButton(
                              onPressed: () {
                                controller.changeSelectedMenu(0);
                              },
                              icon: Icon(
                                controller.selectedMenu.value == 0
                                    ? Icons.home
                                    : Icons.home_outlined,
                                color: controller.selectedMenu.value == 0
                                    ? const Color(0xffB3001E)
                                    : Colors.black,
                              )),
                          const SizedBox(
                            width: 30,
                          ),
                          //Search
                          IconButton(
                              onPressed: () {
                                controller.changeSelectedMenu(1);
                              },
                              icon: Icon(
                                controller.selectedMenu.value == 1
                                    ? Icons.search
                                    : Icons.search_outlined,
                                color: controller.selectedMenu.value == 1
                                    ? const Color(0xffB3001E)
                                    : Colors.black,
                              ))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //Shield
                          IconButton(
                              onPressed: () {
                                controller.changeSelectedMenu(2);
                              },
                              icon: Icon(
                                controller.selectedMenu.value == 2
                                    ? Icons.notifications
                                    : Icons.notifications_outlined,
                                color: controller.selectedMenu.value == 2
                                    ? const Color(0xffB3001E)
                                    : Colors.black,
                              )),
                          const SizedBox(
                            width: 30,
                          ),
                          //Settings
                          IconButton(
                              onPressed: () {
                                controller.changeSelectedMenu(4);
                              },
                              icon: Icon(
                                controller.selectedMenu.value == 4
                                    ? Icons.settings
                                    : Icons.settings_outlined,
                                color: controller.selectedMenu.value == 4
                                    ? const Color(0xffB3001E)
                                    : Colors.black,
                              )),
                        ],
                      ),
                    ],
                  ),
                )),
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Obx(() => controller.selectedMenu.value == 5
              ? const Text("Profile")
              : const SizedBox()),
          leading: Container(
            margin: const EdgeInsets.all(10),
            child: GestureDetector(
              onTap: () {
                _key.currentState!.openDrawer();
              },
              child: Image.asset(
                "./assets/images/miscs/menu.png",
                scale: 2,
              ),
            ),
          ),
          actions: [
            Container(
                margin: const EdgeInsets.only(right: 10),
                child: Obx(
                  () => controller.selectedMenu.value == 5
                      ? IconButton(
                          onPressed: () {}, icon: const Icon(Icons.more_horiz))
                      : GestureDetector(
                          onTap: () {
                            controller.changeSelectedMenu(5);
                          },
                          child: const CircleAvatar(
                            backgroundColor: Color(0xffff4155),
                            radius: 18,
                            child: Icon(
                              Icons.person_2,
                              color: Colors.white,
                            ),
                          ),
                        ),
                )),
          ],
        ),
        drawer: Drawer(
          backgroundColor: const Color(0xffECECEC),
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        dashBoardTitle("SecureCred"),
                        const Text(
                          "sed do eiusmod tempor incididunt",
                          style: TextStyle(fontSize: 9),
                        ),
                      ],
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {
                          _key.currentState!.closeDrawer();
                        },
                        icon: const Icon(Icons.close))
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Divider(),
                const SizedBox(
                  height: 5,
                ),
                dashBoardSubTitle("Menu", Container()),
                const SizedBox(
                  height: 10,
                ),
                for (int index = 0;
                    index < controller.menuTitle.length;
                    index++)
                  Obx(
                    () => listMenu(
                      controller.menuTitle[index],
                      index,
                      controller.selectedMenu.value,
                      controller.menuIcons[index],
                      () {
                        controller.changeSelectedMenu(index);
                        Future.delayed(const Duration(milliseconds: 200))
                            .then((value) => _key.currentState!.closeDrawer());
                      },
                    ),
                  ),
              ],
            ),
          ),
        ),
        body: Obx(
          () => controller.selectedMenu.value == 5
              ? profileView()
              : controller.selectedMenu.value == 4
                  ? Container()
                  : SingleChildScrollView(
                      padding: const EdgeInsets.all(16),
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          dashBoardTitle(controller.selectedMenu.value == 2
                              ? "Notifications"
                              : controller.selectedMenu.value == 4
                                  ? "Settings"
                                  : "Passwords"),
                          SizedBox(
                            height: controller.selectedMenu.value == 2 ? 0 : 15,
                          ),
                          controller.selectedMenu.value == 2
                              ? const SizedBox()
                              : TextField(
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.all(20),
                                    prefixIcon: const Icon(Icons.search),
                                    hintText: "Search",
                                    hintStyle:
                                        TextStyle(color: Colors.grey[600]),
                                    filled: true,
                                    suffixIcon: GestureDetector(
                                      onTap: () {
                                        //Search filter

                                        Get.bottomSheet(
                                          BottomSheet(
                                            backgroundColor:
                                                const Color(0xffffffff),
                                            dragHandleColor: Colors.grey,
                                            shadowColor: Colors.transparent,
                                            dragHandleSize: const Size(100, 10),
                                            constraints: BoxConstraints(
                                                maxHeight: Get.height / 2.3),
                                            showDragHandle: true,
                                            onClosing: () {},
                                            builder: (BuildContext context) {
                                              return Column(
                                                children: [
                                                  Container(
                                                    width: Get.width,
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 7,
                                                            bottom: 7,
                                                            left: 16),
                                                    decoration:
                                                        const BoxDecoration(
                                                      color: Color(0xffF3F3F3),
                                                    ),
                                                    child:
                                                        const Text("SORT BY"),
                                                  ),
                                                  for (int i = 0;
                                                      i <
                                                          controller
                                                              .bottomMenuTitle
                                                              .length;
                                                      i++)
                                                    Obx(
                                                      () => ListTile(
                                                        title: Text(
                                                          controller
                                                              .bottomMenuTitle[i],
                                                        ),
                                                        trailing: Radio<int>(
                                                          fillColor:
                                                              MaterialStateColor
                                                                  .resolveWith(
                                                                      (states) =>
                                                                          Colors
                                                                              .black),
                                                          value: i,
                                                          groupValue: controller
                                                              .selectedBottomMenu
                                                              .value,
                                                          onChanged:
                                                              (int? value) {
                                                            controller
                                                                .changeSelectedBottomMenu(
                                                                    value);
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 16.0,
                                                            right: 16,
                                                            left: 16),
                                                    child: MaterialButton(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              20),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                      onPressed: () {
                                                        Get.back();
                                                      },
                                                      child:
                                                          const Text("Apply"),
                                                      textColor: Colors.white,
                                                      color: Colors.black,
                                                      minWidth: Get.width,
                                                    ),
                                                  )
                                                ],
                                              );
                                            },
                                          ),
                                        );
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        margin: const EdgeInsets.only(
                                            right: 10, top: 5, bottom: 5),
                                        padding: const EdgeInsets.all(5),
                                        child: Image.asset(
                                          "./assets/images/miscs/settings.png",
                                          scale: 2,
                                        ),
                                      ),
                                    ),
                                    fillColor: const Color(0xffF4F4F4),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                          const SizedBox(
                            height: 20,
                          ),

                          //Notification Card
                          controller.selectedMenu.value == 1
                              ? const SizedBox()
                              : Obx(() => controller
                                          .notificationCardList.value !=
                                      null
                                  ? SingleChildScrollView(
                                      scrollDirection:
                                          controller.selectedMenu.value == 2
                                              ? Axis.vertical
                                              : Axis.horizontal,
                                      physics: const BouncingScrollPhysics(),
                                      child: controller.selectedMenu.value != 2
                                          ? Row(
                                              children: [
                                                for (int i = 0;
                                                    i <
                                                        controller
                                                            .notificationCardList
                                                            .value!
                                                            .notification
                                                            .length;
                                                    i++)
                                                  notificationCard(
                                                      controller
                                                          .notificationCardList
                                                          .value
                                                          ?.notification[i]
                                                          .id,
                                                      controller
                                                          .notificationCardList
                                                          .value
                                                          ?.notification[i]
                                                          .title,
                                                      controller
                                                          .notificationCardList
                                                          .value
                                                          ?.notification[i]
                                                          .description,
                                                      controller
                                                          .notificationCardList
                                                          .value
                                                          ?.notification[i]
                                                          .color)
                                              ],
                                            )
                                          : Column(
                                              children: [
                                                for (int i = 0;
                                                    i <
                                                        controller
                                                            .notificationCardList
                                                            .value!
                                                            .notification
                                                            .length;
                                                    i++)
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(5),
                                                    child: notificationCard(
                                                        controller
                                                            .notificationCardList
                                                            .value
                                                            ?.notification[i]
                                                            .id,
                                                        controller
                                                            .notificationCardList
                                                            .value
                                                            ?.notification[i]
                                                            .title,
                                                        controller
                                                            .notificationCardList
                                                            .value
                                                            ?.notification[i]
                                                            .description,
                                                        controller
                                                            .notificationCardList
                                                            .value
                                                            ?.notification[i]
                                                            .color),
                                                  )
                                              ],
                                            ),
                                    )
                                  : passwordIsSafe()),
                          SizedBox(
                            height: controller.selectedMenu.value == 1 ||
                                    controller.selectedMenu.value == 2
                                ? 0
                                : 15,
                          ),

                          //Categories
                          controller.selectedMenu.value == 1 ||
                                  controller.selectedMenu.value == 2
                              ? const SizedBox()
                              : dashBoardSubTitle(
                                  "Categories",
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text("more"),
                                  ),
                                ),
                          SizedBox(
                            height: controller.selectedMenu.value == 1 ||
                                    controller.selectedMenu.value == 2
                                ? 0
                                : 15,
                          ),
                          controller.selectedMenu.value == 1 ||
                                  controller.selectedMenu.value == 2
                              ? const SizedBox()
                              : Obx(
                                  () => controller.categoriesList.value != null
                                      ? SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          physics:
                                              const BouncingScrollPhysics(),
                                          child: Row(
                                            children: [
                                              for (int index = 0;
                                                  index <
                                                      controller
                                                          .categoriesList
                                                          .value!
                                                          .categories
                                                          .length;
                                                  index++)
                                                categoriesCard(() {
                                                  controller.selectCategory(
                                                      index,
                                                      controller
                                                          .categoriesList
                                                          .value!
                                                          .categories[index]
                                                          .title);
                                                },
                                                    controller
                                                        .categoriesList
                                                        .value!
                                                        .categories[index]
                                                        .title,
                                                    controller.selectedCategory
                                                            .value ==
                                                        index)
                                            ],
                                          ),
                                        )
                                      : Container(),
                                ),
                          SizedBox(
                            height: controller.selectedMenu.value == 1 ||
                                    controller.selectedMenu.value == 2
                                ? 0
                                : 15,
                          ),

                          //Passwords
                          controller.selectedMenu.value == 2
                              ? const SizedBox()
                              : Obx(
                                  () => dashBoardSubTitle(
                                    controller.selectedMenu.value != 1
                                        ? controller.passwordTitle()
                                        : "Passwords",
                                    GestureDetector(
                                      onTap: () {
                                        controller.changeListView();
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: const Color(0xffF4F4F4),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        padding: const EdgeInsets.all(3),
                                        child: Row(
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(4),
                                              decoration: !controller
                                                      .isGrid.value
                                                  ? BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5))
                                                  : null,
                                              child: Image.asset(
                                                "./assets/images/miscs/list.png",
                                                scale: 2.5,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Container(
                                              padding: const EdgeInsets.all(4),
                                              decoration: controller
                                                      .isGrid.value
                                                  ? BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5))
                                                  : null,
                                              child: Image.asset(
                                                "./assets/images/miscs/grid.png",
                                                scale: 2.5,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                          const SizedBox(
                            height: 10,
                          ),
                          controller.selectedMenu.value == 2
                              ? const SizedBox()
                              : Obx(
                                  () => !controller.isGrid.value
                                      ? Obx(
                                          () => SizedBox(
                                            child: ListView.builder(
                                              shrinkWrap: true,
                                              physics:
                                                  const BouncingScrollPhysics(),
                                              itemCount: controller
                                                          .showingLength.value >
                                                      25
                                                  ? 25
                                                  : controller
                                                      .showingList.length,
                                              itemBuilder: (context, index) {
                                                String site = controller
                                                    .showingList[index].site;
                                                String date = controller
                                                    .showingList[index].date;
                                                int id = controller
                                                    .showingList[index].id;
                                                String category = controller
                                                    .showingList[index]
                                                    .category;
                                                String url = controller
                                                    .returnImageUrl(site);

                                                return Obx(() {
                                                  if (category ==
                                                      controller
                                                          .category.value) {
                                                    return listItem(
                                                        url, site, date, id);
                                                  } else {
                                                    return Container();
                                                  }
                                                });
                                              },
                                            ),
                                          ),
                                        )
                                      : SizedBox(
                                          child: GridView.builder(
                                            padding: EdgeInsets.zero,
                                            shrinkWrap: true,
                                            physics:
                                                const BouncingScrollPhysics(),
                                            gridDelegate:
                                                const SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 2,
                                                    childAspectRatio: 2.5),
                                            itemCount: controller
                                                        .showingLength.value >
                                                    25
                                                ? 25
                                                : controller.showingList.length,
                                            itemBuilder: ((context, index) {
                                              String site = controller
                                                  .showingList[index].site;
                                              String date = controller
                                                  .showingList[index].date;
                                              int id = controller
                                                  .showingList[index].id;
                                              String category = controller
                                                  .showingList[index].category;
                                              String url = controller
                                                  .returnImageUrl(site);

                                              return Obx(
                                                () => category ==
                                                        controller
                                                            .category.value
                                                    ? gridItem(
                                                        url, site, date, id)
                                                    : Container(),
                                              );
                                            }),
                                          ),
                                        ),
                                ),
                        ],
                      ),
                    ),
        ),
      ),
    );
  }
}
