{{PROBLEM}} Class Design Recipe
1. Describe the Problem

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

2. Design the Class Interface

class Chores
  def initialize
    # Add array as a global variable
  end

  def add_chore(task) # task is a string
    # adds task to global array
    # no return value
  end

  def list
    # return list of tasks
    # except completed ones
  end

  def completed(task)
    # marks task as complete
    # fails if task not in list
  end
end

3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.

# EXAMPLE

# 1
chores = Chores.new
chores.add_chore("wash up")
chores.list => ["wash up"]

# 2
chores = Chores.new
chores.add_chore("wash up")
chores.add_chore("hoover")
chores.list => ["wash up", "hoover"] 

# 3
chores = Chores.new
chores.add_chore("wash up") 
chores.add_chore("hoover") 
chores.completed("wash up") 
chores.list => ["hoover"]

# 4
chores = Chores.new
chores.add_chore("wash up") 
chores.add_chore("hoover") 
chores.completed("dust") 
chores.list => fails "No such task."

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.

