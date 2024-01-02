import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('리스트 뷰'),
      ),
      body: Container(
        child: Center(
            child: ListView.builder(
          itemBuilder: (context, position) {
            return GestureDetector(
                child: Card(
                  child: Row(children: [
                    Image.asset(
                      'image/animal1.jpg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.contain,
                    )
                  ]),
                ),
                onTap: () {
                  print('카드 클릭!!!');
                });
          },
          itemCount: 5,
        )),
      ),
    );
  }
}
