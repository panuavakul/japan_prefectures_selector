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

  static List<Prefecture> all() {
    return const [
      Prefecture(
        value: 'hokkaido',
        eng: 'Hokkaido',
        jpn: '北海道',
        jpnNoKen: '北海道',
        kana: 'ほっかいどう',
      ),
      Prefecture(
        value: 'aomori',
        eng: 'Aomori',
        jpn: '青森県',
        jpnNoKen: '青森',
        kana: 'あおもり',
      ),
      Prefecture(
        value: 'iwate',
        eng: 'Iwate',
        jpn: '岩手県',
        jpnNoKen: '岩手',
        kana: 'いわて',
      ),
      Prefecture(
        value: 'miyagi',
        eng: 'Miyagi',
        jpn: '宮城県',
        jpnNoKen: '宮城',
        kana: 'みやぎ',
      ),
      Prefecture(
        value: 'akita',
        eng: 'Akita',
        jpn: '秋田県',
        jpnNoKen: '秋田',
        kana: 'あきた',
      ),
      Prefecture(
        value: 'yamagata',
        eng: 'Yamagata',
        jpn: '山形県',
        jpnNoKen: '山形',
        kana: 'やまがた',
      ),
      Prefecture(
        value: 'fukushima',
        eng: 'Fukushima',
        jpn: '福島県',
        jpnNoKen: '福島',
        kana: 'ふくしま',
      ),
      Prefecture(
        value: 'ibaraki',
        eng: 'Ibaraki',
        jpn: '茨城県',
        jpnNoKen: '茨城',
        kana: 'いばらき',
      ),
      Prefecture(
        value: 'tochigi',
        eng: 'Tochigi',
        jpn: '栃木県',
        jpnNoKen: '栃木',
        kana: 'とちぎ',
      ),
      Prefecture(
        value: 'gunma',
        eng: 'Gunma',
        jpn: '群馬県',
        jpnNoKen: '群馬',
        kana: 'ぐんま',
      ),
      Prefecture(
        value: 'saitama',
        eng: 'Saitama',
        jpn: '埼玉県',
        jpnNoKen: '埼玉',
        kana: 'さいたま',
      ),
      Prefecture(
        value: 'chiba',
        eng: 'Chiba',
        jpn: '千葉県',
        jpnNoKen: '千葉',
        kana: 'ちば',
      ),
      Prefecture(
        value: 'tokyo',
        eng: 'Tokyo',
        jpn: '東京都',
        jpnNoKen: '東京',
        kana: 'とうきょう',
      ),
      Prefecture(
        value: 'kanagawa',
        eng: 'Kanagawa',
        jpn: '神奈川県',
        jpnNoKen: '神奈川',
        kana: 'かながわ',
      ),
      Prefecture(
        value: 'niigata',
        eng: 'Niigata',
        jpn: '新潟県',
        jpnNoKen: '新潟',
        kana: 'にいがた',
      ),
      Prefecture(
        value: 'toyama',
        eng: 'Toyama',
        jpn: '富山県',
        jpnNoKen: '富山',
        kana: 'とやま',
      ),
      Prefecture(
        value: 'ishikawa',
        eng: 'Ishikawa',
        jpn: '石川県',
        jpnNoKen: '石川',
        kana: 'いしかわ',
      ),
      Prefecture(
        value: 'fukui',
        eng: 'Fukui',
        jpn: '福井県',
        jpnNoKen: '福井',
        kana: 'ふくい',
      ),
      Prefecture(
        value: 'yamanashi',
        eng: 'Yamanashi',
        jpn: '山梨県',
        jpnNoKen: '山梨',
        kana: 'やまなし',
      ),
      Prefecture(
        value: 'nagano',
        eng: 'Nagano',
        jpn: '長野県',
        jpnNoKen: '長野',
        kana: 'ながの',
      ),
      Prefecture(
        value: 'gifu',
        eng: 'Gifu',
        jpn: '岐阜県',
        jpnNoKen: '岐阜',
        kana: 'ぎふ',
      ),
      Prefecture(
        value: 'shizuoka',
        eng: 'Shizuoka',
        jpn: '静岡県',
        jpnNoKen: '静岡',
        kana: 'しずおか',
      ),
      Prefecture(
        value: 'aichi',
        eng: 'Aichi',
        jpn: '愛知県',
        jpnNoKen: '愛知',
        kana: 'あいち',
      ),
      Prefecture(
        value: 'mie',
        eng: 'Mie',
        jpn: '三重県',
        jpnNoKen: '三重',
        kana: 'みえ',
      ),
      Prefecture(
        value: 'shiga',
        eng: 'Shiga',
        jpn: '滋賀県',
        jpnNoKen: '滋賀',
        kana: 'しが',
      ),
      Prefecture(
        value: 'kyoto',
        eng: 'Kyoto',
        jpn: '京都府',
        jpnNoKen: '京都',
        kana: 'きょうと',
      ),
      Prefecture(
        value: 'osaka',
        eng: 'Osaka',
        jpn: '大阪府',
        jpnNoKen: '大阪',
        kana: 'おおさか',
      ),
      Prefecture(
        value: 'hyogo',
        eng: 'Hyogo',
        jpn: '兵庫県',
        jpnNoKen: '兵庫',
        kana: 'ひょうご',
      ),
      Prefecture(
        value: 'nara',
        eng: 'Nara',
        jpn: '奈良県',
        jpnNoKen: '奈良',
        kana: 'なら',
      ),
      Prefecture(
        value: 'wakayama',
        eng: 'Wakayama',
        jpn: '和歌山県',
        jpnNoKen: '和歌山',
        kana: 'わやかま',
      ),
      Prefecture(
        value: 'tottori',
        eng: 'Tottori',
        jpn: '鳥取県',
        jpnNoKen: '鳥取',
        kana: 'とっとり',
      ),
      Prefecture(
        value: 'shimane',
        eng: 'Shimane',
        jpn: '島根県',
        jpnNoKen: '島根',
        kana: 'しまね',
      ),
      Prefecture(
        value: 'okayama',
        eng: 'Okayama',
        jpn: '岡山県',
        jpnNoKen: '岡山',
        kana: 'おかやま',
      ),
      Prefecture(
          value: 'hiroshima',
          eng: 'Hiroshima',
          jpn: '広島県',
          jpnNoKen: '広島',
          kana: 'ひろしま'),
      Prefecture(
        value: 'yamaguchi',
        eng: 'Yamaguchi',
        jpn: '山口県',
        jpnNoKen: '山口',
        kana: 'やまぐち',
      ),
      Prefecture(
        value: 'tokushima',
        eng: 'Tokushima',
        jpn: '徳島県',
        jpnNoKen: '徳島',
        kana: 'とくしま',
      ),
      Prefecture(
        value: 'kagawa',
        eng: 'Kagawa',
        jpn: '香川県',
        jpnNoKen: '香川',
        kana: 'かがわ',
      ),
      Prefecture(
        value: 'ehime',
        eng: 'Ehime',
        jpn: '愛媛県',
        jpnNoKen: '愛媛',
        kana: 'えひめ',
      ),
      Prefecture(
        value: 'kochi',
        eng: 'Kochi',
        jpn: '高知県',
        jpnNoKen: '高知',
        kana: 'こうち',
      ),
      Prefecture(
        value: 'fukuoka',
        eng: 'Fukuoka',
        jpn: '福岡県',
        jpnNoKen: '福岡',
        kana: 'ふくおか',
      ),
      Prefecture(
        value: 'saga',
        eng: 'Saga',
        jpn: '佐賀県',
        jpnNoKen: '佐賀',
        kana: 'さが',
      ),
      Prefecture(
        value: 'nagasaki',
        eng: 'Nagasaki',
        jpn: '長崎県',
        jpnNoKen: '長崎',
        kana: 'ながさき',
      ),
      Prefecture(
        value: 'kumamoto',
        eng: 'Kumamoto',
        jpn: '熊本県',
        jpnNoKen: '熊本',
        kana: 'くまもと',
      ),
      Prefecture(
        value: 'oita',
        eng: 'Oita',
        jpn: '大分県',
        jpnNoKen: '大分',
        kana: 'おおいた',
      ),
      Prefecture(
        value: 'miyazaki',
        eng: 'Miyazaki',
        jpn: '宮崎県',
        jpnNoKen: '宮崎',
        kana: 'みやざき',
      ),
      Prefecture(
        value: 'kagoshima',
        eng: 'Kagoshima',
        jpn: '鹿児島県',
        jpnNoKen: '鹿児島',
        kana: 'かごしま',
      ),
      Prefecture(
        value: 'okinawa',
        eng: 'Okinawa',
        jpn: '沖縄県',
        jpnNoKen: '沖縄',
        kana: 'おきなわ',
      ),
    ];
  }
}
