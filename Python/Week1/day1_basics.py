print ('My Name is Vijay')
print ('My Experience is 16')
print ('My target role is Senior Cloud data testing lead')



from datetime import date
today = date.today()
print (today)

print("First Line\nSecond Line\nThird Line")



Name = 'Vijay'
Experience = 16
Salary = 1000.01
Learning_hours = 11.20
Target_Salary = '2000'
print (Name+'@@'+str(Experience),float(salary),Learning_hours,Target_Salary)


Name = input('Whats is your name ? ')
Experience = input('Whats is your Experience ? ')
Current_salary = input('Whats is your Current salary ? ')
Target_salary = input('Whats is your Targetsalary ? ')

print('Hi '+Name+',','your exp is '+Experience+' and your current salary is '+
      Current_salary+' and your target is '+Target_salary)

a=5+6
print (a)

a=5*6
print (a)

a=(200*5) /100
print (a)

a = int(120000/12)
print(a)

On_hand = 10000
exp1 = 1000
exp2 = 1000
exp3 = 1000
Balance = On_hand - (exp1+exp2+exp3)
print(Balance)

#Swapping 2 numbers

a = input('Enter number 1 ')
b = input('Enter number 2 ')
c = a
a = b
b = c
print (a , b) 

#2. Area of a rectangle
base = input('Enter base ')
height = input('Enter height ')
print('Area is '+ str((1/2)*int(base)*int(height)))

#3. Area of a Square
Size= input('Enter size ')
print('Area is '+ str(int(Size)*int(Size)))

#4. Farenheit
Celcius =  input('Enter celcius')
print('Farenhiet is ' + str((int(Celcius) * 1.8) + 32))

#5. Simple Interest
Principal =  input('Enter principal ')
Rate =  input('Enter Rate ')
Term =  input('Enter Term ')

Interest = (int(Principal)*float(Rate)*int(Term))/100

print ('Interest is ' + str(Interest))

