# File Maid

### A Simple Tool to Organize Files by Extension

File Maid helps you keep your directories clean and organized by sorting files into folders based on their extensions.

---

## How To Use

You can use File Maid in two different ways:

### 1. Run Directly Using Crystal

To execute File Maid without installation:

1. **Clone the repository**:
    ```bash
    git clone  git@github.com:frfhrts/file-maid.git
    cd file-maid
    ```

2. **Run the tool using Crystal**:
    ```bash
    crystal src/file-maid.cr -t [target-directory] -s [source-directory]
    ```

**Example**:
```bash
crystal src/file-maid.cr -t ./sorted -s ./unsorted
```

### 2. Install As Local Tool ( Linux )

To use File Maid as a globally accessible command-line tool:

1. **Clone the repository**:
    ```bash
    git clone  git@github.com:frfhrts/file-maid.git
    cd file-maid
    ```

2. **Build the tool:**:
    ```bash
    crystal build src/file-maid.cr --release
    ```

3. **Move the compiled executable to /usr/local/bin:**:
    ```bash
    sudo mv ./file-maid /usr/local/bin/file-maid
    ```
Now you can run `file-maid` from any directory:

```bash
file-maid -t [target-directory] -s [source-directory]
```
**Example**:
```bash
file-maid -t ./sorted -s ./unsorted
```

## Help Command

To see all available options, you can run:

```bash
file-maid --help
```
Or 

```bash
file-maid -h
```

**Output**
```sh
Usage file-maid [options...] 
-t, --target-path         Specify Target Path 
-s, --source-path         Specify source Path
-h, --help        Show this help message
```

## Contributing

1. Fork it (<https://github.com/frfhrts/file-maid/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Nika Natroshvili](https://github.com/frfhrts) - Creator And Maintainer