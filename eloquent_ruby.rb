#Eloquent Ruby -- Digging in to Arrays and Strings
#Part 1: Taking Advantage of Ruby's Smart Collections

#1. Using Variable Method Arguments
Write a method that takes any number of arguments, and prints the value of the first and last arguments, ignoring any middle ones.
#For example, using this method from IRB or Pry might look like:
variable("first", "second", "third")
first
third
nil

def variables(first,*second,third)
puts first
puts third
end




#2. Using Map and Join
#Create an array containing the strings "dog", "cat", "goat", and "capybara"
animals = ["dog","cat","goat","capybara"]
#Transform this array into a new array where each string is capitalized ("Dog", "Cat", "Goat", "Capybara")
animals_cap = animals.map do |animals|
animals.capitalize
end
#Combine this collection of capitalized strings into a single string, with each element separated by a comma and a space ("Dog, Cat, Goat, Capybara")
animals_cap.join(", ")

#3. Dangers of ! Methods
#Summarize in your own words the conventions around methods whose names end in a !
These create permanent changes to the array
#Describe in your own words the advantages and disadvantages of these methods. When would you want to use one and when would you want to avoid using one.
Advantage would be to get rid of unnecessary clutter, but the disadvantage is should you ever need it again...too late, it's gone. Use one when you wish to make a permanent change, and don't when you may need the data later on.


#Part 2: Taking Advantage of Ruby's Smart Strings
#1. Special Characters in Strings
#What does it mean to "escape" a character within a string?
Telling the string that this is text, not a command.
#Precede the character with a / to escape it, or define it as part of the variable.
#List 3 characters that have to be "escaped" when written in a string.
("), (/r), (/s)
#Use escape strings to generate a string containing your name and, on a separate line, your height in inches and feet.
#For example, mine, when printed, would look like:
Horace
5'9"
puts "Rob \n6'3\""

#2. Splitting Strings
#Take the string of your name and height you generated in the previous section and split it into an array containing your name (as the first element) and height (as the second element).
#For example my example from above would generate:
["Horace", "5'9\""]
"Rob 6'3\"".split
#Don't forget that split takes an optional argument specifying the character on which you'd like to split your string.

#3. Poking at Bytes
#We know that ultimately all data on our computers has to get represented as numbers (numbers encoded as 1's and 0's, to be precise). So how does text fit into this representation?
#In short, the machine uses tables that map characters to specific numeric values.
#Use the each_byte method on a string to discover which numeric byte values correlate to each character in your name.
#For example, "Horace" translates to:
[72, 111, 114, 97, 99, 101]
name = ("Rob")
name.each_byte do |name|
print name,(" ")
end
82 111 98 => "Rob"
