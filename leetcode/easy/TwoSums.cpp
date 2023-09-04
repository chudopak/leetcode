#include <vector>
#include <map>
#include <iostream>
#include <utility>

using std::vector;
using std::map;

class Solution {
public:
    vector<int> twoSum(vector<int>& nums, int target) {
		vector<int> res;
		map<int,int> hash;
		for (int i = 0; i < nums.size(); i++) {
			int diff = target - nums[i];
			map<int,int>::iterator it = hash.find(diff);
			if (it != hash.end()) {
				res.push_back(it->second);
				res.push_back(i);
				return (res);
			}
			hash.insert(std::make_pair(nums[i], i));
		}
		return (res);
    }
};