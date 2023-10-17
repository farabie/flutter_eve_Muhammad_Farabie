part of 'pages.dart';

class ProfilePage extends StatelessWidget {
  RegistrationData? registrationData = RegistrationData();
  final String? fullNameFromLogin;
  final String? fullNameSosmed;
  ProfilePage({
    super.key,
    this.registrationData,
    this.fullNameFromLogin,
    this.fullNameSosmed,
  });

  @override
  Widget build(BuildContext context) {
    String fullName = fullNameFromLogin ??
        fullNameSosmed ??
        (registrationData?.fullName ?? "User");
    return Scaffold(
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                left: defaultMargin,
                right: 12,
                top: 40,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Profile",
                    style: blackTextFont.copyWith(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/profile_image.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    fullName,
                    style: blackTextFont.copyWith(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text(
                                "12",
                                style: blackTextFont.copyWith(
                                  fontSize: 20,
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text(
                                "Fundraising",
                                style: blackTextFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 50,
                            width: 2,
                            color: greyColor,
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                "489",
                                style: blackTextFont.copyWith(
                                  fontSize: 20,
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text(
                                "Followers",
                                style: blackTextFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 50,
                            width: 2,
                            color: greyColor,
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                "187",
                                style: blackTextFont.copyWith(
                                  fontSize: 20,
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text(
                                "Following",
                                style: blackTextFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Divider(
                        color: greyColor,
                        thickness: 2,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
                top: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About",
                    style: blackTextFont.copyWith(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged''',
                    style: blackTextFont.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: defaultMargin,
                right: 12,
                top: defaultMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Interest",
                    style: blackTextFont.copyWith(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomInterest(nameCategory: "Medical"),
                      CustomInterest(nameCategory: "Disaster"),
                      CustomInterest(nameCategory: "Education"),
                      CustomInterest(nameCategory: "Social"),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomInterest(nameCategory: "Orphange"),
                      CustomInterest(nameCategory: "Humanity"),
                      CustomInterest(nameCategory: "Enviroment"),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  CustomButton(
                    nameButton: "Sign Out",
                    onTap: () {
                      Get.offAll(() => const LoginSosmedPage());
                    },
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
