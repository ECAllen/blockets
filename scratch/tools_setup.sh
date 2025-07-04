
# Do not use captured here for devlopment

curl -LsSf https://astral.sh/uv/install.sh | sh
wget https://github.com/docker/docker-credential-helpers/releases/download/v0.9.3/docker-credential-pass-v0.9.3.linux-amd64
chmod +x docker-credential-pass-v0.9.3.linux-amd64 


sudo mv docker-credential-pass-v0.9.3.linux-amd64 /usr/local/bin/docker-credential-pass
sudo usermod -aG docker $USER
groups $USER


ssh-keygen -t ed25519 -C "someemail@email.domain"
ssh-keygen -t ed25519 -C "someemail@email.domain"
git config --global user.email "someemail@email.domain"
git config --global user.name "someusername"
gpg --list-secret-keys --keyid-format LONG


rm -rf ~/.gnupg
gpg --full-generate-key
gpg --list-secret-keys --keyid-format LONG
gpg --list-secret-keys --keyid-format LONG | awk '/^sec/ {split($2, a, "/"); print a[2]}' | cut -d' ' -f1
git config --global user.signkey gpg_secrect_id
git config --global commit.gpgsign true
pass init gpg_secrect_id
rm -rf ~/.password-store
pass insert ssh/ed25519
pass list
pass insert ssh/ed25519
pass show ssh/ed25519


docker-credential-pass configure
docker-credential-pass 
docker-credential-pass list


cp .docker/config.json .docker/config.json.backup 
nvim .docker/config.json
docker logout
docker login
pass show docker-credential-helpers/
docker pull someusername/cards
