import 'package:widgets_app/presentation/screens/screens.dart';

class SlideInfo {
  final String title;
  final String imageUrl;
  final String caption;

  SlideInfo(this.title, this.imageUrl, this.caption);
}

final slides = <SlideInfo>[
  SlideInfo(
      'Busca la comida',
      'Aliquip aliquip sit nulla eu eiusmod anim deserunt et deserunt fugiat aute officia.',
      'assets/images/1.png'),
  SlideInfo('Entrega rápida', 'Fugiat eu eu qui cillum ea deserunt eu.',
      'assets/images/2.png'),
  SlideInfo(
      'Disfruta la comida',
      'Excepteur nisi tempor officia cupidatat velit et irure reprehenderit deserunt amet anim in veniam ea.',
      'assets/images/3.png'),
];

class AppTutorialScreen extends StatelessWidget {
  static const name = 'Tutorial Screen';

  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const BouncingScrollPhysics(),
        children: slides.map(
          (slideData) => _Slide(
            title: slideData.title,
            caption: slideData.caption,
            imageUrl: slideData.imageUrl
          )
          ).toList()
        ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
