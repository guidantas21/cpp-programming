
## Run the script

1. Clone the project:

```bash
git clone https://link-to-project
```

2. Navigate to the `project_structure` directory:

```bash
cd cpp_programming/project_structure
```

3. Grant Execution Permission to the `new_cpp_project.sh`:

```bash
chmod +x new_cpp_project.sh
```

And then run it passing the name of your new project as argument:

```bash
./new_cpp_project.sh <project_name>
```

It should return something like:

```bash
[+] Creating your C++ project: <project_name>

Initialized empty Git repository in /path/to/<project_name>/.git/
<project_name>
├── include
├── README.md
└── src
    └── main.cpp

2 directories, 2 files
```

### Run from any directory

Notice that, if you want to run this script from other directory, would be necessary to write the full path of the `new_cpp_project.sh`:

```bash
./path/to/new_cpp_project.sh <project_name>
```

To make the script accessible from any directory, move it to your local bin and update your system’s PATH

1. Move `new_capp_project.sh` to the `.local/bin` and rename to `new_cpp_project`:

```bash
mv new_cpp_project.sh $HOME/.local/bin/new_cpp_project
```

2. Grant execution permission:

```bash
chmod +x $HOME/.local/bin/new_cpp_project
```

3. Add the `$HOME/.local/bin` to PATH:

```bash
echo "export PATH="$PATH:$HOME/.local/bin/" >> ~/.bashrc
source ~/.bashrc
```

If you are using a different shell (e.g., zsh), make sure to update the relevant configuration file (like .zshrc for zsh):

Finally, you can create a new C++ project from any directories:

```bash
new_cpp_project <project_name>
```

