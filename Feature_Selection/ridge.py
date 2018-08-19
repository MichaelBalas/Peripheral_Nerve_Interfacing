import pandas as pd
import numpy as np
from sklearn.preprocessing import StandardScaler
from sklearn.pipeline import make_pipeline
from sklearn.model_selection import GridSearchCV
from sklearn.linear_model import LogisticRegression
import glob

def contact_selection(path, verbose=False):
	ranks_per_noise_level = []
	for file_name in glob.glob(path):
		num_contacts = int((file_name.split('/')[-1]).split('_')[0])
		X = pd.read_csv(file_name)
		num_features = len(X.columns) / num_contacts
		X_scaled = StandardScaler().fit_transform(X.values)
		Y = pd.read_csv('Response.csv')
		lr = LogisticRegression(penalty = 'l2', C = 0.001)
		lr.fit(X_scaled, np.ravel(Y.values))
		rankings = []
		for i in range(len(X.columns)):
			coef = lr.coef_[0,i]
			rankings.append(abs(coef))
		# Rankings for each contact (computes the cumulative feature
		# importance scores for all features of a given contact
		cumulative_rankings = [0]*num_contacts
		for i in range(num_contacts):
			for j in range(num_features):
				cumulative_rankings[i] = cumulative_rankings[i] + rankings[i+num_contacts*j]
		if verbose:
			print("~~~ RIDGE Regression Selection Successful on " + file_name + " ~~~")
		ranks_per_noise_level.append(cumulative_rankings)
	return ranks_per_noise_level










