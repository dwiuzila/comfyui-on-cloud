#!/bin/bash

# download models
wget --content-disposition https://civitai.com/api/download/models/93208 -P ./ComfyUI/models/checkpoints
wget https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11f1p_sd15_depth.pth -P ./ComfyUI/models/controlnet
wget https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_openpose.pth -P ./ComfyUI/models/controlnet
wget https://huggingface.co/stabilityai/sd-vae-ft-mse-original/resolve/main/vae-ft-mse-840000-ema-pruned.ckpt -P ./ComfyUI/models/vae
wget https://huggingface.co/guoyww/animatediff/resolve/main/v3_sd15_mm.ckpt -P ./ComfyUI/models/animatediff_models