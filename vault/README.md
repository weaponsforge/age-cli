## vault

This directory stores files used by `age-cli` for encryption and decryption.

### Contents

- `key.txt` &mdash; Your age private/public key pair. Required for decrypting `.age` files.
- `*.age` &mdash; Encrypted files.
- Any plaintext files you want to encrypt or have decrypted.

### Usage

1. Place your `key.txt` file in this directory.
2. Copy any files you want to encrypt into this directory.
3. Run the appropriate script from the project root:
   - `./scripts/encrypt.sh <filename>`
   - `./scripts/decrypt.sh <filename>.age`

### Important

- **Never commit `key.txt` to version control.**
- **Keep `key.txt` in a secure location and maintain a backup.** Without it, encrypted files cannot be decrypted.
- Only share `.age` files with others unless they also need access to the private key.

@weaponsforge<br>
20260628
