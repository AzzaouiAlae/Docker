from random import randint

min_num = input('Please enter the min number: ')
max_num = input('Please enter the max number: ')

min_number = int(min_num)
max_number = int(max_num)

if (max_number < min_number): 
  print('Invalid input - shutting down...')
else:
  rnd_number = randint(min_number, max_number)
  print(rnd_number)

