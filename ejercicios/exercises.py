def sumOfCubes(nums):
  suma=0;
  for i in range(0,len(nums)):
      suma = suma + (nums[i]*nums[i]*nums[i])


  return suma


print(sumOfCubes([3, 4, 5]))