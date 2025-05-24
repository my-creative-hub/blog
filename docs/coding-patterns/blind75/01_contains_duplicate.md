# Problem: Contains Duplicate [Easy]

### Variation 1

[View the problem in Leetcode](https://leetcode.com/problems/contains-duplicate/description/){:target="\_blank"}<br>
[Solution walk through by Neetcode](https://www.youtube.com/watch?v=3OamzN90kPg&ab_channel=NeetCode){:target="\_blank"}

**Given** an integer array `nums`, return `true` if any value appears **at least twice**, and `false` if every element is distinct.

<b>Example</b>

```python
Input: nums = [1, 2, 3, 1]
Output: True
```

---

#### Method 1: Brute Force

We compare every pair of elements in the array.

- **Approach:** Loop through each element `nums[i]` and compare it with every other `nums[j]` for `j > i`.
- **Time Complexity:** O(n²)
- **Space Complexity:** O(1)

> This is inefficient and not ideal for large inputs.

---

#### Method 2: Sort and Compare

We sort the array first. In a sorted array, any duplicates will appear consecutively.

```python
nums.sort()
for i in range(1, len(nums)):
    if nums[i] == nums[i - 1]:
        return True
return False
```

- **Time Complexity:** O(n log n)
- **Space Complexity:** O(1) (assuming in-place sorting)

> This is better than brute force but not optimal in terms of time.

---

#### Method 3: Hash Set

We use a hash set to track seen elements. If we encounter a number already in the set, we return `True`.

```python
def containsDuplicate(nums):
    visited = set()
    for num in nums:
        if num in visited:
            return True
        visited.add(num)
    return False
```

- **Time Complexity:** O(n)
- **Space Complexity:** O(n)

> This is the most efficient and commonly accepted approach in interviews.

---

## Variation 2

[View the problem in Leetcode](https://leetcode.com/problems/contains-duplicate-ii/description/){:target="\_blank"}<br>
[Solution walk through by Neetcode](https://www.youtube.com/watch?v=ypn0aZ0nrL4&ab_channel=NeetCodeIO){:target="\_blank"}

**Given** an integer array `nums` and an integer `k`, return `true` if there are two distinct indices `i` and `j` in the array such that:

- `nums[i] == nums[j]`
- `abs(i - j) <= k`

---

<b>Example</b>

```python
Input: nums = [1, 2, 3, 1], k = 3
Output: True
```

---

#### 💡 Sliding Window with Set

We maintain a sliding window of the last `k` elements using a set. As we iterate through `nums`, we check if the current number already exists in the window. If yes, return `True`. If not, add it to the window. If the window exceeds size `k`, remove the leftmost element.

```python
def containsNearbyDuplicate(nums, k):
    if k <= 0:
        return False

    window = set()
    for r in range(len(nums)):
        if r > k:
            window.remove(nums[r - k - 1])
        if nums[r] in window:
            return True
        window.add(nums[r])
    return False
```

- **Time Complexity:** O(n)
- **Space Complexity:** O(k)

> This is an elegant use of the sliding window technique and offers both time and space efficiency.

#### 🧠 Interview Tip

When discussing this problem, highlight:

- Set operations are O(1).
- You limit the memory usage to k elements.
- Alternative brute-force solution would be O(nk) time, which is inefficient.
