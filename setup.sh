mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm ~/miniconda3/miniconda.sh

source ~/miniconda3/bin/activate
conda init bash

conda create -n nanogcg python=3.11 -y
conda activate nanogcg
conda install ipykernel -y

cd nanoGCG
pip install -e .
pip install datasets

# after: source ~/.bashrc; conda activate nanogcg