# GameRecommender

## Application Description and Machine Learning Algorithms Used
The GameRecommender application utilizes machine learning techniques to address the challenge of recommending video games to users based on their owned games. 

* Data Preprocessing: The application preprocesses the 'tags' and 'genre' columns of the game dataset. The 'tags' column, containing comma-separated lists of tags, is converted into a space-separated string. The 'genre' column, initially a list of genres, is transformed into a string representation. Additionally, the 'votes' column is normalized using the MinMaxScaler to ensure consistency in the feature space.


* Feature Extraction: The preprocessed data is combined to create a feature representation for each game. The features consist of the tags, genre, normalized votes, and rating. This feature engineering process aims to capture the essential characteristics of each game.


* Clustering: The application applies the K-means clustering algorithm to the document-term matrix created using TF-IDF vectorization. The number of clusters is set to five in this implementation. The clustering algorithm groups similar games together based on their extracted features, forming distinct clusters.


* Cluster Assignment: The resulting cluster labels are assigned to each game in the original dataset, stored in the 'cluster_label' column. This assignment enables efficient retrieval of games belonging to the same cluster as the selected games.


* Game Features Mapping: A dictionary, 'game_features_mapping,' is created to map game titles to their corresponding tags. This mapping allows for quick access to the features of each game.


* TF-IDF Vectorization: The application employs a TF-IDF vectorizer to convert the game features into a numerical representation suitable for computing cosine similarity.


* Recommendations Generation: When the user selects specific games, the application retrieves their corresponding cluster labels. It identifies similar games by comparing the cluster labels and excluding the selected games. The TF-IDF representations of the selected games' features and the similar games' features are calculated using the vectorizer. The cosine similarity between these representations is computed using the cosine_similarity function. The similar games are then ranked based on their similarity scores, and the top 10 recommendations are displayed.

## Installation
1. Open Docker Desktop
2. If you do not have Docker Desktop go to: docs.docker.com/engine/install and install the Docker
Desktop Platform for your OS
3. Once Docker is installed open Docker Desktop
4. Open your terminal/Command Prompt
5. Enter the following command and run: ‘docker pull v2jc/game-recommender:v1.0’
6. Enter the following command and run: ‘docker run -p 8888:8888 v2jc/game-recommender:v1.0’
   24
7. Once this is completed you will be given 3 different URLs, copy and paste one URL into your browser address bar until the Jupyter Notebooks page successfully loads
a. (only 1 of the three provided will work depending on your machine)
8. Select the ‘GameRecommender.ipynb’ file
9. Step through each cell by selecting ‘Run’
10. Interact with the UI at the bottom of the webpage to build a list of games and get
recommendations based on your list


## Data Sources
* https://www.kaggle.com/datasets/nyagami/video-game-ratings-from-imdb
* https://rawg.io/apidocs
