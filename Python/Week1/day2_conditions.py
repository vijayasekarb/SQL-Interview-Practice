###########1
a = 100
print ('Number is Postive' if a >= 0 else 'Number is negative')


a = 10.56
if a >= 0:
    print ('Number is Postive')
else:
    print('Number is negative')

##########2


a = 200002
if a%2 == 0:
    print('Éven')
else:
    print('odd')

##########3


a = 10
b = 9

if a > b:
    print ("A is largest")
else:
    print ("B is largest")

##########4
a=599
b=61
c=59
if a>b and a>c:
    print('A is larger')
elif b>a and b>c:
    print('B is larger')
else:
    print('C is larger')
##########5
Age_IP = input('Enter your age ')
if int(Age_IP) >= 18:
    print('You are eligible for voting')
else:
    print('You are not eligible for voting')

##########6
Result_IP = input('Enter your Marks ')
if int(Result_IP) >= 35:
    print('You are pass')
else:
    print('You are fail')


##########7
marks_IP = input('Enter your Marks ')
if int(marks_IP) >= 90:
    print('Grade A')
elif int(marks_IP) >= 80 and int(marks_IP) < 90:
    print('Grade B')
elif int(marks_IP) >= 70 and int(marks_IP) < 80:
    print('Grade C')
else:
    print('Grade D')

##########8

Leat_year_IP = input('Enter Year ')
if int(Leat_year_IP) % 4 == 0:
    print("It's an Leap Year")
else:
    print('Not an Leap Year')


##########9

loc_ip = input('Enter your Location ')
yol_ip = input('How long you have been living in bangalore ')

if loc_ip == 'B' and int(yol_ip) > 5:
    print('You are allowed to login')
    emp_yoe = input('Enter your Years of exp ')
    if int(emp_yoe) > 3:
        print('employee eligibility is satisfied')
        existing_loan = input('Do you have any loan  ')
        if existing_loan == 'Yes':
            print('You are not eligible for loan')
        else:
            print('You are eligible for loan')
    else:
        print('employee eligibility is not satisfied')
else:
    print('You are not allowed to login')

##########10

txt = 'abcdefff gggff'
x = txt.count('ff')
print(x)


##########11

txt = 'abcdeGGGGGfff gggff'
x = txt.upper()
print(x)

##########12

txt = 'abcdeGGGGGfff gggff'
x = txt.lower()
print(x)

##########13

txt = 'abcde   GGGGGfff gg  gff  '
x = txt.replace(' ','@')
print(x)

##########14
txt = 'is gvood as vijay'
x = txt.find('v')
print(x)

#####Customer age validation#####15

Inp = input("Enter customer age ")
if int(Inp) < 18:
    print('Invalid Customer')
else:
    print('Valid Customer')


#####Salary Validation#####16

Inp = input("Enter salary ")
if int(Inp) > 100000:
    print('Premium Customer')
else:
    print('Standard Customer')

#####Email Validation#####17

Inp = input("Enter email ")
chk = Inp.find('@')
if chk > -1:
    print('Valid Email')
else:
    print('Invalid Email')







