import 'package:flutter/foundation.dart';

// Q1. 配列の連結（Concatenation of Array）
// 難易度: 初級
//
// 【問題文】
// 長さ n の整数配列 nums が与えられます。
// 0 <= i < n の各インデックス i について、次の条件を満たす
// 長さ 2n の配列 ans を作成してください（インデックスは0から始まります）。
// ・ans[i] == nums[i]
// ・ans[i + n] == nums[i]
// つまり、nums を2つ連結した配列 ans を返してください。
//
// 【例1】
// 入力: nums = [1, 2, 1]
// 出力: [1, 2, 1, 1, 2, 1]
// 説明: ans = [nums[0], nums[1], nums[2], nums[0], nums[1], nums[2]]
//          = [1, 2, 1, 1, 2, 1] となります。
//
// 【例2】
// 入力: nums = [1, 3, 2, 1]
// 出力: [1, 3, 2, 1, 1, 3, 2, 1]
// 説明: ans = [nums[0], nums[1], nums[2], nums[3],
//              nums[0], nums[1], nums[2], nums[3]]
//          = [1, 3, 2, 1, 1, 3, 2, 1] となります。
//
// 【制約】
// ・n == nums.length
// ・1 <= n <= 1000
// ・1 <= nums[i] <= 1000
//
// 【提示された回答コード】
class Solution {
  List<int> getConcatenation(List<int> nums) {
    return [...nums, ...nums];
  }
}

// 【解説】
// スプレッド構文「...」は、配列の要素を順番に展開する書き方です。
// [...nums, ...nums] は、新しい配列の中に nums の要素を2回並べます。
// 最初の ...nums が前半、次の ...nums が後半になります。
//
// nums = [1, 2, 1] の場合:
// [...nums, ...nums] → [1, 2, 1, 1, 2, 1]
//
// return で、連結して作った新しい配列を返します。
// 元の配列 nums の内容は変更されません。
//
// 【計算量】
// ・時間計算量: O(n)
//   n 個の要素を2回コピーするためです。
// ・空間計算量: O(n)（返す配列を含む）
//   長さ 2n の新しい配列を作成するためです。

/// デバッグ起動・ホットリスタート時に問題文のサンプルを検証する。
void runQ1Tests() {
  const cases = [
    (nums: [1, 2, 1], expected: [1, 2, 1, 1, 2, 1]),
    (nums: [1, 3, 2, 1], expected: [1, 3, 2, 1, 1, 3, 2, 1]),
  ];
  final solution = Solution();
  var passed = 0;

  debugPrint('=== Q1. Concatenation of Array ===');
  for (var i = 0; i < cases.length; i++) {
    final testCase = cases[i];
    debugPrint('Example ${i + 1}');
    debugPrint('入力: ${testCase.nums}');
    debugPrint('期待値: ${testCase.expected}');
    try {
      final actual = solution.getConcatenation(List<int>.of(testCase.nums));
      final success = listEquals(actual, testCase.expected);
      if (success) passed++;
      debugPrint('実際の結果: $actual');
      debugPrint('判定: ${success ? 'PASS' : 'FAIL'}');
    } catch (error, stackTrace) {
      debugPrint('判定: FAIL（例外: $error）');
      debugPrintStack(stackTrace: stackTrace);
    }
  }
  debugPrint('Q1 結果: $passed/${cases.length} PASS');
}
