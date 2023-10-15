part of 'shared.dart';

const double defaultMargin = 24;

Color mainColor = const Color(0xff6491EE);
Color backgroundColor = const Color(0xffD4E3F7);
Color blackColor = const Color(0xff000000);
Color whiteColor = const Color(0xffFFFFFF);
Color accentColor1 = const Color(0xffFF5C7D);
Color accentColor2 = const Color(0xffDEDEDE);

TextStyle blackTextFont = GoogleFonts.montserrat()
    .copyWith(color: blackColor, fontWeight: FontWeight.w600);
TextStyle whiteTextFont = GoogleFonts.montserrat()
    .copyWith(color: whiteColor, fontWeight: FontWeight.w600);
TextStyle blueTextFont = GoogleFonts.montserrat()
    .copyWith(color: mainColor, fontWeight: FontWeight.w600);
TextStyle redTextFont = GoogleFonts.montserrat()
    .copyWith(color: accentColor1, fontWeight: FontWeight.w600);
