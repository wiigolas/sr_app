import 'package:sr_app/exports/exports.dart';

class InfiniteScroll extends StatefulWidget {
  final Widget Function(ScrollController)? renderChild;
  final void Function() scrollFunction;
  final ScrollController? scrollController;

  const InfiniteScroll({
    required this.renderChild,
    required this.scrollFunction,
    this.scrollController,
    Key? key,
  }) : super(key: key);

  @override
  State<InfiniteScroll> createState() => InfiniteScrollState();
}

class InfiniteScrollState extends State<InfiniteScroll> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = widget.scrollController ?? ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  void _scrollListener() {
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      widget.scrollFunction();
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.renderChild!(_scrollController);
  }
}
