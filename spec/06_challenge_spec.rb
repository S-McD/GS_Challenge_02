require "06_challenge"

RSpec.describe MusicHistory do
    context "adding songs to playlist" do
        it "add one song" do
            song_list = MusicHistory.new
            song_list.add_track("3s and 7s")
            expect(song_list.tracklist).to eq ["3s and 7s"]
        end
        it "add two songs" do
            song_list = MusicHistory.new
            song_list.add_track("3s and 7s")
            song_list.add_track("Reptillia")
            expect(song_list.tracklist).to eq ["3s and 7s", "Reptillia"] 
        end
        it "add repeat songs" do
            song_list = MusicHistory.new
            song_list.add_track("3s and 7s")
            song_list.add_track("Reptillia")
            song_list.add_track("3s and 7s")
            expect(song_list.tracklist).to eq ["3s and 7s", "Reptillia", "3s and 7s"]
        end
    end
end