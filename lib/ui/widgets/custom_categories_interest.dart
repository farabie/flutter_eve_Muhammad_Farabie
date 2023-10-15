part of 'widgets.dart';

class CustomInterest extends StatelessWidget {
  final String nameCategory;

  const CustomInterest({
    super.key,
    required this.nameCategory,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        Container(
          height: 30,
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: mainColor,
            ),
          ),
          child: Center(
            child: Text(
              nameCategory,
              style: blackTextFont.copyWith(
                fontSize: 14,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
