## age-cli

A Docker image and wrapper scripts for encrypting and decrypting files using [age](https://github.com/FiloSottile/age).

## 📋 Requirements

- Docker
- **Windows:** Git Bash
- **Linux:** Bash

## 🛠️ Initialization

#### 1. Build the Docker image

```sh
docker build -t age-cli .
```

#### 2. Generate an age key pair

This creates a `key.txt` file inside the `/vault` directory.

> 💡 **NOTE**:
> Run this script only once, and only if you don't already have a `key.txt` file.<br>
> If you already have an existing `key.txt`, skip to **Step 3**.

```sh
./scripts/keygen.sh
```

> [!IMPORTANT]
> Store `key.txt` in a secure location.
>
> - **Do not lose this file.** Without it, you will not be able to decrypt your encrypted files.
> - **Do not commit `key.txt` to Git.**

#### 3. Put your `"key.txt"` file in the `/vault` directory

Ensure an age-generated `"key.txt"` file exists in the `/vault` directory.

#### 4. Place files to encrypt or decrypt in `/vault`

Copy any files you want to encrypt or decrypt into the `/vault` directory.

#### 5. Run the appropriate script

See [Available Scripts](#available-scripts).

<br>

## 📜 Available Scripts

### keygen.sh

Generates an age public/private key pair and saves it as `key.txt` in the `/vault` directory.

**Usage**:

```sh
./scripts/keygen.sh
```

### encrypt.sh

Encrypts a file in the `/vault` directory and creates a corresponding `.age` file.

**Usage**:

```sh
./scripts/encrypt.sh hello.txt
```

**Output**:

```text
age-cli/
├── age/
├── scripts/
└── vault/
    ├── key.txt
    ├── hello.txt
    └── hello.txt.age ✅
```

### decrypt.sh`

Decrypts a `.age` file in the `/vault` directory and restores the original file.

**Usage**:

```sh
./scripts/dencrypt.sh hello.txt.age
```

**Output**:

```text
# Before

age-cli/
└── vault/
    ├── key.txt
    └── hello.txt.age


# After

age-cli/
└── vault/
    ├── key.txt
    ├── hello.txt ✅
    └── hello.txt.age
```


@weaponsforge<br>
20260628
