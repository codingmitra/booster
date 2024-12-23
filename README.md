# booster

A collection of useful widgets, extensions and utilities to boost Flutter app development.

## Usage

```yaml
dependencies:
  booster: ^0.0.4
```

## Features
- Widgets
  - `Gap`: It may be used in place of SizedBox.square().
  - `FlexRow`: It's like a [Row] but it has a [gap] and [reversed] property.
  - `FlexColumn`: It's like a [Column] but it has a [gap] and [reversed] property.

- Extensions
  - Widget extensions
    - `toSliver`: It converts a widget to a Sliver.
    - `toExpanded()`: It converts a child of a Row, Column, or Flex widget to an Expanded.
    - `toFlexible()`: It converts a child of a Row, Column, or Flex widget to a Flexible.

  - String extensions
    - `toInt`: It converts the string to an integer if possible.
    - `toDouble`: It converts the string to a double if possible.
    - `toCapitalize`: It capitalizes the first character of each word in the string.
    - `toColor`: It converts a CSS hex color string to a Color if possible.

  - BuildContext extensions
    - `theme`: It returns the ThemeData.
    - `colorScheme`: It returns the ColorScheme.
    - `textTheme`: It returns the TextTheme.
    - `mediaQuery`: It returns the MediaQueryData.
    - `size`: It returns the Size of the MediaQueryData.
    - `padding`: It returns the EdgeInsets of the MediaQueryData.


## License

MIT License


## Support

<a href="https://www.buymeacoffee.com/hirokbanik" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" style="height: 60px !important;width: 217px !important;" ></a>