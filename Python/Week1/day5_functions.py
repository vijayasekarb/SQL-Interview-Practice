#1######

def àddfunc():
    a=10;
    b=20;
    c= a+b;
    print(c)
àddfunc()


def àddfunc(a,b):
    return a+b;
print (àddfunc(10,20))

#2######

def empdetails(**kwargs):
    print(kwargs)
empdetails(émpname = 'vijay' ,age = 41 ,salary = 1000)

#3######

def cutsdetails(**kwargs):
    print(kwargs)
cutsdetails(émpname = 'vijay' ,age = 41 )

#4######

def salarycalc(*args):
    a= sum(args)
    print(a)

salarycalc(1000,2000 )

#5######

def salarycalc(*args):
    a1= max(args)
    print(a1)
salarycalc(100,5)

#6######Welcome function
#######

def welcome_func():
    print('Welcome Vijay')
welcome_func()

#7######Addition function#######

def add_func():
    a = 10
    b = 20
    c = a+b
    print(c)
add_func()



#8######Subtraction function
#######


def sub_func():
    a = 10
    b = 20
    c = a-b
    print(c)
sub_func()

#9######Multiplication function#######

def mul_func():
    a = 10
    b = 20
    c = a*b
    print(c)
mul_func()



#10######Division function
#######


def div_func():
    a = 10
    b = 20
    c = a/b
    print(c)
div_func()


#11######Employee details function
#######

def empdetails(**kwargs):
    print(kwargs)
empdetails(émpname = 'vijay' ,age = 41 ,salary = 1000)

#12######Customer validation function
#######
def cust_validation(*args):
    print(args)
    for i in args:
        if len(i) == 3 :
            print(i,'Valid')
        else:
            print(i, 'in Valid')

cust_validation('C01','C02','C1')

#13######Email validation function
#######

def email_validation(*args):
    print(args)
    for i in args:
        if i.find('@') < 0  :
            print(i,'in Valid')
        else:
            print(i, 'Valid')

email_validation('C@1','C@2','C1')

#14######Grade calculation function
#######

def Grade_calc(*args):
    print(args)
    for i in args:
        if i <= 10:
            print(i,'Grade C')
        elif i <= 20:
            print(i, 'Grade B')
    else:
        print(i, 'Grade A')

Grade_calc(10,20,30)

#15######Salary bonus function
#######

def salary_bonus(bonus=100,**kwargs):
    print(kwargs)
    print(kwargs.keys())
    print(kwargs.values())
    for i in kwargs.keys():
        if i == 'city':
            for j in kwargs.values():
                if j == 'Bangalore':
                    print(bonus)
salary_bonus(ename = 'vijay',city = 'Bangalore',salary = 1000)

#16######Largest number function#######
def Grade_calc(*args):
    print(args)
    x = max(args)
    print(x)
Grade_calc(10,20,30)

#17######Smallest number function
#######

def Grade_calc(*args):
    print(args)
    x = min(args)
    print(x)
Grade_calc(10,20,30)

#18######Age validation function
#######

def age_val():
    i = input('Enter Age ')
    if int(i) > 18:
        print('Valid age')
    else:
        print('inValid age')
age_val()

#19######Even/Odd function
#######
def eveodd_fn():
    i = input('Enter number ')
    if int(i) % 2 == 0:
        print('Even #')
    else:
        print('Odd #')
eveodd_fn()