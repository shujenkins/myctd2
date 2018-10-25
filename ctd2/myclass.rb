# For test 1, myclass.rb needs to declare a class called MyClass.
# It should have an initialize method that creates @my_hash, an empty hash.
# It should also have a render method that puts the hash to the screen.

class MyClass
    def initialize
        @my_hash = Hash.new
        
    end
    
    def render
        puts "#{@my_hash}"
    end

# For test 2, MyClass needs an additional method, add(key,value).  This
# will add a key and value to @my_hash.

    def add(key,value)
        @my_hash[key] = value
        
    end
    
# For test 5, add a new method to MyClass, called my_array.  This method
# should return an array of all the values from my_hash.    

    def my_array
    @my_hash.map { |key, value| @my_hash[key] = value }
    end
    
end

# For test 3, myclass.rb needs an additional class, MyClassB.  It should be
# a child class of MyClass.  ( class MyClassB < MyClass ).  But for the
# new class, it should check that each value to be added to the hash is an
# integer (use the is_a? method).  If it isn't, the add returns false.  If
# the value is an integer, the new entry should be added to the hash and
# the add method should return true.

class MyClassB < MyClass
    
# For test 4, we want to add an attr_accessor for the my_hash variable to
# MyClassB.
    
    attr_accessor :my_hash
    
    def is_value_a_integer
    end
    
=begin
For test 6, add a new method to MyClassB, called my_array_2.  This method
should return an array of all of the values from my_hash, but each should
be multiplied times 3.
Hint 1: To avoid repeating yourself, you should call the my_array method
within my_array_2.
Hint 2: To multiply, you can use the Array each method or the array map
method.
Hint 3: If you don't remember these methods, you can google them. No
programmer remembers everything.  Go to
https://ruby-doc.org/core-2.2.0/Array.html
=end

    def my_array_2 
        @my_hash.map { |key, value| @my_hash[key] = value *= 3}
        
    end
end