from sklearn.feature_selection import SelectKBest
from sklearn.feature_selection import chi2
import pandas as pd
import numpy as np
from sklearn.preprocessing import StandardScaler
import glob

def contact_selection(path, verbose=False):
	ranks_per_noise_level = []
	for file_name in glob.glob(path):
		num_contacts = int((file_name.split('/')[-1]).split('_')[0])
		X = pd.read_csv(file_name)
		num_features = len(X.columns) / num_contacts
		X = StandardScaler().fit_transform(X.values)
		X = abs(X) # Chi Squared Only Accepts Non-Negative Values
		Y = pd.read_csv('Response.csv')
		for i in range(num_contacts*num_features):
			test = SelectKBest(score_func=chi2, k=num_features*num_contacts)
			fit = test.fit(X, np.ravel(Y.values))
		# Rankings for each contact (computes the cumulative feature 
		# importance scores for all features of a given contact)
		rankings = fit.scores_
		cumulative_rankings = [0]*num_contacts
		for i in range(num_contacts):
			for j in range(num_features):
				cumulative_rankings[i] = cumulative_rankings[i] + rankings[i+num_contacts*j]
		if verbose:
			print("~~~ Chi Square Selection Successful on " + file_name + " ~~~~")
		ranks_per_noise_level.append(cumulative_rankings)
	return ranks_per_noise_level

