import 'package:action_slider/action_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Confirmation Slider Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Confirmation Slider Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _controller = ActionSliderController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ActionSlider.standard(
              width: 300.0,
              child: const Text('Slide to confirm'),
              onSlide: (controller) async {
                controller.loading(); //starts loading animation
                await Future.delayed(const Duration(seconds: 3));
                controller.success(); //starts success animation
                await Future.delayed(const Duration(seconds: 1));
                controller.reset(); //resets the slider
              },
            ),
            const SizedBox(height: 24.0),
            ActionSlider.standard(
              sliderBehavior: SliderBehavior.stretch,
              width: 300.0,
              child: const Text('Slide to confirm'),
              backgroundColor: Colors.white,
              toggleColor: Colors.lightGreenAccent,
              onSlide: (controller) async {
                controller.loading(); //starts loading animation
                await Future.delayed(const Duration(seconds: 3));
                controller.success(); //starts success animation
                await Future.delayed(const Duration(seconds: 1));
                controller.reset(); //resets the slider
              },
            ),
            const SizedBox(height: 24.0),
            ActionSlider.standard(
              rolling: true,
              width: 300.0,
              child: const Text('Rolling slider',
                  style: TextStyle(color: Colors.white)),
              backgroundColor: Colors.black,
              reverseSlideAnimationCurve: Curves.easeInOut,
              reverseSlideAnimationDuration: const Duration(milliseconds: 500),
              toggleColor: Colors.purpleAccent,
              icon: const Icon(Icons.add),
              onSlide: (controller) async {
                controller.loading(); //starts loading animation
                await Future.delayed(const Duration(seconds: 3));
                controller.success(); //starts success animation
                await Future.delayed(const Duration(seconds: 1));
                controller.reset(); //resets the slider
              },
            ),
            const SizedBox(height: 24.0),
            ActionSlider.standard(
              sliderBehavior: SliderBehavior.stretch,
              rolling: true,
              width: 300.0,
              child: const Text('Swipe right'),
              backgroundColor: Colors.white,
              toggleColor: Colors.amber,
              iconAlignment: Alignment.centerRight,
              loadingIcon: SizedBox(
                  width: 50,
                  child: Center(
                      child: SizedBox(
                    width: 24.0,
                    height: 24.0,
                    child: CircularProgressIndicator(
                        strokeWidth: 2.0, color: theme.iconTheme.color),
                  ))),
              successIcon: const SizedBox(
                  width: 50, child: Center(child: Icon(Icons.check_rounded))),
              icon: const SizedBox(
                  width: 50, child: Center(child: Icon(Icons.refresh_rounded))),
              onSlide: (controller) async {
                controller.loading(); //starts loading animation
                await Future.delayed(const Duration(seconds: 3));
                controller.success(); //starts success animation
                await Future.delayed(const Duration(seconds: 1));
                controller.reset(); //resets the slider
              },
            ),
            const SizedBox(height: 24.0),
            ActionSlider.custom(
              sliderBehavior: SliderBehavior.stretch,
              width: 300.0,
              controller: _controller,
              height: 60.0,
              toggleWidth: 60.0,
              toggleMargin: const EdgeInsets.all(12.0),
              backgroundColor: Colors.green,
              foregroundChild: DecoratedBox(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Icon(Icons.check_rounded, color: Colors.white)),
              foregroundBuilder: (context, state, child) => child!,
              outerBackgroundBuilder: (context, state, child) => Card(
                color: Color.lerp(Colors.red, Colors.green, state.position),
                child: Center(
                    child: Text(state.position.toStringAsFixed(2),
                        style: theme.textTheme.subtitle1)),
              ),
              backgroundBorderRadius: BorderRadius.circular(5.0),
              onSlide: (controller) async {
                controller.loading(); //starts loading animation
                await Future.delayed(const Duration(seconds: 3));
                controller.success(); //starts success animation
                await Future.delayed(const Duration(seconds: 1));
                controller.reset(); //resets the slidere slider
              },
            ),
            const SizedBox(height: 24.0),
            ActionSlider.custom(
              width: 300.0,
              controller: _controller,
              height: 60.0,
              backgroundColor: Colors.green,
              foregroundChild: Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(27.5)),
                  ),
                  child: const Icon(Icons.check_rounded, color: Colors.white)),
              foregroundBuilder: (context, state, child) => child!,
              backgroundChild: Center(
                child: Text('Highly Customizable :)',
                    style: theme.textTheme.subtitle1),
              ),
              backgroundBuilder: (context, state, child) => ClipRect(
                  child: OverflowBox(
                      maxWidth: state.standardSize.width,
                      maxHeight: state.toggleSize.height,
                      minWidth: state.standardSize.width,
                      minHeight: state.toggleSize.height,
                      child: child!)),
              backgroundBorderRadius: BorderRadius.circular(5.0),
              onSlide: (controller) async {
                controller.loading(); //starts loading animation
                await Future.delayed(const Duration(seconds: 3));
                controller.success(); //starts success animation
                await Future.delayed(const Duration(seconds: 1));
                controller.reset(); //resets the slideretting the slider
              },
            )
          ],
        ),
      ),
    );
  }
}
