part of 'pages.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    startTimer();
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
          ),
          if (isLoading)
            Container(
              height: 30,
              width: 30,
              margin: const EdgeInsets.only(top: 40),
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(mainColor),
              ),
            )
        ],
      ),
    );
  }

  Future<Timer> startTimer() async {
    return Timer(Duration(seconds: 5), checkFirebaseUser);
  }

  void checkFirebaseUser() {
    final firebaseUser = Provider.of<auth.User?>(context, listen: false);
    if (firebaseUser == null) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => LoginSosmedPage(),
        ),
      );
    } else {
      bool isGoogleSignIn = false;
      for (var userInfo in firebaseUser.providerData) {
        if (userInfo.providerId == 'google.com') {
          isGoogleSignIn = true;
          break;
        }
      }
      if (isGoogleSignIn) {
        print('User is authenticated with Google.');
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => ProfilePage(),
          ),
        );
      } else {
        print('User is not authenticated with Google.');
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => LoginSosmedPage(),
          ),
        );
      }
      setState(() {
        isLoading = false;
      });
    }
  }

  // void onDone() {
  //   Navigator.of(context).pushReplacement(
  //     MaterialPageRoute(
  //       builder: (context) => LoginSosmedPage(),
  //     ),
  //   );
  // }
}
