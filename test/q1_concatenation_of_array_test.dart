import 'package:coding_test_app/questions/section1/q1_concatenation_of_array.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Q1: 問題文の2例を連結できる', () {
    final solution = Solution();
    expect(solution.getConcatenation([1, 2, 1]), [1, 2, 1, 1, 2, 1]);
    expect(solution.getConcatenation([1, 3, 2, 1]), [1, 3, 2, 1, 1, 3, 2, 1]);
  });

  test('Q1: 最小・最大の配列長に対応し、入力を変更しない', () {
    final solution = Solution();
    expect(solution.getConcatenation([1000]), [1000, 1000]);
    final nums = List.generate(1000, (i) => i + 1);
    final original = List<int>.of(nums);
    final actual = solution.getConcatenation(nums);
    expect(actual.length, 2000);
    expect(actual.take(1000), original);
    expect(actual.skip(1000), original);
    expect(nums, original);
  });

  test('Q1: 入力・期待値・結果・合否をデバッグ出力する', () {
    final messages = <String?>[];
    final originalDebugPrint = debugPrint;
    addTearDown(() => debugPrint = originalDebugPrint);
    debugPrint = (String? message, {int? wrapWidth}) {
      messages.add(message);
      originalDebugPrint(message, wrapWidth: wrapWidth);
    };

    runQ1Tests();

    expect(messages, contains('入力: [1, 2, 1]'));
    expect(messages, contains('期待値: [1, 2, 1, 1, 2, 1]'));
    expect(messages, contains('実際の結果: [1, 2, 1, 1, 2, 1]'));
    expect(messages.where((message) => message == '判定: PASS'), hasLength(2));
    expect(messages.last, 'Q1 結果: 2/2 PASS');
  });
}
