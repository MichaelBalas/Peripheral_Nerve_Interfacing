import pandas as pd
import glob
from sklearn import preprocessing
import numpy as np

def process(path):
	for file_name in glob.glob(path):
		num_contacts = int((file_name.split('/')[-1]).split('_')[0])
		features = ["Max_", "Time_", "Min_", "RMS_", "Kurtosis_", "Skew_", "Entropy_"]

		# Generate Header
		header = [None]*(num_contacts*len(features)); f_index = 0; feat_cont = 0
		for i in range(num_contacts*len(features)):
			header[i] = features[f_index] + str(feat_cont+(i%num_contacts)+1)
			if (i > 0 and (i+1) % num_contacts == 0):
				f_index += 1
				feat_cont = 0
		features = pd.read_csv(file_name, names = header)
		if (features['Max_1'].iloc[0] == "Max_1"):
			print(file_name+" Already processed")
			continue
		features.to_csv(file_name, index=False)
		print(file_name+" Successfully processed")
