#!/bin/bash

# install ComfyUI
git clone https://github.com/comfyanonymous/ComfyUI
pip install -r ComfyUI/requirements.txt
pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu118
pip install onnxruntime-gpu==1.18.0

# test cuda
echo -e "import torch\nprint(torch.cuda.is_available())\nprint(torch.cuda.get_device_name(0))" > test_cuda.py
python test_cuda.py