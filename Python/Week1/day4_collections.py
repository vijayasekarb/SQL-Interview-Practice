# 01 #### Create a list of employees #####


Employee_list = ['vijay','sekar']
print (Employee_list)

# 02 #### Add a new employee #####


Employee_list = ['vijay','sekar']
upd_Employee_list = Employee_list.append('balan')
print (Employee_list)

# 03 #### Remove an employee #####


Employee_list = ['vijay','sekar','balan']
upd_Employee_list = Employee_list.remove('sekar')
print (Employee_list)

# 04 #### Find the largest number in a list #####


Employee_list = [1000,2000,2555]
max_sal = max(Employee_list)
print (max_sal)

# 05 #### Find the smallest number #####


Employee_list = [1000,2000,2555]
min_sal = min(Employee_list)
print (min_sal)

# 06 #### Count list elements #####


Employee_list = [1000,2000,2555]
noofemp = len(Employee_list)
print (noofemp)

# 07 #### Reverse a list #####


Employee_list = [1000,2000,2555]
Employee_list.reverse()
print (Employee_list)

# 08 #### Sort a list #####



Employee_list = [1000,3000,2555]
Employee_list.sort()
print (Employee_list)

Employee_list = [1000,3000,2555]
Employee_list.sort()
Employee_list.reverse()
print (Employee_list)

# 09 #### Create a dictionary of a customer #####


Cust_dict = {'CName' :'vijay','age' : 41, 'csal' : 1000}
print(Cust_dict)

# 10 #### Print all dictionary keys #####


Cust_dict = {'CName' :'vijay','age' : 41, 'csal' : 1000}
print(Cust_dict.keys())

# 11 #### Print all dictionary Values#####


Cust_dict = {'CName' :'vijay','age' : 41, 'csal' : 1000}
print(Cust_dict.values())

# 12 #### Print all dictionary items #####


Cust_dict = {'CName' :'vijay','age' : 41, 'csal' : 1000}
print(Cust_dict.items())

# 13 #### Update customer salary #####

Cust_dict = {'CName' :'vijay','age' : 41, 'csal' : 1000}
Cust_dict.update(csal = 2000)
print(Cust_dict.values())

# 14 #### Remove duplicate numbers using a set #####

set1 = {'A','B','B','C'}
print(set1)

# 15 #### Find common values between two sets #####

set1={'A','B','C'}
set2={'C','D','E'}
print (set1.intersection(set2))

# 16 #### Convert list into tuple #####

list1 = ['A','B','C']
tuple1 = tuple(list1)
print(list1)
print(tuple1)

