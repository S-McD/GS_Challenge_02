class MusicHistory
    def initialize
        @tracks = []
    end
    def add_track(song)
        @tracks << song
    end
    def tracklist
        return @tracks
    end
end