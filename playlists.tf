data "spotify_search_track" "eminem" {
    artist = "Eminem"
}

resource "spotify_playlist" "slimShady"{
    name = "slim shady"
    tracks = [data.spotify_search_track.eminem.tracks[0].id, data.spotify_search_track.eminem.tracks[1].id, data.spotify_search_track.eminem.tracks[2].id]
}