#!/bin/bash

# define paths
USER_NAME=$(whoami)
USER_HOME=$(eval echo ~$USER_NAME)

# install packages
pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu118
pip install onnxruntime-gpu==1.18.1

# install ComfyUI
git clone https://github.com/comfyanonymous/ComfyUI
pip install -r ComfyUI/requirements.txt

# install ComfyUI Manager
git clone https://github.com/ltdrdata/ComfyUI-Manager.git $USER_HOME/ComfyUI/custom_nodes/ComfyUI-Manager
pip install -r $USER_HOME/ComfyUI/custom_nodes/ComfyUI-Manager/requirements.txt

# test cuda
echo -e "import torch\nprint(torch.cuda.is_available())\nprint(torch.cuda.get_device_name(0))" > test_cuda.py
python test_cuda.py