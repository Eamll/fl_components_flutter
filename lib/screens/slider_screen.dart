import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 50;
  bool _sliderEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sliders & checks'),
        ),
        body: Column(
          children: [
            Slider.adaptive(
              activeColor: AppTheme.primary,
              inactiveColor: Colors.amber,
              min: 0,
              max: 700,
              value: _sliderValue,
              onChanged: _sliderEnabled
                  ? (value) {
                      _sliderValue = value;
                      setState(() {});
                    }
                  : null,
            ),
            Checkbox(
                value: _sliderEnabled,
                onChanged: (value) {
                  _sliderEnabled = value ?? true;
                  setState(
                    () {},
                  );
                }),
            CheckboxListTile(
              activeColor: AppTheme.primary,
              title: const Text(
                'Slider Enabled',
                textAlign: TextAlign.end,
              ),
              value: _sliderEnabled,
              onChanged: (value) => setState(() {
                _sliderEnabled = value ?? true;
              }),
            ),
            Switch(
              value: _sliderEnabled,
              onChanged: (value) => setState(() {
                _sliderEnabled = value;
              }),
            ),
            SwitchListTile.adaptive(
              activeColor: AppTheme.primary,
              title: const Text(
                'Slider Enabled',
                textAlign: TextAlign.end,
              ),
              value: _sliderEnabled,
              onChanged: (value) => setState(() {
                _sliderEnabled = value;
              }),
            ),
            const AboutListTile(
              icon: FlutterLogo(),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image(
                        width: _sliderValue,
                        fit: BoxFit.contain,
                        image: const NetworkImage(
                            'https://static.wikia.nocookie.net/personajes-de-ficcion-database/images/6/64/Superman.png/revision/latest?cb=20200909145020&path-prefix=es')),
                    const SizedBox(
                      height: 50,
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
