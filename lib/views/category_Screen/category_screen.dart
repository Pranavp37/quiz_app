import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz/dummy_db.dart';
import 'package:quiz/views/home_screen/home_screen.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //appBar
            const Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi,John',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      'Lets make this day productive',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                CircleAvatar(
                  radius: 28,
                  backgroundImage: NetworkImage(
                      'https://t3.ftcdn.net/jpg/02/99/04/20/360_F_299042079_vGBD7wIlSeNl7vOevWHiL93G4koMM967.jpg'),
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),

            //Ranging & points
            Container(
              height: 100,
              padding: const EdgeInsets.only(
                  bottom: 10, top: 15, left: 0, right: 15),
              decoration: BoxDecoration(
                  color: Colors.grey.shade800,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                      height: 70,
                      'assets/images/be6a3f73a0e9ceaea755691cb27c715c-removebg-preview.png'),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ranking',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        '348',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  const VerticalDivider(
                    color: Colors.grey,
                    endIndent: 10,
                    indent: 10,
                    thickness: 2,
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Image.asset(height: 70, 'assets/images/golden-coin-.png'),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Points',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        '1209',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 18,
            ),

            //title(Lets Play)
            const Text(
              "Let's Play",
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            //categories

            Expanded(
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 20,
                    mainAxisExtent: 245,
                    crossAxisCount: 2),
                itemBuilder: (context, index) => SizedBox(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(
                              passindex: index,
                            ),
                          ));
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(bottom: 30, left: 15),
                          height: 200,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(DummyDb.categoreies[index]['CategoryName'],
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  )),
                              Text(DummyDb.categoreies[index]['QuestionNo'],
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  )),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: index == 2 || index == 3 ? 145 : 110,
                          child: Image.asset(
                              height: index == 2 || index == 3 ? 100 : 170,
                              DummyDb.categoreies[index]['imageurl']),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
