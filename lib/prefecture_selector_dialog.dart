import 'package:flutter/material.dart';
import 'package:japan_prefectures_selector/prefecture.dart';
export 'package:japan_prefectures_selector/prefecture.dart';

class PrefectureSelectorDialog extends StatefulWidget {
  const PrefectureSelectorDialog({
    @required this.prefectures,
    this.shape,
    this.elevation,
    this.cellDecoration,
    this.hintText = '',
    this.textStyle,
  });

  /// A list of [Prefecture] choices
  final List<Prefecture> prefectures;

  /// The shape of the dialog. Use to set stuffs like `cornerRadius`
  final ShapeBorder shape;

  /// Use this to set the shadow of the dialog
  final double elevation;

  /// The decoration for each selection cell
  final BoxDecoration cellDecoration;

  /// The hint text that should be shown in the search bar
  final String hintText;

  /// The text style for all text
  final TextStyle textStyle;

  /// This fucntion use [showDialog] to show the [PrefectureSelectorDialog]
  /// on top of current screen like normal [showDialog]. It return a [Future<Prefecture>]
  /// when a prefecture is selected and [null] when nothing is selected, eg. when user tap
  /// outside of the dialog area
  /// ```dart
  /// FlatButton(
  ///      child: Text('県を選択'),
  ///      onPressed: () async {
  ///        final selected = await PrefectureSelectorDialog.showPrefectureSelectorDialog(context);
  ///        print(selected?.eng);
  ///      },
  ///    ),
  /// ```
  static Future<Prefecture> showPrefectureSelectorDialog(
    BuildContext context, {
    ShapeBorder shape,
    double elevation,
    BoxDecoration cellDecoration,
    String hintText,
    TextStyle textStyle,
  }) async {
    return await showDialog<Prefecture>(
      context: context,
      builder: (context) => PrefectureSelectorDialog(
            prefectures: Prefecture.all(),
            shape: shape,
            elevation: elevation,
            cellDecoration: cellDecoration,
            hintText: hintText,
            textStyle: textStyle,
          ),
    );
  }

  @override
  _PrefectureSelectorDialogState createState() =>
      _PrefectureSelectorDialogState();
}

class _PrefectureSelectorDialogState extends State<PrefectureSelectorDialog> {
  List<Prefecture> filteredPrefectures = [];

  @override
  void initState() {
    super.initState();
    filteredPrefectures = widget.prefectures;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SimpleDialog(
        elevation: widget.elevation,
        title: _SearchBar(
          textStyle: widget.textStyle,
          onQueryChanged: (query) {
            setState(() {
              filteredPrefectures = _filterPrefectures(query);
            });
          },
        ),
        titlePadding: const EdgeInsets.all(8.0),
        shape: widget.shape,
        children: [
          _PrefectureListView(
            prefectures: filteredPrefectures,
            cellDecoration: widget.cellDecoration,
            textStyle: widget.textStyle,
          ),
        ],
      ),
    );
  }

  ///  This fuction filter the prefectures based on the given query
  List<Prefecture> _filterPrefectures(String query) {
    if (query.isEmpty) {
      return widget.prefectures;
    }
    return widget.prefectures.where((prefecture) {
      final perfectMatch = _doesMatch(prefecture.eng.toLowerCase(), query) ||
          _doesMatch(prefecture.jpn, query) ||
          _doesMatch(prefecture.kana, query);

      if (perfectMatch) {
        return perfectMatch;
      } else if (query.length < 2) {
        return false;
      } else {
        /// When converting hiragana to kanji in Japanese, the hiragana
        /// that pop up when using flick input maynot be the correct one
        /// so we ignore the last character. There is probably a better way to do this
        /// but this seems to be the most simple for now.
        /// TODO: Filter this part base on which character is in which flick key
        return _doesMatch(
                prefecture.jpn, query.substring(0, query.length - 1)) ||
            _doesMatch(prefecture.kana, query.substring(0, query.length - 1));
      }
    }).toList();
  }

  /// This function check if the query does match the given string
  static bool _doesMatch(String target, String query) {
    if (query.isEmpty) {
      return true;
    }
    final maxRange =
        query.length > target.length ? target.length : query.length;
    final compare = target.substring(0, maxRange);
    return compare == query;
  }
}

/// This use for filtering the prefectures
class _SearchBar extends StatefulWidget {
  const _SearchBar({
    @required this.onQueryChanged,
    this.hintText = '',
    this.textStyle,
  });

  /// Callback for when the query input change
  final ValueChanged<String> onQueryChanged;

  final String hintText;

  final TextStyle textStyle;

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<_SearchBar> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      onChanged: widget.onQueryChanged,
      style: widget.textStyle,
      decoration: InputDecoration(
        hintText: widget.hintText,

        /// Search Icon
        prefixIcon: const Icon(Icons.search),

        /// Clear Button
        suffixIcon: IconButton(
          icon: const Icon(Icons.cancel),
          onPressed: () {
            _controller.text = '';
          },
        ),
      ),
    );
  }
}

/// This is the list view showing the [Prefecture] retults
@immutable
class _PrefectureListView extends StatelessWidget {
  const _PrefectureListView({
    this.prefectures,
    this.cellDecoration,
    this.textStyle,
  });

  /// The prefectures to be displayed
  final List<Prefecture> prefectures;

  /// The decoration for each cell
  final BoxDecoration cellDecoration;

  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: List<Widget>.generate(prefectures.length, (index) {
          return ListTile(
            title: Center(
              child: Container(
                decoration: cellDecoration,
                child: Text(
                  prefectures[index].jpn,
                  style: textStyle,
                ),
              ),
            ),
            onTap: () {
              Navigator.pop<Prefecture>(context, prefectures[index]);
            },
          );
        }),
      ),
    );
  }
}
