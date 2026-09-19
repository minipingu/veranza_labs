import 'package:material_ui/material_ui.dart';
import 'package:veranza_labs/constants/font.dart';
import 'package:veranza_labs/router/app_router.dart';
import 'package:veranza_labs/services/preferences_handler.dart';

class HomeScreen extends StatelessWidget {
  const new({super.key});

  void logout(BuildContext context) {
    LoginStorage.logOut();
    LoginRoute().go(context);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        behavior: .floating,
        duration: const Duration(milliseconds: 3000),
        content: const Text('Berhasil Logout!'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => logout(context),
            icon: Icon(Icons.logout, color: Colors.grey),
          ),
        ],
        title: Text('Beranda Sawiters', style: FontCustom.whiteText),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: .center,
            children: [
              Text(
                'Hai Sawiters!',
                style: TextStyle(color: Colors.orange, fontSize: 30),
              ),

              Text(
                'Selamat Bergabung!',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
