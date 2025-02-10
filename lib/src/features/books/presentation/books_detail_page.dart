import 'package:aqylym/src/app/imports.dart';
import 'package:aqylym/src/core/base/base_bloc/bloc/base_bloc_widget.dart';
import 'package:aqylym/src/core/services/injectable/injectable_service.dart';
import 'package:aqylym/src/core/theme/app_icons.dart';
import 'package:aqylym/src/core/theme/colors.dart';
import 'package:aqylym/src/features/books/domain/requests/get_text_request.dart';
import 'package:aqylym/src/features/books/presentation/bloc/book_bloc.dart';

class BooksDetailPage extends StatefulWidget {
  const BooksDetailPage({super.key});

  @override
  State<BooksDetailPage> createState() => _BooksDetailPageState();
}

class _BooksDetailPageState extends State<BooksDetailPage> {
  late ScrollController _scrollController;
  final text =
      "Хорошим помощником белки Бэлы оказался соловей. Каким образом он смог стать полезным белке?  Сказка на ночь расскажет нам об этом…";
  double _iconScale = 1.0;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()
      ..addListener(() {
        var offset = _scrollController.offset;
        var newScale = 1.0;
        if (offset > 0) {
          newScale = 1.0 - (offset / 200).clamp(0.0, 1.0);
        }
        if (newScale != _iconScale) {
          setState(() {
            _iconScale = newScale;
          });
        }
      });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            NestedScrollView(
              controller: _scrollController,
              headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                    leading: InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () => context.pop(),
                      child: const Icon(
                        AppIcons.chevron_left,
                        size: 25,
                        color: AppColors.blackFont,
                      ),
                    ),
                    expandedHeight: 300.0,
                    floating: false,
                    flexibleSpace: FlexibleSpaceBar(
                      centerTitle: true,
                      title: Image.asset(
                        'assets/images/book1.svg',
                        width: 150,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SliverPersistentHeader(
                    delegate: _SliverAppBarDelegate(
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(50),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    pinned: false,
                  ),
                ];
              },
              body: Container(
                color: Colors.amber,
                child: BaseBlocWidget<BookBloc, BookEvent, BookState>(
                  bloc: getIt<BookBloc>(),
                  starterEvent: BookEvent.getText(
                    GetTextRequest(
                      temperature: 0.3,
                      messages: [
                        {
                          'role': 'system',
                          'content':
                              'You are a helpful assistant that splits words into syllables. Respond only with the syllables separated by hyphens.',
                        },
                        {
                          'role': 'user',
                          'content': 'Split this sentence into syllables: $text',
                        }
                      ],
                    ),
                  ),
                  builder: (context, state, bloc) {
                    return state.maybeWhen(
                      error: (error) => Text(error),
                      orElse: () => const CircularProgressIndicator(),
                      loaded: (viewModel) {
                        return Center(
                          child: Text(viewModel.text!.choices.first.message.content),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
            // Floating danger icon
          ],
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  _SliverAppBarDelegate(this.child);

  @override
  double get minExtent => 70.0;

  @override
  double get maxExtent => 70.0;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
