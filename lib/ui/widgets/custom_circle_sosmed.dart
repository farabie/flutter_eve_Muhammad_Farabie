part of 'widgets.dart';

class CustomCircleSosmed extends StatelessWidget {
  final String imageAsset;
  const CustomCircleSosmed({
    super.key,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: greyColor, width: 2),
      ),
      child: SizedBox(
        height: 30,
        child: Image.asset(
          imageAsset,
        ),
      ),
    );
  }
}
