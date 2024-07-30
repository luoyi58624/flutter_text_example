import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class NativeText extends StatelessWidget {
  const NativeText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return AndroidView(
      viewType: 'native_text',
      layoutDirection: TextDirection.ltr,
      creationParams: {
        'text': text,
      },
      creationParamsCodec: const StandardMessageCodec(),
    );
  }
}
