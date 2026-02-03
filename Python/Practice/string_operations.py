#String  Concatination

str1="My name is "
str2="Siddharth"

newstr=str1+str2
print(newstr)

l_string=len(newstr)
print("Length of my string is:",l_string)

#slicing a string
str="Siddharth Sunil Vadgaonkar"
print("First word from str =",str[0:9])
print("Middle words from str =",str[10:15])
print("Last word from str=",str[16:])

# String Functions
str="Siddharth Sunil Vadgaonkar"

print("Str is ends with =",str.endswith("kar"))

print("Starts with=",str.startswith("Sid"))

print("Capitalize function=",str.capitalize())  #It do a first letter as a capital

print(str.upper())

print(str.lower())

print("Finds the letter=",str.find("dd"))  #Returning Index

print("Count the repetation=",str.count("s"))