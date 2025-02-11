import 'package:aqylym/src/app/imports.dart';
import 'package:aqylym/src/core/services/injectable/injectable_service.dart';
import 'package:aqylym/src/core/theme/app_icons.dart';
import 'package:aqylym/src/core/theme/colors.dart';
import 'package:aqylym/src/features/books/domain/requests/get_text_request.dart';
import 'package:aqylym/src/features/books/presentation/bloc/book_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookReadPage extends StatefulWidget {
  const BookReadPage({super.key});

  @override
  State<BookReadPage> createState() => _BookReadPageState();
}

class _BookReadPageState extends State<BookReadPage> {
  late final BookBloc _bloc;
  String text = '''Маленький Дипло стоял под пальмой и горько рыдал.

— Что тебя так расстроило? — спросила у него обеспокоенная учительница.

Маленький диплодок в ответ зашмыгал носом.

— Все ребята… надо мной издеваются. Они считают меня огромным! А ведь я и правда намного больше их. Они говорят, что моя длинная шея очень смешная!

Мадам Птеродактиль была самой милой учительницей в школе. Она обняла Дипло своими большими крыльями и постаралась утешить его.

— Иди на своё место, а я прослежу, чтобы никто больше тебя не обижал.

Вот только место Дипло — в самом конце класса, там, где сидят главные задира. А всё потому, что маленький диплодок слишком большого размера: если бы он сидел впереди, никто за ним не смог бы ничего рассмотреть.

Как только Дипло уселся за парту, над ним снова стали смеяться. Трице показывал ему рожки, Тирекс скалил зубы, чтобы испугать диплодока, а Анки размахивала своим шипастым хвостом как кулаком.

Все хотели напугать маленького диплодока и заставить его разозлиться. Тогда Дипло ни за что не сумеет закончить уроки, сдать экзамен и перейти в Верхний мел в следующем году.

— Так, а ну, прекратите все немедленно! — прикрикнула мадам Птеродактиль. — Если вы продолжите так себя вести, мы не пойдём к вулкану в конце года!

В классе сразу стало тихо.

— А сейчас приступим к уроку о земле. Кто хочет сделать отпечаток лапы для праздника матерей и палеонтологов? — спросила учительница.

Все подняли лапы.

— Я, я, я, я! — закричали маленькие динозавры.

Но когда Дипло поднял свою лапу, — бух! — он опрокинул стаканчики с водой для рисования.

Все снова начали смеяться над ним!

— Ха-ха, толстяк! Ха-ха, гигант! Смотрите, какой же он неуклюжий!

— Остановитесь! — потребовала учительница. — Послушайте меня, я расскажу вам одну историю.

Пока Дипло обиженно сопел в своём углу, мадам Птеродактиль начала рассказывать:

— Когда-то давным-давно жил маленький динозавр с утиным носом. Он по ошибке появился на свет в гнезде птеродактилей — родители случайно перепутали яйца. И когда он вылупился, маленькие птеродактили стали над ним издеваться: «Какой страшненький!» И другие животные говорили так же: «Да что с ним не так?!» Но когда маленький некрасивый динозавр вырос, то понял, что он — большой и очень сильный гадрозавр. Он был намного больше и сильнее всех птеродактилей вместе взятых.

Маленькие динозавры сидели тихо и слушали. А Дипло даже немного повеселел. Но никто не заметил, что, пока учительница рассказывала историю о маленьком некрасивом динозавре, малыш овираптор тихонько вышел из класса.

Внезапно послышались крики с улицы. Учительница даже подскочила. Она быстро оглядела класс:

— А где же Ови?

— Он вышел в туалет, — объяснила его соседка по парте, малышка стегозавр. Но пластинки у неё на спине покраснели, и учительница сразу поняла, что Стега говорит неправду.

— Так не годится. Скажи мне честно, что случилось, — серьёзно попросила она. — Где он?

Стега опустила голову и призналась:

— Он сегодня не успел пообедать, поэтому был очень голодным. Он сказал мне, что пойдёт искать яйца. Ови думал, что никто не заметит его отсутствия.

Весь класс в панике выбежал на улицу на поиски маленького овираптора.

— Скорее, нужно его спасти! Он может быть в опасности! — прокричала учительница.

Дипло вытянул свою длинную шею.

— Я вижу его! — воскликнул диплодок. — Он там, на верхушке пальмы.

Все тут же бросились бежать к лесу.

Добежав до большой пальмы, учительница скомандовала:

— Ови, слезай немедленно! Или я полезу за тобой, и тогда ты будешь наказан.

Но Ови рыдал и трясся.

— Я не могу, у меня голова кружится. Ох-ох…

Мадам Птеродактиль расправила свои большие крылья, но проблема была в том, что она уже давно не летала.

— Ай! Я уже совсем заржавела, у меня точно не получится, — грустно сказала она.

— Давайте я, — предложил Дипло.

Он вытянул свою длинную шею и дотянулся до верхушки дерева. Все динозавры ахнули от удивления.

Немного посомневавшись, Ови скатился по длинной шее, как по горке, прямо на землю.

— Уф, спасибо, что спас меня!

Он крепко обнял Дипло.

— Ура! — Маленькие динозавры окружили диплодока и зааплодировали.

С этого дня Стега, Анки, Трице, Тирекс и все остальные тянули шеи наверх и ходили на цыпочках, чтобы стать такими же высокими, как маленький диплодок, и быть на него похожими.

Ведь он теперь стал настоящим героем.

— Кажется, в школе не так уж и плохо, — сказал маленький Дипло, вернувшись после уроков домой''';

