part of 'pages.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 250,
            child: Image.asset('assets/logo.png'),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Syakila",
                style: redTextFont.copyWith(
                  fontSize: 28,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Bakery",
                style: blueTextFont.copyWith(
                  fontSize: 28,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Future<Timer> startTimer() async {
    return Timer(Duration(seconds: 3), onDone);
  }

  void onDone() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => LoginSosmedPage(),
      ),
    );
  }
}
