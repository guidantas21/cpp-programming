#!/bin/bash

if [ -z "$1" ]; then
    echo "Error: No project name provided."
    echo "usage: $0 <project_name>"
    exit 1
fi
  
project_name=$1

echo -e "[+] Creating your C++ project: $project_name\n"

# Root directory
mkdir "$project_name"
cd "$project_name" || exit
touch README.md

# Source directory
mkdir src
cd src || exit
touch main.cpp

cat << EOL > main.cpp
#include <iostream>

int main() {
    std::cout << "Hello, World!" << std::endl;
    return 0;
}
EOL

# Include directory
cd ..
mkdir include

# Git
git init
touch .gitignore

cat << EOL > .gitignore
# Prerequisites
*.d

# Compiled Object files
*.slo
*.lo
*.o
*.obj

# Precompiled Headers
*.gch
*.pch

# Compiled Dynamic libraries
*.so
*.dylib
*.dll

# Fortran module files
*.mod
*.smod

# Compiled Static libraries
*.lai
*.la
*.a
*.lib

# Executables
*.exe
*.out
*.app
EOL

# Project created successfully

cd ..
tree "$project_name"
