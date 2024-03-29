class Artist < ApplicationRecord
  has_many :albums,
    class_name: 'Album',
    foreign_key: :artist_id,
    primary_key: :id

  def n_plus_one_tracks
    albums = self.albums
    tracks_count = {}
    albums.each do |album|
      tracks_count[album.title] = album.tracks.length
    end

    tracks_count
  end

  def better_tracks_query
    # TODO: your code here 
    albums = self.albums.select('albums.*, count(*) as trac_count').joins(:tracks).group('album.id') 

    trac_count = {} 
    albums.each do |album| 
      trac_count[album.title] = album.tracks.count 
    end 
    trac_count
  end
end
