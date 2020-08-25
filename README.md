# Hot Or Not? 

## Was pop music in the 2000's formulaic? Can we predict whether a song will be a hit or a flop using the measurable patterns within a song's features? 

### The data:

For this analysis, I'll be using a dataset consisting of 5,872 songs from 2000 through 2009. It consists of 15 quantitative and qualitative metrics for each song with a label of whether the song was a hit or a flop. If the song was featured in BillBoard’s weekly list of Hot-100 tracks at least once throughout the decade, the song is considered a hit. For a song to be a flop, either the song itself or the artist of the song were not featured in any Hot-100 lists. 

The features provided for each song were the following: 
- track: name of the song
- artist: name of the artist
- uri: resource identifier for the song
- danceability: a measure of how suitable a track is for dancing, ranging from 0 to 1 (least danceable to most danceable)
- energy: a measure of intensity and activity of a track, ranging from 0 to 1 (slow, soft, and quiet to fast, loud, and noisy)
- key: overall key of the track, integers map to pitches using standard Pitch Class notation. If no key was detected, the value is -1
- loudness: average decible measure of amplitude, ranging from -60 to 0 db (low amplitude to high amplitude)
- mode: indicator of modality of a track. 1 = major, 0 = minor
- speechiness: a measure of the presence of spoken words in a track. Values above 0.66 describe tracks that are probably made entirely of spoken words. Values between 0.33 and 0.66 describe tracks that may contain both music and speech, either in sections or layered, including such cases as rap music. Values below 0.33 most likely represent music and other non-speech-like tracks. 
- acousticness: a measure of whether the track is acoustic, ranging from 0 to 1 (not acoustic to primarily acoustic)
- instrumentalness: a measure of vocal content, ranging from 0 to 1 (primarily vocals to primarily instrumental). 
- liveness: a measure detecting the presence of an audience in the recording. Higher liveness values represent an increased probability that the track was performed live.
- valence: a measure from 0.0 to 1.0 describing the musical positiveness conveyed by a track. Tracks with high valence sound more positive (happy, cheerful, euphoric), while tracks with low valence sound more negative (sad, depressed, angry).
- tempo: overall estimated tempo of a track in beats per minute (BPM)
- duration_ms: duration of the track in milliseconds.
- time_signature: an estimated measure of number of beats in each bar 
- chorus_hit: a measure of when the chorus begins for the song
- sections: the number of sections the song contains

