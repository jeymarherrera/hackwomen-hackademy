def sumOfCubes(nums):
  suma=0;
  for i in range(0,len(nums)):
      suma = suma + (nums[i]*nums[i]*nums[i])


  return suma


print(sumOfCubes([3, 4, 5]))


class budget:
  def __init__(self, name, age, budget):
    self.name = name
    self.age = age
    self.budget = budget

def get_budgets(lists):
  suma = 0
  for i in list:
    suma = suma + i.budget
  print(suma)
  return suma