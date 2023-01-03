{{PROBLEM}} Class Design Recipe
1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

2. Design the Class Interface

class MusicHistory
  def initialise
  # create an empty array
  end
  def add_track(song)
  # add a song to the playlist
  end
  def tracklist
  # show list of songs i've listened to
  end
end

3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.

# EXAMPLE

# 1
song_list = MusicHistory.new
song_list.add_track("3s and 7s")
song_list.tracklist => ["3s and 7s"]

# 2
song_list = MusicHistory.new
song_list.add_track("3s and 7s")
song_list.add_track("Reptillia")
song_list.tracklist => ["3s and 7s", "Reptillia"]

# 3
song_list = MusicHistory.new
song_list.add_track("3s and 7s")
song_list.add_track("Reptillia")
song_list.add_track("3s and 7s")
song_list.tracklist => ["3s and 7s", "Reptillia", "3s and 7s"]

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.

