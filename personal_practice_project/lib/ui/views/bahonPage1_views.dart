import 'package:flutter/material.dart';
import 'package:test_arc/ui/views/searched_pet_views.dart';

import '../../core/models/bahon_button_reusable_view_models.dart';
import 'bahonPage2_views.dart';

// // shape: BoxShape.circle,
class BahonPage1 extends StatefulWidget {
  const BahonPage1({super.key});

  @override
  State<BahonPage1> createState() => _TestPageState();
}

class _TestPageState extends State<BahonPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(''),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                const Icon(Icons.fire_truck),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     Navigator.pushNamed(
                    //         context, RouteNavigation.PetMainPage()));
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PetMainPage(),
                        ));
                  },
                  child: const CircleAvatar(
                    radius: 25.0,
                    backgroundColor: Colors.green,
                    child: Icon(Icons.verified_user),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Page2(),
                        ));
                  },
                  child: const CircleAvatar(
                    radius: 25.0,
                    backgroundColor: Colors.green,
                    child: Icon(Icons.man),
                  ),
                ),
              ],
            ),
            const Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      'Welcome',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Md Shahriar Hossain',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.green),
                    ),
                  ],
                ),
              ],
            ),
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.topCenter,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 100,
                  width: 360,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'জরুরি বিজ্ঞপ্তি',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'কাহবভকশাবভহকবভাকশদব্বভ্লহক্সদবভক্লাশদবভ্লহসভবসদ্ভবকজদবভকবসদ্ভকজবক্সাদজবভক্সজদবভ্লখাবস্লিভুয়াস্লিভব্লিসবভ্লিশভব্লিব',
                          style: TextStyle(fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -7,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    color: Colors.white,
                    child: const Text(
                      'Notice',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        height: 1,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                SizedBox(
                  width: 180,
                  height: 130,
                  child: Card(
                    color: Colors.white,
                    // shadowColor: Colors.white,
                    elevation: 4,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '08',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                          Text('My Store'),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 180,
                  height: 130,
                  child: Card(
                    color: Colors.white,
                    // shadowColor: Colors.white,
                    elevation: 4,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '0.0',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                          Text('My Earning'),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            // ListView.builder(
            //   scrollDirection: Axis.vertical,
            //   itemCount: 1,
            //   itemBuilder: (BuildContext context, int index) {
            //     return const ButtonReusable();
            //   },
            // ),

            const Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // ElevatedButton(
                    //   onPressed: () {},
                    //   style: ElevatedButton.styleFrom(
                    //     padding: EdgeInsets.zero,
                    //
                    //   ),
                    //   child: Text('Hello'),
                    // ),
                    ButtonReusable(
                      companyName: 'SHU 1',
                      addressName: 'Banani Dhaka',
                    ),
                    ButtonReusable(
                      companyName: 'SHU 2',
                      addressName: 'Dhaka',
                    ),
                    ButtonReusable(
                      companyName: 'SHU 3',
                      addressName: 'Dhaka Bangladesh',
                    ),
                    ButtonReusable(
                      companyName: 'SHU 4',
                      addressName: 'Banani Dhaka',
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
