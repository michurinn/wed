import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/names.png'),
            const SizedBox(height: 20),
            Image.asset('assets/peoples.png'),
            const SizedBox(height: 20),
            Image.asset('assets/Invitation.jpg'),
            const SizedBox(height: 20),
            Image.asset('assets/Calendar.jpg'),
            const SizedBox(height: 20),
            Image.asset('assets/Place.jpg'),
            const SizedBox(height: 20),
            Image.asset('assets/Building.jpg'),
            const SizedBox(height: 20),
            Image.asset('assets/Event plan.jpg'),
            const SizedBox(height: 20),
            Image.asset('assets/Dress code.jpg'),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/hearts_left.jpg'),
                Image.asset('assets/details.jpg'),
                Image.asset('assets/hearts_right.jpg'),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              """
Если хотите подарить нам ценный и нужный подарок, мы будем очень благодарны за вклад 
в бюджет нашей молодой семьи.

А чтобы память об этом дне оставалась с нами как можно дольше — подарите нам не букет, а море цветов надолго! Для этого просто отсканируйте  QR-код для нашей цветочной подписки. Кодовая фраза: «Свадебная Забава». 
И самое важное — ваше присутствие скрасит этот день ярче любых букетов.  
""",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/mail_left.jpg'),
                Image.asset('assets/qr.jpg'),
                Image.asset('assets/mail_right.jpg'),
              ],
            ),
            Image.asset('assets/Footer.jpg'),
          ],
        ),
      ),
    );
  }
}
