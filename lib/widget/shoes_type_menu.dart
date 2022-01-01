import 'package:flutter/material.dart';
import 'package:rijix_laundy_app/pages/details.dart';

class ShoesItem extends StatelessWidget {
  var service = [
    "Schools Wash",
    "Sneachers Wash",
    "Work Wash",
    "Sport wash",
  ];
  var imgShoes = [
    "assets/images/school.png",
    "assets/images/sneakers.png",
    "assets/images/work.png",
    "assets/images/sport.png",
  ];

  ShoesItem(BuildContext context);
  @override
  Widget build(BuildContext context) {
    //widget khusus buat nambilin item tipe sepatu di halaman home
    return GridView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        padding: EdgeInsets.all(5),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: MediaQuery.of(context).size.width /
                (MediaQuery.of(context).size.height / 1.8)),
        itemCount: service.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailPage()),
              );
            },
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    imgShoes[index],
                    height: 120,
                    width: 120,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 20),
                    child: Text(
                      service[index],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        height: 1.2,
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
