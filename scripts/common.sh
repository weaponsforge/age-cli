# Disables path conversion for Docker when using Git Bash (MSYS2) in a Windows host
export MSYS_NO_PATHCONV=1

# Docker image name
export IMAGE_NAME=age-cli

# Reads the public key from the key.txt file
readPublicKey() {
  PUBLIC_KEY=$(grep '^# public key: ' "${PWD}/vault/key.txt" | sed 's/^# public key: //')
}
