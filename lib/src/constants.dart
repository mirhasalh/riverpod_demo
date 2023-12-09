// There are a lot of built-in constant values with different types and needs
// that come from the Flutter framework. A couple of them are [kIsWeb],
// [kDebugMode], and [kToolbarHeight]. We notice that all of them always start
// with 'k'. You might wonder why they always start with 'k'; when we declare
// them without 'k', the linter does not complain at all, which means it's okay.

// One reason why they always start with 'k' is to help developers remember the
// constant values they already have in the project. The IDE provides snippets
// when you start typing 'k', and the constant value can be easily selected
// with an arrow key and entered. Therefore, following this approach to declare
// a constant value is good along the way.

import 'package:flutter/material.dart' show SizedBox;

const kReqResBaseUrl = 'https://reqres.in';
const kMediumPadding = 16.0;
const kBoxSeparator = SizedBox(height: 8.0);
