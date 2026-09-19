import 'package:material_ui/material_ui.dart';

class HomeScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Beranda Sawiters')),
      body: Center(
        child: Column(
          children: [Text('Hai Sawiters!'), Text('Selamat Bergabung!')],
        ),
      ),
    );
  }
}
