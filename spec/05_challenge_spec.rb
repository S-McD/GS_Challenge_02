require "05_challenge"

RSpec.describe GrammarStats do
    describe "#check" do
        it "checks if the string has correct grammar" do
            grammar_stats = GrammarStats.new
            check = grammar_stats.check("Hello, world!")
            expect(check).to eq true
        end
        it "checks if the string has correct grammar" do
            grammar_stats = GrammarStats.new
            check = grammar_stats.check("hello, world")
            expect(check).to eq false
        end
    end
    describe "#percentage_good" do
        it "returns the percentage of texts that passed the check method" do
            grammar_stats = GrammarStats.new
            grammar_stats.check("Hello, world!")
            check = grammar_stats.percentage_good
            expect(check).to eq 100    
        end
        it "returns the updated percentage of texts that passed the check method when another text is checked" do
            grammar_stats = GrammarStats.new
            grammar_stats.check("Hello, world!")
            grammar_stats.check("hello, world")
            check = grammar_stats.percentage_good
            expect(check).to eq 50    
        end
    end
end