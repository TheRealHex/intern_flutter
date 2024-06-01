import 'package:flutter/material.dart';

class MyDrawerNav extends StatelessWidget {
  const MyDrawerNav({super.key});

  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    return Drawer(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // top portion
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/images/avatar.png',
                      height: 50,
                      width: 50,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Full Name',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text('email@email.com'),
                ],
              ),
            ),

            // bottom portion
            SizedBox(
              height: double.maxFinite,
              child: ListView.builder(
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      padding: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                          color: currentIndex == index
                              ? const Color(0xFFc4bffe)
                              : null,
                          borderRadius: BorderRadius.circular(100)),
                      child: ListTile(
                        leading: Icon(
                          Icons.book,
                          color: currentIndex == index
                              ? Colors.black
                              : Colors.blueGrey,
                        ),
                        title: const Text('Label'),
                        titleTextStyle: TextStyle(
                          color: currentIndex == index
                              ? Colors.black
                              : Colors.blueGrey,
                          fontWeight:
                              currentIndex == index ? FontWeight.bold : null,
                        ),
                        trailing: Text(
                          '100+',
                          style: TextStyle(
                            color: currentIndex == index
                                ? Colors.black
                                : Colors.blueGrey,
                            fontWeight:
                                currentIndex == index ? FontWeight.bold : null,
                          ),
                        ),
                      ),
                    ),
                  );
                },
                // ListTile(
                //   title: Text('Label'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
