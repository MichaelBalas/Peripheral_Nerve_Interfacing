import subprocess
import glob

def clean_up(string):
	while('[' in string):
		start_index = string.find('[')
		stop_index = string.find(']')
		string = string.replace(string[start_index:stop_index+1],"")
	return string

def contact_selection(path, verbose=False):
	ranks_per_noise_level = []
	commands = ["Rscript", "nagel_drop.R"]
	for file_name in glob.glob(path):
		num_contacts = int((file_name.split('/')[-1]).split('_')[0])
		args = [file_name, str(num_contacts)]
		rankings = subprocess.check_output(commands + args, universal_newlines = True)
		rankings = clean_up(rankings)
		rankings = [int(i) for i in rankings.split()]
		if verbose:
			print("~~~ Nagelkerke Drop Selection Successful on " + file_name + " ~~~~")
		ranks_per_noise_level.append(rankings)
	return ranks_per_noise_level
