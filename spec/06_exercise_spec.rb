require "06_exercise"

RSpec.describe Chores do
    context "when we add tasks to the list" do
        it "adds chore to list" do
            chores = Chores.new
            chores.add_chore("wash up")
            expect(chores.list).to eq ["wash up"]
        end
        it "adds 2 chores to list" do
            chores = Chores.new
            chores.add_chore("wash up")
            chores.add_chore("hoover")
            expect(chores.list).to eq ["wash up", "hoover"]
        end
    end
    context "when we complete a task" do
        it "removes task from the list" do
        chores = Chores.new
        chores.add_chore("wash up") 
        chores.add_chore("hoover") 
        chores.completed("wash up") 
        expect(chores.list).to eq ["hoover"]
        end
    end
    context "when a task is given that is not on the list" do
        it "fails" do
        chores = Chores.new
        chores.add_chore("wash up") 
        chores.add_chore("hoover") 
        expect {chores.completed("dust")}.to raise_error "No such task."
        end
    end
end