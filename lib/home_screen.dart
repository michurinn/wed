import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
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
              Image.asset('assets/Place.png'),
              const SizedBox(height: 20),
              Text(
                '«Сезоны в парке»,\n СПб, ул. Писарева, 3А',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF61640E),
                ),
              ),
              const SizedBox(height: 20),
              OutlinedButton(
                onPressed: () {
                  launchUrl(
                    Uri.parse(
                      'https://yandex.ru/maps/org/sezony_v_parke/182687131735?si=6f4hmrtp2e39gz1r3yq50ce6ww',
                    ),
                  );
                },
                child: Text(
                  'Посмотреть на карте',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF61640E),
                  ),
                ),
              ),
              Image.asset('assets/Building.jpg'),
              const SizedBox(height: 20),
              Image.asset('assets/Event plan.jpg'),
              const SizedBox(height: 20),
              Image.asset('assets/Dress code.jpg'),
              const SizedBox(height: 20),
              ConstrainedBox(
                constraints: BoxConstraints.tight( Size(
                  MediaQuery.of(context).size.width,
                  100,
                )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(child: Image.asset('assets/hearts_left.jpg')),
                    Flexible(child: Image.asset('assets/details.jpg')),
                    Flexible(child: Image.asset('assets/hearts_right.jpg')),
                  ],
                ),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(child: Image.asset('assets/mail_left.jpg')),
                  Flexible(
                    child: GestureDetector(
                      onTap: () {
                        launchUrl(
                          Uri.parse('https://kraftflowers.ru/gift-subscription/'),
                        );
                      },
                      child: Image.asset('assets/qr.jpg'),
                    ),
                  ),

                  Flexible(child: Image.asset('assets/mail_right.jpg')),
                ],
              ),
              Image.asset('assets/Footer.jpg'),
            ],
          ),
        ),
      ),
    );
  }
}