  @override
  void initState() {
    super.initState();
    _bloc = getIt<BookBloc>();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bloc,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () => context.pop(),
                child: const Icon(
                  AppIcons.settings,
                  size: 24,
                  color: AppColors.blackFont,
                ),
              ),
            ),
          ],
          leading: InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () => context.pop(),
            child: const Icon(
              AppIcons.chevron_left,
              size: 24,
              color: AppColors.blackFont,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const Text(
                    'Белка (сказка).',
                    style: TextStyle(
                      fontFamily: 'SFUIDisplay',
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: AppColors.blackFont,
                    ),
                  ),
                  const SizedBox(height: 16),
                  BlocBuilder<BookBloc, BookState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        initial: () {
                          context.read<BookBloc>().add(BookEvent.getText(GetTextRequest(
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
                              )));
                          return const SizedBox();
                        },
                        loading: () => const CircularProgressIndicator(),
                        error: (error) => Text(error),
                        loaded: (viewModel, currentPage, currentText, totalPages) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 460,
                                padding: const EdgeInsets.all(24),
                                decoration: BoxDecoration(
                                  color: AppColors.bookContainerColor,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Text(
                                  currentText ?? '',
                                  style: const TextStyle(
                                    fontFamily: 'SFUIDisplay',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.darkGrey,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    icon: const Icon(
                                      AppIcons.circle_arrow_left,
                                      size: 29,
                                      color: AppColors.blackFont,
                                    ),
                                    onPressed: currentPage > 0
                                        ? () => context
                                            .read<BookBloc>()
                                            .add(const BookEvent.previousPage())
                                        : null,
                                  ),
                                  Text(
                                    '${currentPage + 1} / $totalPages',
                                    style: const TextStyle(
                                      fontFamily: 'SFUIDisplay',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.darkGrey,
                                    ),
                                  ),
                                  IconButton(
                                    icon: const Icon(
                                      AppIcons.circle_arrow_right,
                                      size: 29,
                                      color: AppColors.blackFont,
                                    ),
                                    onPressed: currentPage < totalPages - 1
                                        ? () =>
                                            context.read<BookBloc>().add(const BookEvent.nextPage())
                                        : null,
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                        orElse: () => const SizedBox(),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
