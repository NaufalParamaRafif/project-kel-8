import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Color(0xFF33691E),
          leading:
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
          title: Text("Notifications"),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return const ListTile(
                      isThreeLine: true,
                      leading: CircleAvatar(
                        radius: 30,
                        child: Image(
                          image: AssetImage("images/profile.jpg"),
                        ),
                      ),
                      title: Text("Dwi Buana"),
                      subtitle: Text(
                        "Please make the presentation before friday, the  next meeting agenda will be based onn it",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => Divider(
                        color: Colors.grey,
                        height: 1,
                        indent: size.width * .02,
                        endIndent: size.width * .02,
                      ),
                  itemCount: 10),
            ),
          ],
        ),
      ),
    );
  }
}
