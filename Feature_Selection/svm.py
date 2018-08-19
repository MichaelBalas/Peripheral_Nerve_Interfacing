from sklearn.svm import LinearSVC
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
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
		svm = LinearSVC()
		svm.fit(X_scaled, np.ravel(Y.values))
		# Rankings for each feature
		# Take the average absolute feature weight from all 3 OVR classes
		rankings = np.average(abs(svm.coef_), 0)
		# Rankings for each contact (computes the cumulative feature
		# importance scores for all features of a given contact)
		cumulative_rankings = [0]*num_contacts
		for i in range(num_contacts):
			for j in range(num_features):
				cumulative_rankings[i] = cumulative_rankings[i] + rankings[i+num_contacts*j]
		if verbose:
			print("~~~ SVM Selection Successful on " + file_name + " ~~~~")
		ranks_per_noise_level.append(cumulative_rankings)
	return ranks_per_noise_level
