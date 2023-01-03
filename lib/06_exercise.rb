class Chores
    def initialize
        @todo_list = []
    end
    def add_chore(task)
        @todo_list.push(task)
    end
    def completed(task)
        fail "No such task." unless @todo_list.include? task
        @todo_list.delete(task)
    end
    def list
        return @todo_list
    end
end