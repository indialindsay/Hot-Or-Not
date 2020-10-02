# Hot Or Not? 

## Was pop music in the 2000's formulaic? Did Britney Spears, Avril Lavigne, and Usher know something the rest of us didn't? 

Are there measurable patterns within the features of a song that determine whether it will be a hit or a flop? Can we provide record labels with a model that offers key insights into producing hits?

The goal of this analysis is to predict whether a song will be a hit or a flop using the measurable patterns within a song's features.

### The Data

We used a dataset consisting of 5,872 songs from 2000 through 2009. It consists of 15 quantitative and qualitative metrics for each song with a label of whether the song was a hit or a flop. If the song was featured in BillBoard’s weekly list of Hot-100 tracks at least once throughout the decade, the song is considered a hit. For a song to be a flop, either the song itself or the artist of the song were not featured in any Hot-100 lists. 

We dropped any rows with null values and dropped 606 outliers. We determined which rows were outliers by standardizing their values and dropping any observations that had column values greater than three standard deviations away from their mean. As we are interested in predicting the popularity of a song, this prevents our analysis from being affected by abnormal songs. The variables we sought to analyze included a song’s danceability, energy, key, valence, tempo, liveliness, loudness, mode, speechiness, acousticness, instrumentalness, duration (in ms), time signature, chorus hit, and number of sections. 

Data sourced from [kaggle](https://www.kaggle.com/theoverman/the-spotify-hit-predictor-dataset)

### Exploring The Data

We initially compared the mean values of all of the characteristics for both hits and flops. We found that hits often have higher values in danceability, energy, mode, speechiness, valence, and time signature. 

Additionally, we were interested in examining the role a song’s title plays in the actual features of the song. We observed whether song titles containing ‘!’ actually had higher levels of enthusiasm. We examined the mean levels of danceability, valence, and energy for songs with titles containing an exclamation point compared with songs that do not. We found that such songs had a mean danceability, valence, and energy 0.11, 0.13, and 0.12, respectively greater than songs with titles without an exclamation point. 

![image](https://user-images.githubusercontent.com/68126147/94950216-dd132100-04a7-11eb-9e56-0021231e0446.png)

## Results & Interpretation:

We first used stepwise regression to determine the song features that had the greatest degree of influence on whether or not the song was a hit. Both the forward, backward, and hybrid approach selected the same variables: instrumentalness, danceability, loudness, energy, acousticness, mode, and time_signature.

We attempted to predict song popularity using KNN, Logistic Regression, and a Decision Tree. Logistic Regression performed the best, with 82% test accuracy. 

Overall, there are certain aspects of songs that present a formulaic approach to creating a hit. 
We learned that a song with very high levels of energy acutally has a negative effect on whether a song was a hit. High energy levels were associated with songs that were very fast, loud, and noisy. Instrumentalness and accousticness also had negative impacts on the likelihood of a song being a hit, indicating that hit songs contained more sections with vocals that just instrumentals and tended to be less accoustic. The mode of a song yields influence over a song's popularity; a mode equivalent to 1 (indicating the song is in a major key) increases the probability of the song being a hit by 16%. As a song in a major key is often associated with happiness, artists interested in releasing hits may prefer to release "happier" songs. As people like to party and dance, danceability of a song has a positive affect on it being a hit.

These models offer useful insights to record companies, artists, and music streaming services; helping such companies to curate songs that both appeal to a greater audience and have a higher likelihood of being a hit.

## Model Limitations

The accuracy of this model is likely limited by the nature of the data. We are relying upon the quantitative features of a song to determine its popularity. There are several characteristics that we could not account for that influence the public's reception of a song. If an artist has produced hit songs in the past, it is likely that their future songs will also be hits. Past production of hits typically results in the creation of a consistent fan base that will continue to support and listen to any songs released by this artist. Additionally, the promotion of artists over various media forms (social media, television, advertisements) will likely affect the popularity of their songs. Lastly, our dataset contained a 50/50 split between flops and hits. This split does not accurately represent the music industry as this industry typically contains a smaller proportion of hits.



