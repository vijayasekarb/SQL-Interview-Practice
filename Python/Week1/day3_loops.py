# 01 #### Print numbers 1–20
 #####
for x in range(21):
        print(x)
  
# 02 #### Print even numbers
 #####
for x in range(1,11):
    if x%2 == 0:
        print(x)


# 03 #### Print even numbers
 #####
for x in range(1,11):
    if x%2 != 0:
        print(x)


# 04 #### Sum of numbers 1–100 #####
sum1 = 0
for x in range(1,101):
    sum1 += x
print(sum1)
# 05 #### 
Multiplication table #####

y=0
for x in range(1,11):
    y = x*2
    print(x,'* 2 equals ',y)

# 06 #### Reverse counting #####

sum1 = 0
for x in range(6, 0, -1):
    sum1 += x
print(sum1)

# 06 #### Print each character in a string #####



for a in 'vijay':
    print(a,end=' ')

# 07 #### Count vowels #####



count1 = 0
str1 = ['a','e','i','o','u']
for a in 'viaejayobu':
    if a in str1:
        count1 += 1
print(count1)
# 08 #### 
Count digits in a string #####




count1 = 0
num1 = [1,2,3,4,5,6,7,8,9]
for a in 'viae1ttt789ja3yo5bu':
    if a in str(num1):
        count1 += 1
print(count1)


# 09 #### 
Count uppercase letters #####



import string
count1 = 0
num1 = list(string.ascii_uppercase)
for a in 'viae1tAtt789jBa3yCo5Dbu':
    if a in str(num1):
        count1 += 1
print(count1)



# 10#### Print star pattern #####


for i in range(1, 6):
      for j in range(i):
          print('*',end='')
      print()

# 11#### Print reverse star pattern #####

for i in range(6, 1,-1):
      for j in range(i):
          print('*',end='')
      print()
