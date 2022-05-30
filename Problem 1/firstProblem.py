# https://projecteuler.net/problem=1
def main(num_1, num_2, start_val, end_val):
	nums_to_check = range(start_val, end_val)
	first_num_list = []
	second_num_list = []
	third_num_list = []
	for num in nums_to_check:
		if num%num_1 == 0:
			first_num_list.append(num)
		if num%num_2 == 0:
			second_num_list.append(num)
		if num%(num_1*num_2) == 0:
			third_num_list.append(num)
	print(first_num_list)
	print(second_num_list)
	print(third_num_list)
	return sum(first_num_list) + sum(second_num_list) - sum(third_num_list)



if __name__ == "__main__":
    print(main(3, 5, 1, 1000))