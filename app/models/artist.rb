class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  class Artist
    def get_first_song
      self.songs.first
    end
  end

  def get_genre_of_first_song
    self.genres.first
    #return the genre of the artist's first saved song
  end

  def song_count
    self.songs.count
  end

  def genre_count
    self.genres.count
  end
end
