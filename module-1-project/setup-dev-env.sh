#!/bin/bash

echo "Checking for Git..."
if command -v git &> /dev/null; then
    echo "Git is already installed."
else
    echo "Git is not installed. Installing Git..."
    sudo dnf update
    sudo dnf install -y git
fi
echo "Configuring Git..."
echo "Please enter your Git username:"
read git_user_name

echo "Please enter your Git email address:"
read git_user_email

git config --global user.name "$git_user_name"
git config --global user.email "$git_user_email"

echo "Git has been configured successfully!"
echo "Creating project directory structure..."
mkdir -p ~/projects/work
mkdir -p ~/projects/personal

echo "Cloning your learning repository..."
cd ~/projects/personal
git clone https://github.com/Milanz247/devops-learning-journey.git
