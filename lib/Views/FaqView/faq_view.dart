import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:yogiface/Views/FaqView/widgets/expandable_faq_item.dart';
import 'package:yogiface/gen/strings.g.dart';

class FaqPage extends HookWidget {
  const FaqPage({super.key});

  @override
  Widget build(BuildContext context) {
    final faqItems = useMemoized(() => [
          FaqItemData(
            question: context.t.faq.questions.q1.question,
            answer: context.t.faq.questions.q1.answer,
          ),
          FaqItemData(
            question: context.t.faq.questions.q2.question,
            answer: context.t.faq.questions.q2.answer,
          ),
          FaqItemData(
            question: context.t.faq.questions.q3.question,
            answer: context.t.faq.questions.q3.answer,
          ),
          FaqItemData(
            question: context.t.faq.questions.q4.question,
            answer: context.t.faq.questions.q4.answer,
          ),
          FaqItemData(
            question: context.t.faq.questions.q5.question,
            answer: context.t.faq.questions.q5.answer,
          ),
          FaqItemData(
            question: context.t.faq.questions.q6.question,
            answer: context.t.faq.questions.q6.answer,
          ),
          FaqItemData(
            question: context.t.faq.questions.q7.question,
            answer: context.t.faq.questions.q7.answer,
          ),
          FaqItemData(
            question: context.t.faq.questions.q8.question,
            answer: context.t.faq.questions.q8.answer,
          ),
          FaqItemData(
            question: context.t.faq.questions.q9.question,
            answer: context.t.faq.questions.q9.answer,
          ),
          FaqItemData(
            question: context.t.faq.questions.q10.question,
            answer: context.t.faq.questions.q10.answer,
          ),
        ]);

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xFF1A1A1A),
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          context.t.faq.title,
          style: const TextStyle(
            color: Color(0xFF1A1A1A),
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: false,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: faqItems.length,
        itemBuilder: (context, index) {
          final item = faqItems[index];
          return ExpandableFaqItem(
            question: item.question,
            answer: item.answer,
            initiallyExpanded: index == 0,
          );
        },
      ),
    );
  }
}

class FaqItemData {
  final String question;
  final String answer;

  FaqItemData({
    required this.question,
    required this.answer,
  });
}
