myGlobalVa = "Morning"
# My first code
print("Hello world")

# Python Variables
a = 5      # a is type of int
z = "Python"    # z is type of string

_testvar = 10

print(a)
print(z)

print("Good"+" "+myGlobalVa)

# Data types

b = 5
print(type(b))

b = 5.2
print(type(b))

b = 5j
print(type(b))

b = ["c", "c++", "python"]
print(type(b))

b = ("c", "c++", "python")
print(type(b))

b = {"name" : "Shree", "rol" : "44","sub" : "python"}
print(type(b))

# Data type casting

c = int(5.6)
print(c)

d = float(8)
print(d)

e = str(3.0)
print(e)
print(type(e))

# Python string operations

x = "Hello world"
print(x)
print(x[0])
print(x[1])
print(x[0],x[1])

#Aadhar

myAadharNo = "1234567890"
print(len(myAadharNo))
print("My Aadhar digit length is: "+str(len(myAadharNo)))

# checkin partial string into a complete text

txt = "Training Solutions we offer"
search_txt = "Solutions"

print(search_txt in txt)

# Python operator

# arithmetic

print(10 + 10)
print(10 - 10)
print(10 * 10)
print(10 / 10)
print(10 % 3)

# assignment

a = 1

a += 10  # a = a + 10
print(a)

x = 2
b = 2
# if else
if x > 0:
    print("x is > 0")

if x == b:
    print("x == b")

if x > 0 and x > 5:
    print("x is > 0")

if x > 0 or x > 5:
    print("x is > 0")

a = 5
b = 5
if a > b:
    print("a is > b")
elif a == b:
    print("a is = b")
else:
    print("a is < b")

# single line if
a = 6
b = 5
if a > b: print("a is > b")

cet = 98
neet = 96
my_score = 97

if my_score > neet or my_score > cet:
    print("I can get an IIT ")

# while loop
a = 1
while a < 6:
    print(a)
    a += 1
    if a == 3:
        break
# For loop
cars = ["tata", "toyota", "ford"]
for i in cars:
    print(i)

cars = ["tata", "toyota", "BMW", "ford"]
for i in cars:
    print(i)
    if i == "BMW":
        break

cars = ["tata", "toyota", "BMW", "ford"]
for i in cars:
    print(i)
    if i == "BMW":
       continue

# Range
for a in range(20):
    print(a)
print("\n")

for a in range(5, 20):
    print(a, end=" ")
print("\n")

for a in range(5, 20, 3):
    print(a, end=" ")
print("\n")

# list

cars = ["tata", "toyota", "BMW", "ford"]
print(cars)  # print list
for i in cars:
    print(i)

print(len(cars))
print(type(cars))

# getting single list
print(cars[0])
print("\n")

# change present item in list
cars = ["tata", "toyota", "BMW", "ford"]
cars[1] = "honda"
print(cars)
print("\n")

# how to change a range of item in list
cars = ["tata", "toyota", "BMW", "ford"]
cars[1:3] = ["honda", "kia", "hector"]
print(cars)
print("\n")

# to add an item to list
cars.append("tata")
print(cars)
print(len(cars))

# sort

rollnum = [22, 34, 45, 2, 29, 41]
rollnum.sort()
print(rollnum)

# tuples
cars = ("tata", "toyota", "BMW", "ford")
print(cars)
print(len(cars))
print(type(cars))
print("\n")

# change value of tuple
mycar = list(cars)
mycar[1] = "bullet"
cars = tuple(mycar)
print(cars)

# add value to tuple
mycar = list(cars)
mycar.append("cycle")
cars = tuple(mycar)
print(cars)


# loop through tuple

for i in cars:
    print(i)

#Dictioneries
mycar = {

    "Name": "Shree",
    "place": "Mysuru",
    "state": "Karnataka",
    "Country": "India",
}

print(mycar)

# how to get  item in dic

print(mycar["state"])
print(mycar["Country"])

# Duplicate key is not allowed in dict
mycar = {

    "Name": "Shree",
    "place": "Mysuru",
    "state": "Karnataka",
    "Country": "India",
    "Country": "US",
}

print(mycar)
print(len(mycar))

# add item to dict
mycar = {

    "Name": "Shree",
    "place": "Mysuru",
    "state": "Karnataka",
    "Country": "India",
}
mycar["company"] = "Ag"
print(mycar)

# remove item from dict
mycar.pop("place")
print(mycar)

#loop through dict
for x in mycar:
    print(x)

for x in mycar:
    print(mycar[x])

