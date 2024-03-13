import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:secure_cred/app/data/widget.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _key = GlobalKey();
    return Scaffold(
      key: _key,
      extendBody: true,
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
                  IconButton(onPressed: () {}, icon: Icon(Icons.close))
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
              for (int index = 0; index < 5; index++)
                Obx(() => listMenu(
                        controller.menuTitle[index],
                        index,
                        controller.selectedMenu.value,
                        controller.menuIcons[index], () {
                      controller.selectedMenu.value = index;
                    }))
            ],
          ),
        ),
      ),
      drawerEdgeDragWidth: 1,
      drawerEnableOpenDragGesture: true,
      floatingActionButton: Container(
        padding: const EdgeInsets.only(bottom: 40),
        alignment: Alignment.bottomCenter,
        child: FloatingActionButton(
            hoverElevation: 0,
            elevation: 0,
            backgroundColor: Colors.black,
            onPressed: () {
              // TODO: Implement functionality
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(90),
            ),
            child: PopupMenuButton(
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.home_outlined,
                        )),
                    const SizedBox(
                      width: 40,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.search_outlined))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.shield_outlined)),
                    const SizedBox(
                      width: 40,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.settings_outlined))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
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
              margin: const EdgeInsets.all(10),
              child: const CircleAvatar(
                backgroundColor: Colors.red,
                radius: 18,
                child: Icon(
                  Icons.person_2,
                  color: Colors.white,
                ),
              ))
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            dashBoardTitle("Password Manager"),
            const SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(20),
                prefixIcon: const Icon(Icons.search),
                hintText: "Search",
                hintStyle: TextStyle(color: Colors.grey[600]),
                filled: true,
                suffixIcon: GestureDetector(
                  onTap: () {
                    //TODO: Implement function here
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    margin: const EdgeInsets.only(right: 10, top: 5, bottom: 5),
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
            Obx(() => controller.notificationCardList.value != null
                ? SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        for (int i = 0;
                            i <
                                controller.notificationCardList.value!
                                    .notification.length;
                            i++)
                          notificationCard(
                              controller.notificationCardList.value
                                  ?.notification[i].id,
                              controller.notificationCardList.value
                                  ?.notification[i].title,
                              controller.notificationCardList.value
                                  ?.notification[i].description,
                              controller.notificationCardList.value
                                  ?.notification[i].color)
                      ],
                    ),
                  )
                : passwordIsSafe()),
            const SizedBox(
              height: 15,
            ),
            dashBoardSubTitle(
              "Categories",
              TextButton(
                onPressed: () {},
                child: const Text("more"),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Obx(
              () => controller.categoriesList.value != null
                  ? SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          for (int index = 0;
                              index <
                                  controller
                                      .categoriesList.value!.categories.length;
                              index++)
                            categoriesCard(() {
                              controller.selectCategory(
                                  index,
                                  controller.categoriesList.value!
                                      .categories[index].title);
                            },
                                controller.categoriesList.value!
                                    .categories[index].title,
                                controller.selectedCategory.value == index)
                        ],
                      ),
                    )
                  : Container(),
            ),
            const SizedBox(
              height: 15,
            ),
            Obx(
              () => dashBoardSubTitle(
                "${controller.showingLength.value < 25 ? controller.showingLength.value : 25} of ${controller.showingLength}  ${controller.category.value} showed",
                GestureDetector(
                  onTap: () {
                    controller.changeView();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffF4F4F4),
                        borderRadius: BorderRadius.circular(5)),
                    padding: const EdgeInsets.all(3),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: !controller.isGrid.value
                              ? BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5))
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
                          decoration: controller.isGrid.value
                              ? BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5))
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
            Obx(
              () => !controller.isGrid.value
                  ? Obx(() => SizedBox(
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          itemCount: controller.showingLength.value > 25
                              ? 25
                              : controller.showingList.length,
                          itemBuilder: (context, index) {
                            String site = controller.showingList[index].site;
                            String date = controller.showingList[index].date;
                            int id = controller.showingList[index].id;
                            String category =
                                controller.showingList[index].category;
                            String url = controller.returnUrl(site);

                            return Obx(() {
                              if (category == controller.category.value) {
                                return listItem(url, site, date, id);
                              } else {
                                return Container();
                              }
                            });
                          },
                        ),
                      ))
                  : SizedBox(
                      child: GridView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2, childAspectRatio: 2.5),
                        itemCount: controller.showingLength.value > 25
                            ? 25
                            : controller.showingList.length,
                        itemBuilder: ((context, index) {
                          String site = controller.showingList[index].site;
                          String date = controller.showingList[index].date;
                          int id = controller.showingList[index].id;
                          String category =
                              controller.showingList[index].category;
                          String url = controller.returnUrl(site);

                          return Obx(() => category == controller.category.value
                              ? gridItem(url, site, date, id)
                              : Container());
                        }),
                      ),
                    ),
            )
          ],
        ),
      ),
    );
  }
}
