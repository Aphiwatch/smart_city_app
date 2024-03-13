import 'package:flutter/material.dart';

class MapsScreen extends StatefulWidget {
  const MapsScreen({super.key});

  @override
  State<MapsScreen> createState() => _MapsScreenState();
}

class _MapsScreenState extends State<MapsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const Row(
              children: [Text('แผนที่', style: TextStyle(fontSize: 28))],
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 5,
                      offset: const Offset(0, 8),
                    )
                  ]),
              margin: const EdgeInsets.symmetric(vertical: 10),
              height: 60,
              width: 380,
              child: Container(
                  alignment: Alignment.center,
                  child: const Text(
                    "เชียงเครือ สกลนคร ประเทศไทย",
                    style: TextStyle(fontSize: 20),
                  )),
            ),
            SizedBox(
              width: 380,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 5,
                            offset: const Offset(0, 8),
                          )
                        ]),
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    height: 60,
                    width: 120,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("All Device"),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: const Color(0xff3559E0),
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            const SizedBox(width: 10),
                            const Text("100"),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 5,
                            offset: const Offset(0, 8),
                          )
                        ]),
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    height: 60,
                    width: 120,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Active Device"),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: const Color(0xff68E149),
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            const SizedBox(width: 10),
                            const Text("77"),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 5,
                        offset: const Offset(0, 8),
                      )
                    ]),
                margin: const EdgeInsets.symmetric(vertical: 10),
                height: 60,
                width: 120,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Inactive Device"),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              color: const Color(0xffE14949),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        const SizedBox(width: 10),
                        const Text("23"),
                      ],
                    )
                  ],
                ),
              ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
