import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widget/book_action.dart';
import 'package:bookly_app/features/home/presentation/views/widget/book_details.dart';
import 'package:bookly_app/features/home/presentation/views/widget/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widget/custom_book_image_item.dart';
import 'package:bookly_app/features/home/presentation/views/widget/featured_book_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BookDetailsSection(),
              Expanded(
                child: SizedBox(
                  height: 50,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 32),
                child: Text(
                  'You may also like',
                  style: Styles.textStyle16,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 135,
                child: FeaturedBooksListView(),
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        )
      ],
    );
  }
}

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: CustomBookDetailsAppBar(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: const CustomBookIamgeItem(),
          ),
          const SizedBox(
            height: 43,
          ),
          const Text(
            'The Jungle Book',
            style: Styles.textStyle30,
          ),
          const SizedBox(
            height: 7,
          ),
          Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
                color: const Color.fromARGB(170, 255, 255, 255)),
          ),
          const SizedBox(
            height: 18,
          ),
          const BookRatting(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 37,
          ),
          const BookAction()
        ],
      ),
    );
  }
}
