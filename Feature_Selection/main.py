# Michael Balas, 2018
import pandas as pd
import numpy as np
import preprocessing
import chi_squared
import mutual_info
import ridge
import random_forests
import svm
import r_controller
import performance
from math import *
import itertools
import collections

def similarity(x, y, top_contacts=0.5):
	assert len(x) == len(y)
	assert len(x) == len(set(x)) # Make sure there are no duplicate ranks
	assert len(y) == len(set(y))
	x = x[:int(len(x)*top_contacts)]
	y = y[:int(len(y)*top_contacts)]
	intersection_cardinality = len(set.intersection(*[set(x), set(y)]))
        return intersection_cardinality / float(len(x))

def borda(ranks):
	dic = dict.fromkeys(sorted(ranks[0]),0)
	for rank in ranks:
		rank = list(rank)
		indexed_rank = [rank.index(j) for j in sorted(rank)]
		for i in range(len(rank)):
			dic[i+1] = dic[i+1] + indexed_rank[i]
	sorted_dictionary = sorted(dic.items(), key=lambda kv: kv[1])
	aggregate_ranks = [x[0] for x in sorted_dictionary]
	return aggregate_ranks

# Multi-Contact Cuff Configurations
MCCs = [8, 16, 24, 32, 40]
# Feature Selection Methods
methods = ["Chi2","Mutual Information","Nagelkerke Drop","RIDGE","Forests","SVM"]
# Noise Levels
noise_levels = ["2_Noise/","3_Noise/","4_Noise/","5_Noise/"]
# Test is a toy dataset (same data as Tri) for practice without screwing anything up
ref_systems = ["Test/", "Tri_FeatureTables/", "Com_FeatureTables/", "Psd_FeatureTables/"]
# Noise Type
noise_types = ["Noise_In/","Noise_Out"]

### Set Attributes
ref_system = ref_systems[0] # 0 = Test; 1 = Tri; 2 = Com; 3 = Psd
noise_level = noise_levels[0] # 0 = -5SNR; 1 = -10SNR; 2 = -15SNR; 3 = -20SNR
noise_type = noise_types[0] # 0 = Noise In; 1 = Noise Out (not implemented yet)
get_performance = False # Are you interested in classifier performance?
get_rankings = False # Are you interested in Rankings for each feature selection method?
###

path = "../Feature_Extraction/Noise_In/" + ref_system + noise_level
preprocessing.process(path+"*contacts.csv")

if get_performance:
	# Classifier Performance
	performance.classifier_performances(path+"*contacts.csv")
if get_rankings:
	# Contact rankings sorted from best to worst
	chi_list = sorted(chi_squared.contact_selection(path+"*contacts.csv",verbose=True), key=len)
	mi_list = sorted(mutual_info.contact_selection(path+"*contacts.csv",verbose=True), key=len)
	nagel_list = sorted(r_controller.contact_selection(path+"*contacts.csv",verbose=True), key=len)
	ridge_list = sorted(ridge.contact_selection(path+"*contacts.csv",verbose=True), key=len)
	forest_list = sorted(random_forests.contact_selection(path+"*contacts.csv",verbose=True), key=len)
	svm_list = sorted(svm.contact_selection(path+"*contacts.csv",verbose=True), key=len)
	# Display
	print("NOISE LEVEL: " + noise_level[0])
	print("REFERENCE TYPE: " + ref_system[:-1])
	for i in range(len(MCCs)):
		print("Rankings for " + str(MCCs[i]) + "-contact MCC:")
		chi_ranks = list(pd.Series(chi_list[i],index=range(1,MCCs[i]+1)).sort_values(ascending=False).index)
		mi_ranks = list(pd.Series(mi_list[i],index=range(1,MCCs[i]+1)).sort_values(ascending=False).index)
		nagel_ranks = list(pd.Series(nagel_list[i],index=range(1,MCCs[i]+1)).sort_values(ascending=False).index)
		ridge_ranks = list(pd.Series(ridge_list[i],index=range(1,MCCs[i]+1)).sort_values(ascending=False).index)
		forest_ranks = list(pd.Series(forest_list[i],index=range(1,MCCs[i]+1)).sort_values(ascending=False).index)
		svm_ranks = list(pd.Series(svm_list[i],index=range(1,MCCs[i]+1)).sort_values(ascending=False).index)
		ranks = [chi_ranks, mi_ranks, nagel_ranks, ridge_ranks, forest_ranks, svm_ranks]
		for j in range(len(methods)):
			print(methods[j] + ": " + str(ranks[j]))		
		# Get Ground Truth rankings
		no_nag = ranks[:2] + ranks[2+1:] # Nagelkerke drop is not good for feature selection
		ground_truth = borda(no_nag)
		print('Ground Truth: ' + str(ground_truth))
			for k in range(j):
				# Check for consistency among rankings
				sim = similarity(ranks[k], ranks[j])
				print(methods[k]+"\t"+methods[j]+"\t"+str(sim))
else:
	print('Processing Complete.')

