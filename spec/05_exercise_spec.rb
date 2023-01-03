require "05_exercise"

RSpec.describe DiaryEntry do
    it "constructs" do
        diary_entry = DiaryEntry.new("one", "hello world")
        expect(diary_entry.title).to eq "one"
        expect(diary_entry.contents).to eq "hello world"
    end
    describe "#counts_words" do
        context "given a string it returns the number of words " do
            it "counts words" do
            diary_entry = DiaryEntry.new("one", "hello world")
            expect(diary_entry.count_words).to eq 2
            end
        end
            it "returns zero when string is empty" do
            diary_entry = DiaryEntry.new("one", "")
            expect(diary_entry.count_words).to eq 0
            end
    end
    describe "#reading time" do
        context "given a wpm of 0" do
            it "fails" do
                diary_entry = DiaryEntry.new("one", "hello world")
                expect{ diary_entry.reading_time(0) }.to raise_error "Reading speed must be above zero"
            end
            it "calculates reading time" do
                diary_entry = DiaryEntry.new("one", "hello world")
                expect(diary_entry.reading_time(1)).to eq 2
            end
        end
    end
    describe "#reading chunk" do
        context "given a wpm and / or minutes of 0" do
            it "fails" do
                diary_entry = DiaryEntry.new("one", "hello world")
                expect{ diary_entry.reading_chunk(0, 20) }.to raise_error "Reading speed must be above zero"
                expect{ diary_entry.reading_chunk(10, 0) }.to raise_error "Minutes to read must be above zero"
            end
        end
        context "with a contents unreadable within the time" do
            it "returns a chunk of the text" do
                diary_entry = DiaryEntry.new("one", "one two three four five six seven eight nine ten")
                chunk = diary_entry.reading_chunk(5, 1)
                expect(chunk).to eq "one two three four five"
            end
            it "returns the next chunk, next time it is called" do
                diary_entry = DiaryEntry.new("one", "one two three four five six seven eight nine ten")
                diary_entry.reading_chunk(5, 1)
                chunk = diary_entry.reading_chunk(5, 1)
                 expect(chunk).to eq "six seven eight nine ten"
            end
            it "restarts after reading the whole contents" do
                diary_entry = DiaryEntry.new("one", "one two three four five six seven eight nine ten")
                diary_entry.reading_chunk(5, 1)
                diary_entry.reading_chunk(5, 1)
                chunk = diary_entry.reading_chunk(3, 1)
                expect(chunk).to eq "one two three"   
            end
        end
    end
end