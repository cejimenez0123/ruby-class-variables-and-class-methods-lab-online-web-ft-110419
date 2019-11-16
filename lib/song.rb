require "pry"
class Song
  @@song_count=0
  @@artists=[]
  @@genres = []
  @@count = 0
  @@genre_count ={}
  @@artist_count = {}
  def initialize(name,artist,genre)
    @artist=artist
    @genre=genre
    @name=name
    @@count+=1
    @@artists.push(@artist)
    @@genres.push(@genre)
  end

def name
  @name
end
def artist
  @artist
end
def genre
  @genre
end

def self.count
  @@count
end
def self.artists
  @@artists.uniq
end
def self.genres
  @@genres.uniq
end
    def self.genre_count
      @@genres.each do |gen|
        #add new songs
          @@genre_count[gen]||=@@genres.count(gen)
      end
    @@genre_count

  end
  def self.artist_count
    @@artists.each do |art|
        @@artist_count[art]||=@@artists.count(art)
    end
    @@artist_count
  end

end
