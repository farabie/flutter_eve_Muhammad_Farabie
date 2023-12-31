part of 'pages.dart';

class LoginSosmedPage extends StatefulWidget {
  const LoginSosmedPage({super.key});

  @override
  State<LoginSosmedPage> createState() => _LoginSosmedPageState();
}

class _LoginSosmedPageState extends State<LoginSosmedPage> {
  final RegistrationData registrationData = RegistrationData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 120,
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.125,
                  ),
                  child: Image.asset("assets/logo.png"),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Syakila",
                      style: redTextFont.copyWith(
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Bakery",
                      style: blueTextFont.copyWith(
                        fontSize: 24,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Let’s",
                      style: redTextFont.copyWith(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "you in",
                      style: blueTextFont.copyWith(
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: defaultMargin,
                ),
                CustomSosmeWidget(
                  nameSosmed: "Facebook",
                  imageSosmed: "assets/logo_facebook.png",
                  onTap: () {},
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomSosmeWidget(
                  nameSosmed: "Google",
                  imageSosmed: "assets/logo_google.png",
                  onTap: () async {
                    final result = await AuthServices.signInWithGoogle();
                    if (result.user != null) {
                      Get.off(() => ProfilePage(
                            fullNameSosmed: result.user?.fullName,
                          ));
                    } else {
                      final errorMessage = result.message ??
                          "Terjadi kesalahan saat masuk dengan Google";
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(errorMessage),
                      ));
                    }
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomSosmeWidget(
                  nameSosmed: "Apple",
                  imageSosmed: "assets/logo_apple.png",
                  onTap: () {},
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Or",
                  style: blackTextFont.copyWith(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: defaultMargin,
                ),
                CustomButton(
                  nameButton: "Sign In With Password",
                  onTap: () {
                    Get.to(
                      () => const SignInPage(),
                    );
                  },
                ),
                const SizedBox(
                  height: defaultMargin,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Don’t have an account?",
                      style: blackTextFont.copyWith(
                          fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(
                          () => SignUpPage(
                            registrationData: registrationData,
                          ),
                        );
                      },
                      child: Text(
                        "Sign Up",
                        style: blueTextFont.copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
