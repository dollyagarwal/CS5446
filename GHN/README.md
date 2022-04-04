# GHN
Python implementation of evaluating Generalized Heuristic Networks

This repo is built on top of https://github.com/AAIR-lab/GHN Pls refer this link if you face any issues in setup.

# Installation

Use the following commands to install the GHN system on an Ubuntu 18.04 machine.

    sudo apt install graphviz graphviz-dev python3-pip cmake

    pip3 install --upgrade pip
    pip3 install networkx
    pip3 install tensorflow==2.3.1
    pip3 install pygraphviz
    pip3 install dulwich
    pip3 install tqdm
    pip3 install matplotlib
    pip3 install pydot
    pip3 install pyyaml==5.3.1
    pip3 install tinydb
    pip3 install pandas
    pip3 install bokeh
    pip3 install psutil

Next to built fast-downward, refer https://github.com/AAIR-lab/GHN

# Experimental Setup

We performed the Fast training approach mentioned by the authors of the papers. The experiment folder outputs has been zipped and uploaded here as outputs.zip. The trained model m1 can be found in outputs/example.

The setup involves a training_directory (outputs/training_data) where the training problem files are kept and a test_directory (blocks3 - block50) where the test files are stored. Note that the domain file and problem file must end with extensions `*.domain.pddl` and `*.problem.pddl`.

For the configuration files on the test files, please take a look at the `block*.yaml` files found in `generalized_learning/benchmarks/blocksworld`.

Use the following command line to run the evaluation on a testset folder from the root directory.

python3 generalized_learning.py --base-dir `<directory_where_to_store_results>` --config-file `<path_to_yaml_file>`

#### Example:

To run blocksworld experiments with problem sets of 3 blocks, run the following

`python3 generalized_learning.py --base-dir ./outputs --config-file generalized_learning/benchmarks/blocksworld/blocks3.yaml`

# Results and Evaluation

The solutions of the test files are copied to folder `plots/blocks*`. The code to process these solution files and generate the plots on various evaluation metrics can be found at `plots/Plot_Charts.ipynb` 

# Using your own data/new domains
Follow the setup in the Fast training section as mentioned at https://github.com/AAIR-lab/GHN to train and use GHNs with your own data.

As an additional note, once you have trained a model, you can run pyperplan individually using the sourced version of pyperplan provided in the dependencies/ directory.

The command line arguments to enable the GHN heuristic are `python3 dependencies/pyperplan/src/pyperplan.py -s <search_algorithm> -H nnplact --model-dir <path_to_model_dir> --model-name <model_name_as_in_yaml> <domain_file> <problem_file>`

