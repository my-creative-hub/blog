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

- [Valid Palindrome – LeetCode 125](https://leetcode.com/problems/valid-palindrome/){:target="\_blank"}
- [Two Sum II - Input Array Is Sorted – LeetCode 167](https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/){:target="\_blank"}
- [Remove Duplicates from Sorted Array – LeetCode 26](https://leetcode.com/problems/remove-duplicates-from-sorted-array/){:target="\_blank"}
- [Squares of a Sorted Array – LeetCode 977](https://leetcode.com/problems/squares-of-a-sorted-array/){:target="\_blank"}
- [Merge Sorted Array – LeetCode 88](https://leetcode.com/problems/merge-sorted-array/){:target="\_blank"}
- Bonus: [Reverse String – LeetCode 344](https://leetcode.com/problems/reverse-string/){:target="\_blank"}

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

- [Longest Substring Without Repeating Characters – LeetCode 3](https://leetcode.com/problems/longest-substring-without-repeating-characters/){:target="\_blank"}
- [Maximum Average Subarray I – LeetCode 643](https://leetcode.com/problems/maximum-average-subarray-i/){:target="\_blank"}
- [Minimum Size Subarray Sum – LeetCode 209](https://leetcode.com/problems/minimum-size-subarray-sum/){:target="\_blank"}
- [Permutation in String – LeetCode 567](https://leetcode.com/problems/permutation-in-string/){:target="\_blank"}
- [Longest Repeating Character Replacement – LeetCode 424](https://leetcode.com/problems/longest-repeating-character-replacement/){:target="\_blank"}
- Bonus: [Sliding Window Maximum – LeetCode 239](https://leetcode.com/problems/sliding-window-maximum/){:target="\_blank"}

**Interview Tip:**  
Differentiate between fixed and dynamic windows when explaining. Emphasize how this pattern converts a brute-force nested loop into a linear scan, and use real-world examples like live-stream data processing.

---

## 3. Fast and Slow Pointers

**Detailed Explanation:**  
The Fast and Slow Pointers pattern (also known as the "tortoise and hare" approach) uses two pointers that traverse the data structure at different speeds. One moves faster than the other, typically at twice the speed. This technique is highly effective for detecting cycles, finding midpoints, or tracing entry points into loops in linked structures.

**Common Uses:**

- Cycle detection
- Finding the middle of a linked list
- Detecting convergence in iterative functions

**Time Complexity:** O(n)  
**Space Complexity:** O(1)

**Example Problems:**

- [Linked List Cycle – LeetCode 141](https://leetcode.com/problems/linked-list-cycle/){:target="\_blank"}
- [Middle of the Linked List – LeetCode 876](https://leetcode.com/problems/middle-of-the-linked-list/){:target="\_blank"}
- [Happy Number – LeetCode 202](https://leetcode.com/problems/happy-number/){:target="\_blank"}
- [Linked List Cycle II – LeetCode 142](https://leetcode.com/problems/linked-list-cycle-ii/){:target="\_blank"}
- [Find the Duplicate Number – LeetCode 287](https://leetcode.com/problems/find-the-duplicate-number/){:target="\_blank"}

**Interview Tip:**  
Explain why the fast pointer moves 2x faster — to "lap" the slow pointer and ensure a meeting point inside a cycle. Use this pattern when you're constrained on space and can't afford hash maps or sets. Impress your interviewer by explaining the mathematical intuition behind the intersection point inside a cycle.

---

## 4. Merge Intervals

**Detailed Explanation:**  
The Merge Intervals pattern is used when dealing with a collection of overlapping intervals — commonly seen in scheduling problems, calendar events, or range merging tasks.

**Key Steps:**

1. Sort the intervals based on the start time.
2. Merge overlapping intervals using a linear scan.

**Time Complexity:** O(n log n)  
**Space Complexity:** O(n)

**Example Problems:**

- [Merge Intervals – LeetCode 56](https://leetcode.com/problems/merge-intervals/){:target="\_blank"}
- [Insert Interval – LeetCode 57](https://leetcode.com/problems/insert-interval/){:target="\_blank"}
- [Meeting Rooms – LeetCode 252](https://leetcode.com/problems/meeting-rooms/){:target="\_blank"}
- [Meeting Rooms II – LeetCode 253](https://leetcode.com/problems/meeting-rooms-ii/){:target="\_blank"}
- [Interval List Intersections – LeetCode 986](https://leetcode.com/problems/interval-list-intersections/){:target="\_blank"}

**Interview Tip:**  
Always mention that sorting is the first step — interviewers want to know that you understand the importance of organizing the input before attempting to merge. Bonus: If asked to solve in-place, mention that you can use the input list to reduce space usage depending on constraints.

---

## 5. Cyclic Sort

**Detailed Explanation:**  
Used when working with arrays of known range (like 1 to n). You place each number at the index `number - 1` using swaps.

**Time Complexity:** O(n)  
**Space Complexity:** O(1)

**Example Problems:**

- [Find All Numbers Disappeared in an Array – LeetCode 448](https://leetcode.com/problems/find-all-numbers-disappeared-in-an-array/)
- [Find the Duplicate Number – LeetCode 287](https://leetcode.com/problems/find-the-duplicate-number/)
- [Set Mismatch – LeetCode 645](https://leetcode.com/problems/set-mismatch/)
- [First Missing Positive – LeetCode 41](https://leetcode.com/problems/first-missing-positive/)
- [Missing Number – LeetCode 268](https://leetcode.com/problems/missing-number/)

**Interview Tip:** Use this when numbers are in a bounded range and no extra space is allowed.

---

## 6. In-place Reversal of Linked List

**Detailed Explanation:**  
Reverse a linked list or part of it by changing `next` pointers.

**Time Complexity:** O(n)  
**Space Complexity:** O(1)

**Example Problems:**

- [Reverse Linked List – LeetCode 206](https://leetcode.com/problems/reverse-linked-list/)
- [Reverse Linked List II – LeetCode 92](https://leetcode.com/problems/reverse-linked-list-ii/)
- [Reverse Nodes in k-Group – LeetCode 25](https://leetcode.com/problems/reverse-nodes-in-k-group/)
- [Palindrome Linked List – LeetCode 234](https://leetcode.com/problems/palindrome-linked-list/)
- [Remove Nth Node From End of List – LeetCode 19](https://leetcode.com/problems/remove-nth-node-from-end-of-list/)

**Interview Tip:** Be precise with pointer manipulations and handle edge cases.

---

## 7. Tree Traversals (DFS/BFS)

**Detailed Explanation:**  
Visit each node in a tree using DFS (Preorder, Inorder, Postorder) or BFS (Level-order).

**Time Complexity:** O(n)  
**Space Complexity:** O(h) for DFS, O(w) for BFS

**Example Problems:**

- [Binary Tree Inorder Traversal – LeetCode 94](https://leetcode.com/problems/binary-tree-inorder-traversal/)
- [Binary Tree Level Order Traversal – LeetCode 102](https://leetcode.com/problems/binary-tree-level-order-traversal/)
- [Binary Tree Zigzag Level Order Traversal – LeetCode 103](https://leetcode.com/problems/binary-tree-zigzag-level-order-traversal/)
- [Maximum Depth of Binary Tree – LeetCode 104](https://leetcode.com/problems/maximum-depth-of-binary-tree/)
- [Same Tree – LeetCode 100](https://leetcode.com/problems/same-tree/)

**Interview Tip:** Explain your traversal order and recursion/iteration approach clearly.

---

## 8. DFS/BFS on Graphs

**Detailed Explanation:**  
Use DFS or BFS to explore graph nodes — helpful in pathfinding and connectivity.

**Time Complexity:** O(V + E)  
**Space Complexity:** O(V)

**Example Problems:**

- [Number of Islands – LeetCode 200](https://leetcode.com/problems/number-of-islands/)
- [Clone Graph – LeetCode 133](https://leetcode.com/problems/clone-graph/)
- [Pacific Atlantic Water Flow – LeetCode 417](https://leetcode.com/problems/pacific-atlantic-water-flow/)
- [Course Schedule – LeetCode 207](https://leetcode.com/problems/course-schedule/)
- [Word Ladder – LeetCode 127](https://leetcode.com/problems/word-ladder/)

**Interview Tip:** Clarify graph type and direction. Use visited set to avoid cycles.

---

## 9. Backtracking

**Detailed Explanation:**  
Recursive brute-force with state rollback. Build up solutions, and backtrack if constraints fail.

**Time Complexity:** O(2^n) or O(n!)  
**Space Complexity:** O(n)

**Example Problems:**

- [Subsets – LeetCode 78](https://leetcode.com/problems/subsets/)
- [Permutations – LeetCode 46](https://leetcode.com/problems/permutations/)
- [Combination Sum – LeetCode 39](https://leetcode.com/problems/combination-sum/)
- [N-Queens – LeetCode 51](https://leetcode.com/problems/n-queens/)
- [Sudoku Solver – LeetCode 37](https://leetcode.com/problems/sudoku-solver/)

**Interview Tip:** Clearly show the decision tree and pruning conditions.

---

## 10. Binary Search

**Detailed Explanation:**  
Divide and conquer technique used on sorted arrays or search spaces. Cuts input in half.

**Time Complexity:** O(log n)  
**Space Complexity:** O(1)

**Example Problems:**

- [Binary Search – LeetCode 704](https://leetcode.com/problems/binary-search/)
- [Search in Rotated Sorted Array – LeetCode 33](https://leetcode.com/problems/search-in-rotated-sorted-array/)
- [Find Minimum in Rotated Sorted Array – LeetCode 153](https://leetcode.com/problems/find-minimum-in-rotated-sorted-array/)
- [Median of Two Sorted Arrays – LeetCode 4](https://leetcode.com/problems/median-of-two-sorted-arrays/)
- [Find Peak Element – LeetCode 162](https://leetcode.com/problems/find-peak-element/)

**Interview Tip:** Mention the use of binary search on answer space for optimization.

---

## 11. Heap / Priority Queue

**Detailed Explanation:**  
Use heap to dynamically access smallest/largest elements efficiently.

**Time Complexity:** O(log k)  
**Space Complexity:** O(k)

**Example Problems:**

- [Kth Largest Element in an Array – LeetCode 215](https://leetcode.com/problems/kth-largest-element-in-an-array/)
- [Top K Frequent Elements – LeetCode 347](https://leetcode.com/problems/top-k-frequent-elements/)
- [Merge k Sorted Lists – LeetCode 23](https://leetcode.com/problems/merge-k-sorted-lists/)
- [Find Median from Data Stream – LeetCode 295](https://leetcode.com/problems/find-median-from-data-stream/)
- [Task Scheduler – LeetCode 621](https://leetcode.com/problems/task-scheduler/)

**Interview Tip:** Clarify min-heap vs max-heap and justify use vs sorting.

---

## 12. Greedy

**Detailed Explanation:**  
Make the best local decision hoping it leads to a global optimum.

**Time Complexity:** O(n log n)  
**Space Complexity:** O(1) or O(n)

**Example Problems:**

- [Jump Game – LeetCode 55](https://leetcode.com/problems/jump-game/)
- [Jump Game II – LeetCode 45](https://leetcode.com/problems/jump-game-ii/)
- [Partition Labels – LeetCode 763](https://leetcode.com/problems/partition-labels/)
- [Gas Station – LeetCode 134](https://leetcode.com/problems/gas-station/)
- [Insert Interval – LeetCode 57](https://leetcode.com/problems/insert-interval/)

**Interview Tip:** Justify greedy validity; when it fails, fall back to DP.

---

## 13. Dynamic Programming (DP)

**Detailed Explanation:**  
Break problems into subproblems, cache solutions. Two styles: memoization and tabulation.

**Time Complexity:** O(n), O(n²), or O(n×m)  
**Space Complexity:** O(n) or O(n×m)

**Example Problems:**

- [Climbing Stairs – LeetCode 70](https://leetcode.com/problems/climbing-stairs/)
- [Longest Palindromic Substring – LeetCode 5](https://leetcode.com/problems/longest-palindromic-substring/)
- [Coin Change – LeetCode 322](https://leetcode.com/problems/coin-change/)
- [Longest Increasing Subsequence – LeetCode 300](https://leetcode.com/problems/longest-increasing-subsequence/)
- [Partition Equal Subset Sum – LeetCode 416](https://leetcode.com/problems/partition-equal-subset-sum/)

**Interview Tip:** Discuss subproblem state, recurrence relation, and space optimizations.

---

## 14. Bit Manipulation

**Detailed Explanation:**  
Work at bit-level using XOR, shifts, AND, OR, etc. Useful for toggling, checking, and finding unique elements.

**Time Complexity:** O(1) to O(n)  
**Space Complexity:** O(1)

**Example Problems:**

- [Single Number – LeetCode 136](https://leetcode.com/problems/single-number/)
- [Number of 1 Bits – LeetCode 191](https://leetcode.com/problems/number-of-1-bits/)
- [Counting Bits – LeetCode 338](https://leetcode.com/problems/counting-bits/)
- [Bitwise AND of Numbers Range – LeetCode 201](https://leetcode.com/problems/bitwise-and-of-numbers-range/)
- [Missing Number – LeetCode 268](https://leetcode.com/problems/missing-number/)

**Interview Tip:** Great for space savings. Know how XOR cancels values.

---

## 15. Trie (Prefix Tree)

**Detailed Explanation:**  
Efficient prefix-based string retrieval structure. Tree where each path represents a word.

**Time Complexity:** O(L)  
**Space Complexity:** O(n × L)

**Example Problems:**

- [Implement Trie – LeetCode 208](https://leetcode.com/problems/implement-trie-prefix-tree/)
- [Word Search II – LeetCode 212](https://leetcode.com/problems/word-search-ii/)
- [Replace Words – LeetCode 648](https://leetcode.com/problems/replace-words/)
- [Add and Search Word – LeetCode 211](https://leetcode.com/problems/add-and-search-word-data-structure-design/)
- [Longest Word in Dictionary – LeetCode 720](https://leetcode.com/problems/longest-word-in-dictionary/)

**Interview Tip:** Use Trie if you're checking prefixes frequently or replacing dictionary words efficiently.

---
