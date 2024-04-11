import 'package:assignment_task/controller/homescreen_controller.dart';
import 'package:assignment_task/model/menu_model.dart';
import 'package:assignment_task/widgets/c_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomepageScreen extends StatelessWidget {
  HomepageScreen({Key? key}) : super(key: key);

  final HomescreenController controller = Get.put(HomescreenController());

  @override
  Widget build(BuildContext context) {
    double sH = MediaQuery.of(context).size.height;
    double sW = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/images/bg1.png",
                  width: double.infinity,
                ),
                Positioned(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50, left: 15),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      width: 40,
                      height: 40,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: sH * 0.22,
                      left: 15,
                      right: 15,
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(color: Colors.black, spreadRadius: 0.2),
                        ],
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      width: double.infinity,
                      height: 110,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/reslogo.png",
                                width: 50,
                                height: 50,
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                "Hardee's",
                                style: TextStyle(
                                  fontFamily: "Evolventa",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                ),
                              ),
                              const Expanded(child: SizedBox()),
                              const Icon(
                                Icons.star_border,
                                color: Colors.redAccent,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Text(
                                  "4.9",
                                  style: TextStyle(
                                    fontFamily: "Evolventa",
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              const Text(
                                "(56+)",
                                style: TextStyle(
                                  fontFamily: "Evolventa",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "4.5 km away",
                                style: TextStyle(
                                  fontFamily: "Evolventa",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "Pickup in 15 mins",
                                style: TextStyle(
                                  color: Colors.redAccent,
                                  fontFamily: "Evolventa",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            TabBar(
              controller: controller.menutabController,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.redAccent,
              labelColor: Colors.redAccent,
              unselectedLabelColor: Colors.grey,
              tabs: const [
                Ctext(
                    text: "Menu",
                    textcolor: Colors.black,
                    fontWeight: FontWeight.w400),
                Text(
                  "Reviews",
                  style: TextStyle(
                    fontFamily: "Evolventa",
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: sH / 2,
              child: TabBarView(
                controller: controller.menutabController,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              "Popular Right Now",
                              style: TextStyle(
                                fontFamily: "Evolventa",
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: GridView.count(
                          crossAxisCount: 2,
                          children: List.generate(4, (index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "assets/images/f1.png",
                                    height: 120,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    "Club Sandwich",
                                    style: TextStyle(
                                      fontFamily: "Evolventa",
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    "from 33 QAR",
                                    style: TextStyle(
                                      fontFamily: "Evolventa",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                  const Text("Reviews"),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  color: const Color.fromRGBO(255, 219, 216, 1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Whats other say",
                            style: TextStyle(
                              fontFamily: "Evolventa",
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 150,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              width: sW * .7,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      "Lorem ipsum dolor sit amet consec tetur rirDui pretium massa quisque viverra feus giat interdum sagittis. Male suada pha retra praesent et sollicitudin."),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Rashid Makhdoom",
                                    style: TextStyle(
                                      fontFamily: "Evolventa",
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              width: sW * .7,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      "Lorem ipsum dolor sit amet consec tetur rirDui pretium massa quisque viverra feus giat interdum sagittis. Male suada pha retra praesent et sollicitudin."),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Rashid Makhdoom",
                                    style: TextStyle(
                                      fontFamily: "Evolventa",
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Complete Menu",
                    style: TextStyle(
                      fontFamily: "Evolventa",
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ),
                TabBar(
                    dividerColor: Colors.transparent,
                    indicatorColor: Colors.transparent,
                    isScrollable: true,
                    tabAlignment: TabAlignment.start,
                    controller: controller.cattabController,
                    tabs: List.generate(5, (index) {
                      return Container(
                        width: 80,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromRGBO(255, 219, 216, 1)),
                        child: const Center(
                            child: Text(
                          "Burger",
                        )),
                      );
                    })),
                // SizedBox(
                //     width: double.infinity,
                //     height: 50,
                //     child: ListView.builder(
                //         itemCount: 5,
                //         scrollDirection: Axis.horizontal,
                //         itemBuilder: (_, i) {
                //           return Container(
                //             width: 80,
                //             margin: const EdgeInsets.all(10),
                //             decoration: BoxDecoration(
                //                 borderRadius: BorderRadius.circular(20),
                //                 color: const Color.fromRGBO(255, 219, 216, 1)),
                //             child: const Center(
                //                 child: Text(
                //               "Burger",
                //             )),
                //           );
                //         })),
                SizedBox(
                    width: double.infinity,
                    height: sH / 1.4,
                    child: Obx(() {
                      if (controller.menudata.isEmpty) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else {
                        return ListView.builder(
                            itemCount: 5,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (_, i) {
                              Meal meal = controller.menudata[i];

                              return Container(
                                // width: 80,
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                    child: Row(
                                  children: [
                                    SizedBox(
                                      width: sW * 0.6,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            meal.name,
                                            style: const TextStyle(
                                              fontFamily: "Evolventa",
                                              fontWeight: FontWeight.w700,
                                              fontSize: 18,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            meal.category,
                                            style: const TextStyle(
                                              fontFamily: "Evolventa",
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                            ),
                                          ),
                                          Text(
                                            meal.area,
                                            style: const TextStyle(
                                              fontFamily: "Evolventa",
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Expanded(child: SizedBox()),
                                    Image.network(
                                      meal.thumbnailUrl,
                                      width: 100,
                                      height: 100,
                                    )
                                  ],
                                )),
                              );
                            });
                      }
                    }))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
