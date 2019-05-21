# pedestrian_trajectory_prediction_24787ML_AI
A collaborative space for the group project course 24-787: Machine Learning and Artifical Intelligence
Prediction and Analysis of Multi-Pedestrian Trajectories
24-787:B Machine Learning and Artificial Intelligence for Engineers
Ashish Roongta (aroongta), Bryan Zhao (bryanz), Pranav Narahari (pnarahar), Yayati Jadhav (yayatij)

The interaction of autonomous vehicles with pedestrians is a major issue in the development of autonomous vehicle and warrants real-time prediction of pedestrian trajectories. The goal of this project is to predict future pedestrian trajectories based on past states. The erratic nature of pedestrian motion and the variety of scenarios make this problem significantly complex and interesting.
Background: Ongoing and prior research in the field of pedestrian trajectory modeling, multi-pedestrian interaction, pedestrian-AV interaction modeling and crowd simulation methods. 


Dataset: (https://graphics.cs.ucy.ac.cy/research/downloads/crowd-data)
We will use open source “Crowds-by-Example” dataset from the Graphics Lab at the University of Cyprus (UCY). Features include spatial coordinates of pedestrians, timestamp and gaze direction. It will be utilized to train proposed models for predicting sequential steps of the pedestrians.

Algorithms/methodology: The algorithms will take spatial coordinates along with time stamps and gaze direction, and predict spatial coordinates of each pedestrian. We plan to implement the following modeling algorithms: 
K-means: It groups the trajectories taken by the pedestrian based on similarities in behavior to provide a compact view of observed trajectory patterns during modeling.
Hidden Markov Models (HMM): Pedestrian path and all associated information will be encoded into the HMM states. The trajectory is treated as the evolution of transition between these states, using the raw trajectory data of multiple pedestrians for training.
Vanilla LSTM: It is an extension of RNNs that remembers data values over relatively longer time intervals. LSTMs are well-suited for dealing with processing and making predictions for time-series data, thus it seems a good algorithm for handling pedestrian motion data.
Social LSTM: LSTM does not capture dependencies between multiple correlated sequences. Social LSTM model introduces a “social” pooling layer which allows the LSTM units to jointly predict the trajectories of all moving objects in a scene. This seems quite promising, and we plan to implement it in and compare the performance with the vanilla LSTM model on the UCY dataset.
Cellular automaton model: It is a model consisting of a regular grid with each cell in one of a finite number of states, dependent on the prior state of the cell itself and its neighbors. Thus, Cellular automaton involves both social interaction and dependence of future on prior states, making it suitable for this problem.
Social attention: A novel trajectory prediction model that captures the relative importance of each person when navigating in the crowd, irrespective of their proximity.
Validation: We plan to evaluate our results by predicting the spatial position at t(k+1) time interval based on the pedestrian trajectory in the timeframe [t(0) - t(k)] and compare it with the actual spatial position t(k+1) of each pedestrian from the data set.
Showing variance for each model’s predictions with different learning rates and other hyperparameters will give us quantitative data for optimizing our input parameters to the models. Finally, we will plot the predicted sequential data of the pedestrians on an X-Y grid after training our model and compare it with the actual trajectories.
Division of Labor 
Ashish Roongta – Data processing, Social LSTM, Cellular Automaton.
Bryan Zhao – Data processing, Vanilla LSTM, Social Attention.
Pranav Narahari – HMM, Random Forest.
Yayati Jadhav – HMM, K-Means.
TA Advisor: Jagjeet Singh

References

[1]. Alahi, A., et al.: Social LSTM: Human trajectory prediction in crowded spaces. In: CVPR. (2016)
[2]. https://graphics.cs.ucy.ac.cy/research/downloads/crowd-data  (Dataset)
[3]. http://cs229.stanford.edu/proj2017/final-reports/5237207.pdf
[4]. George Kouskoulis, et al.: Pedestrian simulation: Theoretical models vs. data-driven techniques.
[5]. Jan Hosang, et al.: Taking a Deeper Look at Pedestrians.
[6]. Anirudh Vemula, et al.: Social Attention: Modeling Attention in Human Crowds.
[7]. Thanks to Anirudh Vemula (https://github.com/vvanirudh) for the dataloader.
