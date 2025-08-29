# Set up linux profile
cd ~
git clone https://gitlab.com/bytesnz/linux-profile.git
cd linux-profile
mv `ls -A` ../
cd ~
git submodule update --init
cat <<EOF >> .bashrc
if [ -f ~/.extend.bashrc ]; then
    . ~/.extend.bashrc
fi
EOF
source .bashrc

# Install AWS CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

# Install extensions
code --install-extension amazonwebservices.amazon-q-vscode