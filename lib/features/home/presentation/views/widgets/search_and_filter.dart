import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hashim_store/features/home/presentation/views/widgets/custom_text_field.dart';
import 'package:hashim_store/features/home/presentation/views/widgets/filter_widget.dart';

class SearchAndFilter extends StatelessWidget {
  const SearchAndFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        IntrinsicHeight(
          child: Row(
            children: [
              Expanded(
                child: CustomTextField(),
              ),
              SizedBox(width: 10),
              FilterWidget(),
            ],
          ),
        ),
      ],
    );
  }
}
