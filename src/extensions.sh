#!/bin/bash

# define paths
USER_NAME=$(whoami)
USER_HOME=$(eval echo ~$USER_NAME)

# animatediff models
path="$USER_HOME/ComfyUI/models/animatediff_models"
wget https://huggingface.co/CiaraRowles/TemporalDiff/resolve/main/temporaldiff-v1-animatediff.safetensors -O $path/temporaldiff-v1-animatediff.safetensors

# checkpoints
path="$USER_HOME/ComfyUI/models/checkpoints"
wget https://civitai.com/api/download/models/176342 -O $path/helloflatcolorful2d_V15e.safetensors

# controlnet
path="$USER_HOME/ComfyUI/models/controlnet"
wget https://civitai.com/api/download/models/44811 -O $path/controlnet11Models_openpose.safetensors
wget https://civitai.com/api/download/models/44879 -O $path/controlnet11Models_animeline.safetensors
wget https://civitai.com/api/download/models/44736 -O $path/controlnet11Models_depth.safetensors
wget https://civitai.com/api/download/models/67566 -O $path/controlnet11Models_tileE.safetensors
wget https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11e_sd15_ip2p.pth -O $path/control_v11e_sd15_ip2p.pth

# embeddings
path="$USER_HOME/ComfyUI/models/embeddings"
wget https://civitai.com/api/download/models/9208 -O $path/easynegative.safetensors
wget https://civitai.com/api/download/models/25820 -O $path/verybadimagenegative_v1.3.pt
wget https://civitai.com/api/download/models/125849 -O $path/bad-hands-5.pt

# loras
path="$USER_HOME/ComfyUI/models/loras"
wget https://civitai.com/api/download/models/62833 -O $path/add_detail.safetensors

# vae
path="$USER_HOME/ComfyUI/models/vae"
wget https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/vae/diffusion_pytorch_model.safetensors -O $path/diffusion_pytorch_model.safetensors