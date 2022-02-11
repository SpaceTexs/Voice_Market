import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';

import 'app_theme.dart';

class TextExtension {}

extension TextExt on Text {
  Text get label => Text(
        data!,
        style: AppTheme.textStyles.label,
      );
}
