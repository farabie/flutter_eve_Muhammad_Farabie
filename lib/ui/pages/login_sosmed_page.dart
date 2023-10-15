part of 'pages.dart';

class LoginSosmedPage extends StatelessWidget {
  const LoginSosmedPage({super.key});

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
                const CustomSosmeWidget(
                  nameSosmed: "Facebook",
                  imageSosmed: "assets/logo_facebook.png",
                ),
                const SizedBox(
                  height: 16,
                ),
                const CustomSosmeWidget(
                  nameSosmed: "Google",
                  imageSosmed: "assets/logo_google.png",
                ),
                const SizedBox(
                  height: 16,
                ),
                const CustomSosmeWidget(
                  nameSosmed: "Apple",
                  imageSosmed: "assets/logo_apple.png",
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
                  onTap: () {},
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
                      onTap: () {},
                      child: Text(
                        "Sign Up",
                        style: blueTextFont.copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
