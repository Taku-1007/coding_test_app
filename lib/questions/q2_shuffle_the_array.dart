import 'package:flutter/foundation.dart';

// Q2. 配列のシャッフル（Shuffle the Array）
// 難易度: 初級
//
// 【問題文】
// 2n 個の要素からなる配列 nums と整数 n が与えられます。
// nums の要素は [x1, x2, ..., xn, y1, y2, ..., yn] の順に並んでいます。
// この配列を [x1, y1, x2, y2, ..., xn, yn] の順に並べた配列を返してください。
//
// 【例1】
// 入力: nums = [2, 5, 1, 3, 4, 7], n = 3
// 出力: [2, 3, 5, 4, 1, 7]
// 説明: x1 = 2, x2 = 5, x3 = 1, y1 = 3, y2 = 4, y3 = 7 なので、
//       答えは [2, 3, 5, 4, 1, 7] となります。
//
// 【例2】
// 入力: nums = [1, 2, 3, 4, 4, 3, 2, 1], n = 4
// 出力: [1, 4, 2, 3, 3, 2, 4, 1]
//
// 【例3】
// 入力: nums = [1, 1, 2, 2], n = 2
// 出力: [1, 2, 1, 2]
//
// 【制約】
// ・1 <= n <= 500
// ・nums.length == 2 * n
// ・1 <= nums[i] <= 1000
//
// 【解答欄】
class Solution {
  List<int> shuffle(List<int> nums, int n) {
    final result = <int>[];

    for (int i = 0; i < n; i++) {
      result.add(nums[i]);
      result.add(nums[i + n]);
    }

    return result;
  }
}

class Solution2 {
  List<int> shuffle(List<int> nums, int n) {
    final result = <int>[];

    for (int i = 0; i < n; i++) {
      result.add(nums[i]);
      result.add(nums[i + n]);
    }

    return result;
  }
}

/// デバッグ起動・ホットリスタート時に問題文のサンプルを検証する。
void runQ2Tests() {
  const cases = [
    (nums: [2, 5, 1, 3, 4, 7], n: 3, expected: [2, 3, 5, 4, 1, 7]),
    (nums: [1, 2, 3, 4, 4, 3, 2, 1], n: 4, expected: [1, 4, 2, 3, 3, 2, 4, 1]),
    (nums: [1, 1, 2, 2], n: 2, expected: [1, 2, 1, 2]),
  ];
  final solution = Solution();
  var passed = 0;

  debugPrint('=== Q2. Shuffle the Array ===');
  for (var i = 0; i < cases.length; i++) {
    final testCase = cases[i];
    debugPrint('Example ${i + 1}');
    debugPrint('入力: nums = ${testCase.nums}, n = ${testCase.n}');
    debugPrint('期待値: ${testCase.expected}');
    try {
      final actual = solution.shuffle(List<int>.of(testCase.nums), testCase.n);
      final success = listEquals(actual, testCase.expected);
      if (success) passed++;
      debugPrint('実際の結果: $actual');
      debugPrint('判定: ${success ? 'PASS' : 'FAIL'}');
    } catch (error, stackTrace) {
      debugPrint('判定: FAIL（例外: $error）');
      debugPrintStack(stackTrace: stackTrace);
    }
  }
  debugPrint('Q2 結果: $passed/${cases.length} PASS');
}
