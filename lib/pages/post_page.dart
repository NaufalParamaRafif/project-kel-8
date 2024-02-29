import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  //tesfsdzfdfhhfd
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 55, 130, 94),
          leading: IconButton.filled(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.white),
            ),
            onPressed: () {},
            color: Colors.black,
            icon: Icon(Icons.arrow_back_rounded),
          ),
        ),
        floatingActionButton: Padding(
          padding: EdgeInsets.only(bottom: 100),
          child: FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.comment,
              color: Colors.white,
            ),
            backgroundColor: Color.fromARGB(255, 55, 130, 94),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        body: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    'https://picsum.photos/seed/904/600',
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Title',
                      style: TextStyle(
                        fontSize: 28,
                      ),
                    ),
                    Icon(
                      Icons.favorite_border,
                      color: Colors.black,
                      size: 28,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Icon(
                        Icons.person,
                        color: Colors.black,
                        size: 35,
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 49, 49),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'User',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus sed viverra eros. Suspendisse mattis nec orci sit amet luctus. Phasellus.",
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
