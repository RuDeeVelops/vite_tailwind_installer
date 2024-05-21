#!/bin/bash

# Get project name from user input
echo "Enter the project name:"
read project_name

# Create a new Vite project with a React template
npm create vite@latest $project_name -- --template react

# Navigate into the project directory
cd $project_name

# Install dependencies
npm install

# Install Tailwind CSS, PostCSS, and Autoprefixer
npm install -D tailwindcss postcss autoprefixer

# Initialize Tailwind CSS
npx tailwindcss init -p

# Configure Tailwind CSS to scan your classes
echo "module.exports = {
    content: ['./index.html', './src/**/*.{js,ts,jsx,tsx}'],
    theme: {
        extend: {},
    },
    plugins: [],
}" > tailwind.config.js

# Import Tailwind CSS in your CSS
echo "@tailwind base;
@tailwind components;
@tailwind utilities;" > src/index.css

# Optional - Cleanup pass
# Delete the default src/assets/react.svg icon
rm -f src/assets/react.svg

# Optional - Delete src/App.css
rm -f src/App.css

# Optional - Replace everything from src/App.jsx
echo "function App() {
  return (
    <div className='flex items-center justify-center h-screen'>
      <h1 className='text-4xl'>Vite with Tailwind installed! Go build awesome stuff!</h1>
    </div>
  );
}

export default App;" > src/App.jsx

# Run the project
npm run dev