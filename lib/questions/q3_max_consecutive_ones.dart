import 'package:flutter/foundation.dart';

// Q3. 連続する 1 の最大数（Max Consecutive Ones）
// 難易度: 初級
//
// 【問題文】
// 0 と 1 だけを含む配列 nums が与えられます。
// 1 が連続している部分のうち、最も長い部分の長さを返してください。
//
// 【例1】
// 入力: nums = [1, 1, 0, 1, 1, 1]
// 出力: 3
// 説明: 連続する 1 のかたまりは長さ 2 と長さ 3 なので、最大は 3 です。
//
// 【例2】
// 入力: nums = [1, 0, 1, 1, 0, 1]
// 出力: 2
//
// 【この練習での入力】
// ・nums は空ではありません。
// ・各要素は 0 または 1 です。
//
// 【解答欄】
class Solution {
  int findMaxConsecutiveOnes(List<int> nums) {
    // TODO: ここに自分の解答を書いてください。
    // 書き終えたら、下の throw を置き換えてください。
    throw UnimplementedError('Q3 はまだ未回答です');
  }
}

// 【段階的ヒント：必要なところまで読んでください】
// 1. 左から数字をなぞるとき、頭の中に何を覚えておきますか？
//
// 2. 「今続いている個数」と「これまでの最大の個数」を考えてみましょう。
//
// 3. 1 を見たときと 0 を見たときで、今の個数はどう変わりますか？
//
// 4. 最大値を更新するタイミングは？
//    0 に出会ったときだけ更新すると、1 で終わる配列を見逃しませんか？
//
// 【目標】時間計算量 O(n)、追加の空間計算量 O(1)。
// 【考え方のメモ】
// ・ここに自分の言葉で手順を書いてみましょう。

/// デバッグ起動・ホットリスタート時に解答を確認する。
void runQ3Tests() {
  const cases = [
    (nums: [1, 1, 0, 1, 1, 1], expected: 3),
    (nums: [1, 0, 1, 1, 0, 1], expected: 2),
    (nums: [0, 0, 0], expected: 0),
    (nums: [1, 1, 1], expected: 3),
    (nums: [1, 1, 0, 1, 0], expected: 2),
    (nums: [1], expected: 1),
    (nums: [0], expected: 0),
  ];
  final solution = Solution();
  var passed = 0;

  debugPrint('=== Q3. Max Consecutive Ones ===');
  for (var i = 0; i < cases.length; i++) {
    final testCase = cases[i];
    debugPrint('Case ${i + 1}');
    debugPrint('入力: ${testCase.nums}');
    debugPrint('期待値: ${testCase.expected}');
    try {
      final actual = solution.findMaxConsecutiveOnes(
        List<int>.of(testCase.nums),
      );
      final success = actual == testCase.expected;
      if (success) passed++;
      debugPrint('実際の結果: $actual');
      debugPrint('判定: ${success ? 'PASS' : 'FAIL'}');
    } on UnimplementedError {
      debugPrint('未回答: Q3 の解答欄を書いてからホットリスタートしてください。');
      return;
    } catch (error, stackTrace) {
      debugPrint('判定: FAIL（例外: $error）');
      debugPrintStack(stackTrace: stackTrace);
    }
  }
  debugPrint('Q3 結果: $passed/${cases.length} PASS');
}
