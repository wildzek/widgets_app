import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo(
      'Busca la comida',
      'Aliquip aliquip sit nulla eu eiusmod anim deserunt et deserunt fugiat aute officia.',
      'assets/Images/1.png'),
  SlideInfo('Entrega rápida', 'Fugiat eu eu qui cillum ea deserunt eu.',
      'assets/Images/2.png'),
  SlideInfo(
      'Disfruta la comida',
      'Excepteur nisi tempor officia cupidatat velit et irure reprehenderit deserunt amet anim in veniam ea.',
      'assets/Images/3.png'),
];

class AppTutorialScreen extends StatelessWidget {
  static const name = 'Tutorial Screen';

  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
              physics: const BouncingScrollPhysics(),
              children: slides
                  .map((slideData) => _Slide(
                      title: slideData.title,
                      caption: slideData.caption,
                      imageUrl: slideData.imageUrl))
                  .toList()),
          Positioned(right: 20, top: 50, child: TextButton(child: const Text('Salir'), onPressed: () => context.pop(),),)
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide(
      {required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(image: AssetImage(imageUrl)),
              const SizedBox(height: 20),
              Text(title, style: titleStyle),
              const SizedBox(height: 10),
              Text(caption, style: captionStyle),
            ],
          ),
        ));
  }
}
