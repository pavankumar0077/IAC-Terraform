resource "spotify_playlist" "Bollywood" {
  name = "Bollywood"
  tracks = ["3WLJ7D5kh44K5eJ1NqZQ6W"]
}

data "spotify_search_track" "eminem" {
  artist = "Eminem"

}

resource "spotify_playlist" "slimShady" {
  name = "Slim Shady"
  tracks = [data.spotify_search_track.eminem.tracks[0].id, 
  data.spotify_search_track.eminem.tracks[1].id, 
  data.spotify_search_track.eminem.tracks[2].id]
}