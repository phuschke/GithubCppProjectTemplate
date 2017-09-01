
#!/usr/bin/env bash

set -e
sudo apt-get install -y python3-pip
echo "After python3 install ***************************************************"
sudo -H pip install --upgrade pip
echo "After pip ***************************************************"
sudo -H pip3 install coala-bears
echo "After pip3 coala ***************************************************"
coala
