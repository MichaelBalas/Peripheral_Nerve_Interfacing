# A Contact Selectivity Index for Multi-Contact Nerve Cuff Electrodes Guided by Feature Selection Algorithms
Decoding the bioelectric signals of the peripheral nervous system would enable us to extract motor commands and sensory feedback signals for a variety of neuroprosthetic devices. Nerve cuff electrodes are a prominent method to capture these signals due to their non-invasiveness and proven safety for chronic implantation. However, it remains difficult to achieve selective recordings from specific neural pathways using these devices, given the noisy physiological environment and non-penetrating nature of the cuff. Optimizing the locations of electrode contacts with respect to the nerve has the potential to substantially improve the selectivity of nerve cuff recordings. To this end, we proposed a tool that can quantify the information value of each contact location.

In this study, we improved the previously defined Contact Information Metric (CIM), which quantified information gain over each contact’s probability distribution of spike peak values using Shannon Entropy. The modified CIM isolates the signal’s action potential, generates probability distributions for each point and combines each distribution’s entropy into a single value. Furthermore, we developed *a posteriori* validation methods by verifying whether contacts with high CIM values were also ranked highly by feature selection methods used in conjunction with machine learning classifiers. Filter, wrapper and embedded methods of feature selection were investigated for this purpose.

The modified CIM demonstrates improved discrimination in characterizing contact importance and shows consistent results with feature selection-based rankings. This work will provide a valuable tool for optimizing our ability to extract information from neural activity, and to enable finer control of assistive technologies.
 
###### A more intuitive infographic is provided [here](https://github.com/MichaelBalas/Neural_Interface/Poster.pdf). 

# Authors
##### Michael Balas
##### Ryan Koh (PhD Candidate)
##### Dr. José Zariffa (Principal Investigator of the Adaptive Neurorehabilitation Lab)

# Dependencies
- Matlab (compatible version 2012 and all following versions)
    - Signal Processing Toolbox
- Python (version 2.7)
  - Numpy
  - Pandas
  - Scikit-learn
  - Glob
- R (version 3.5)
  - Functions for Medical Statistics Book (fmsb)

# License
Only simulation action potential data from the sciatic nerve finite element model is included. EMG-generated noise models and *in vivo* data is proprietary and not included in the repository (as is the corresponding code/analysis). 

By committing your code to the Neural Interface repository you agree to release it under the [GPL-3.0 License](https://github.com/MichaelBalas/Neural_Interface/blob/master/LICENSE).



# Funding
This project was funded by the Toronto Rehabilitation Institute and Universiy of Toronto Institute of Biomaterials & Biomedical Engineering.  
