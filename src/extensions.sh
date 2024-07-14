#!/bin/bash

wget --content-disposition https://civitai.com/api/download/models/438988?token=b400cf6ce58e881831d328b547a1788d -P /ComfyUI/models/checkpoints
wget https://huggingface.co/guoyww/animatediff/resolve/main/v3_sd15_mm.ckpt -P /ComfyUI/models/animatediff_models
wget https://huggingface.co/guoyww/animatediff/resolve/main/v3_sd15_adapter.ckpt -P /ComfyUI/models/loras
wget https://huggingface.co/latent-consistency/lcm-lora-sdv1-5/resolve/main/pytorch_lora_weights.safetensors -P /ComfyUI/models/loras
wget https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_openpose.pth -P /ComfyUI/models/controlnet