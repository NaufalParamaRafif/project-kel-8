import 'package:flutter/material.dart';

class ProfileScreenPage extends StatelessWidget {
  static String nameRoute = '/profile';
  const ProfileScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 55, 130, 94),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
        title: Text("Profile"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                width: 120,
                height: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: const Image(image: AssetImage("images/profile.jpg")),
                ),
              ),
              const SizedBox(height: 10),
              Text("Admin"),
              const SizedBox(height: 20),
              Text("adminsuper@coding.com"),
              Text("081286412486"),
              const SizedBox(
                height: 20,
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              ProfileMenuWidget(
                  title: "Akun",
                  icon: Icons.account_circle_outlined,
                  onPress: () {}),
                  const SizedBox(height: 2),
              ProfileMenuWidget(
                  title: "Notifikasi",
                  icon: Icons.notifications,
                  onPress: () {}),
                  const SizedBox(height: 2),
              ProfileMenuWidget(
                  title: "Chat", icon: Icons.chat_rounded, onPress: () {}),
                  const SizedBox(height: 2),
              ProfileMenuWidget(
                  title: "Privasi", icon: Icons.key_rounded, onPress: () {}),
              const SizedBox(height: 20),
              ProfileMenuWidget(
                  title: "Logout",
                  icon: Icons.logout,
                  textColor: Colors.red,
                  endIcon: false,
                  onPress: () {}),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.onPress,
    this.endIcon = true,
    this.textColor,
  });

  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.black.withOpacity(0.2),
        ),
        child: Icon(
          icon,
        ),
      ),
      title: Text(title, selectionColor: textColor),
      trailing: endIcon
          ? Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.black.withOpacity(0.2),
              ),
              child: const Icon(Icons.arrow_forward_ios_rounded,
                  size: 18.0, color: Colors.black))
          : null,
    );
  }
}
