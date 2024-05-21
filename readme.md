# Vite React and Tailwind Setup Script

This script creates a new Vite project with a React template, install the necessary dependencies, set up Tailwind CSS, and perform some optional cleanup tasks.

## Prerequisites

Before running the script, make sure you have the following installed:

- [Node.js and npm](https://nodejs.org/en/download/)
- [Git Bash](https://gitforwindows.org/) (for Windows users)

## How to Use

1. Open your terminal.
2. Navigate to the directory where you want to create your new project.
3. Run the script using the command `bash vitet.sh` (replace `vitet.sh` with the path to the script if it's not in your current directory).
4. When prompted, enter the name of your new project.

## What the Script Does

Here's a step-by-step breakdown of what the script does:

1. Prompts you to enter a project name.
2. Creates a new Vite project with a React template.
3. Navigates into the project directory.
4. Installs the project dependencies.
5. Installs Tailwind CSS, PostCSS, and Autoprefixer.
6. Initializes Tailwind CSS.
7. Configures Tailwind CSS to scan your classes.
8. Imports Tailwind CSS in your CSS.
9. Deletes the default `src/assets/react.svg` icon (optional).
10. Deletes `src/App.css` (optional).
11. Replaces everything from `src/App.jsx` with a simple Tailwind-styled component (optional).
12. Runs the project.
