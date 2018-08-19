import pandas as pd
import numpy as np
from sklearn.ensemble import RandomForestClassifier
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score
from sklearn.preprocessing import StandardScaler
from sklearn.linear_model import LogisticRegression
from sklearn.svm import LinearSVC
import glob

def classifier_performances(path):
	for file_name in glob.glob(path):
		num_contacts = int((file_name.split('/')[-1]).split('_')[0])		
		print(str(num_contacts) + " Contact Configuration:")
		X = pd.read_csv(file_name)
		Y = pd.read_csv('Response.csv')
		# Splitting model into train (70%) and test (30%) sets with data standardization
		X_train, X_test, Y_train, Y_test = train_test_split(StandardScaler().fit_transform(X.values), np.ravel(Y.values), test_size=0.3, stratify=Y)
		##### Logistic Regression Classifier
		lr = LogisticRegression(penalty='l2')
		lr.fit(X_train, np.ravel(Y_train))
		# Evaluating model performance over test data
		predicted = lr.predict(X_test)
		accuracy = accuracy_score(Y_test, predicted)
		print('LR accuracy score: ' + str(accuracy))
		#####

		##### RANDOM FOREST CLASSIFIER
		rf = RandomForestClassifier(n_estimators=100)
		rf.fit(X_train, np.ravel(Y_train))
		# Evaluating model performance over test data
		predicted = rf.predict(X_test)
		accuracy = accuracy_score(Y_test, predicted)
		print('RF accuracy score: ' + str(accuracy))
		#####

		##### Support Vector Machine Classifier
		svm = LinearSVC()
		svm.fit(X_train, np.ravel(Y_train))
		# Evaluating model performance over test data
		predicted = svm.predict(X_test)
		accuracy = accuracy_score(Y_test, predicted)
		print('SVM accuracy score: ' + str(accuracy))
		#####
		print('------------------')
		print('------------------')
