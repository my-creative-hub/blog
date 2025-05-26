# From Chaos to Code: Patterns That Tame Complexity

## 1. Two Pointers

**Detailed Explanation:**  
The Two Pointers pattern involves using two pointers to traverse a data structure, usually an array or string. The pointers can move in the same direction or toward each other from both ends. This technique is used to solve problems in linear time, avoiding nested loops and reducing unnecessary computations.

**Typical Movements:**

- Left-to-right (e.g., merging sorted arrays)
- From both ends inward (e.g., checking for palindrome)
- Fixed one pointer while the other moves (e.g., removing duplicates)

**Time Complexity:** O(n)  
**Space Complexity:** O(1)

**Example Problems:**

- [Valid Palindrome – LeetCode 125](https://leetcode.com/problems/valid-palindrome/)
- [Two Sum II - Input Array Is Sorted – LeetCode 167](https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/)
- [Remove Duplicates from Sorted Array – LeetCode 26](https://leetcode.com/problems/remove-duplicates-from-sorted-array/)
- [Squares of a Sorted Array – LeetCode 977](https://leetcode.com/problems/squares-of-a-sorted-array/)
- [Merge Sorted Array – LeetCode 88](https://leetcode.com/problems/merge-sorted-array/)
- Bonus: [Reverse String – LeetCode 344](https://leetcode.com/problems/reverse-string/)

**Interview Tip:**  
Clarify pointer behavior upfront. Explain how the pointers will move (toward each other, one catching up, etc.). Highlight that this pattern avoids nested loops and achieves linear time complexity.

---

## 2. Sliding Window

**Detailed Explanation:**  
The Sliding Window pattern is used to reduce nested loops into a single pass by maintaining a window over the input — typically an array or string. The window can be fixed or dynamic in size and is slid by adjusting start and/or end pointers.

**Types:**

- Fixed-size sliding window
- Variable-size sliding window

**Time Complexity:** O(n)  
**Space Complexity:** O(1) for basic counters, O(k) for auxiliary structures

**Example Problems:**

- [Longest Substring Without Repeating Characters – LeetCode 3](https://leetcode.com/problems/longest-substring-without-repeating-characters/)
- [Maximum Average Subarray I – LeetCode 643](https://leetcode.com/problems/maximum-average-subarray-i/)
- [Minimum Size Subarray Sum – LeetCode 209](https://leetcode.com/problems/minimum-size-subarray-sum/)
- [Permutation in String – LeetCode 567](https://leetcode.com/problems/permutation-in-string/)
- [Longest Repeating Character Replacement – LeetCode 424](https://leetcode.com/problems/longest-repeating-character-replacement/)
- Bonus: [Sliding Window Maximum – LeetCode 239](https://leetcode.com/problems/sliding-window-maximum/)

**Interview Tip:**  
Differentiate between fixed and dynamic windows when explaining. Emphasize how this pattern converts a brute-force nested loop into a linear scan, and use real-world examples like live-stream data processing.

---
