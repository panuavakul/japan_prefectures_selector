import 'package:flutter/foundation.dart';

/// The class for representing each prefecture
@immutable
class Prefecture {
  const Prefecture({
    @required this.value,
    @required this.eng,
    @required this.jpn,
    @required this.jpnNoKen,
    @required this.kana,
  });

  /// The value that represents this [Prefecture], 
  /// this value is the uncapitalized romaji reading of the name.
  ///* Eg. miyagi, yamagata, chiba
  final String value;

  /// The romaji reading of this [Prefecture] with first letter capitalized
  ///* Eg. Tokyo, Mie, Yamanashi
  final String eng;

  /// The kanji value of this [Prefecture] with 県 character
  ///* Eg. 秋田県, 熊本県, 東京都
  final String jpn;

  /// The kanji value of this [Prefecture] WITHOUT 県 character
  ///* Eg. 青森, 北海道
  final String jpnNoKen;

  /// The kana value of this [Prefecture]
  ///* あいち, いしかわ
  final String kana;
}