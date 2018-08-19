import pandas as pd
import numpy as np
import seaborn as sns
import matplotlib.pyplot as plt
from sklearn.ensemble import ExtraTreesClassifier
from sklearn.ensemble import RandomForestClassifier
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score
from sklearn.metrics import confusion_matrix
from sklearn.preprocessing import StandardScaler
import glob

def contact_selection(path, verbose=False):
	ranks_per_noise_level = []
	for file_name in glob.glob(path):
		num_contacts = int((file_name.split('/')[-1]).split('_')[0])
		X = pd.read_csv(file_name)
		num_features = len(X.columns) / num_contacts
		X_scaled = StandardScaler().fit_transform(X.values)
		Y = pd.read_csv('Response.csv')
		rf = RandomForestClassifier(n_estimators=100)
		# Feature Importance Rankings Averaged over 10 simulations
		rankings = []; avg_accuracy = 0; num_simulations = 10;
		for i in range(num_simulations):
			rf.fit(X_scaled, np.ravel(Y.values))
			rankings.append(rf.feature_importances_)
		df = pd.DataFrame(rankings, columns=list(X))
		# Rankings for each feature
		rankings = []
		for i in range(len(df.columns)):
			rankings.append(df.iloc[:,i].mean())
		# Rankings for each contact (computes the cumulative feature
		# importance scores for all features of a given contact)
		cumulative_rankings = [0]*num_contacts
		for i in range(num_contacts):
			for j in range(num_features):
				cumulative_rankings[i] = cumulative_rankings[i] + rankings[i+num_contacts*j]
		if verbose:
			print("~~~ Random Forest Selection Successful on " + file_name + " ~~~")
		ranks_per_noise_level.append(cumulative_rankings)
	return ranks_per_noise_level



