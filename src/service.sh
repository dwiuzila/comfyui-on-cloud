#!/bin/bash

# define paths
USER_NAME=$(whoami)
USER_HOME=$(eval echo ~$USER_NAME)
PYTHON_PATH="${USER_HOME}/miniconda3/bin/python"
BASHRC_PATH="${USER_HOME}/.bashrc"
COMFYUI_RUNNER_PATH="${USER_HOME}/ComfyUI/main.py"

# create the run.sh file
echo "#!/bin/bash" > run.sh
echo "" >> run.sh
echo "BASHRC_PATH=\"$BASHRC_PATH\"" >> run.sh
echo "PYTHON_PATH=\"$PYTHON_PATH\"" >> run.sh
echo "COMFYUI_RUNNER_PATH=\"$COMFYUI_RUNNER_PATH\"" >> run.sh
echo "" >> run.sh
echo "# Source the bashrc file" >> run.sh
echo "source \$BASHRC_PATH" >> run.sh
echo "" >> run.sh
echo "# Start ComfyUI using the defined paths" >> run.sh
echo "if ! sudo -u $USER_NAME \$PYTHON_PATH \$COMFYUI_RUNNER_PATH --listen; then" >> run.sh
echo "    echo \"Error: Failed to start ComfyUI\" >&2" >> run.sh
echo "fi" >> run.sh

# make the script executable
mv run.sh ./ComfyUI
chmod +x ./ComfyUI/run.sh

SERVICE_FILE_CONTENT="[Unit]
Description=ComfyUI Server

[Service]
Type=simple
ExecStart=${USER_HOME}/ComfyUI/run.sh

[Install]
WantedBy=multi-user.target"

# create the systemd service file
echo "$SERVICE_FILE_CONTENT" | sudo tee /etc/systemd/system/comfyui.service > /dev/null

# reload systemd to recognize the new service
sudo systemctl daemon-reload
sudo systemctl enable comfyui.service
sudo systemctl start comfyui.service