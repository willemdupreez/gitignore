#!/bin/bash
# Installs selected system-specific .gitignore files globally.

echo -e 'Creating new global .gitignore...'
echo -e '  Adding VS Code...'
echo '# === Visual Studio Code ===\n' > ~/.gitignore
cat ./Global/VisualStudioCode.gitignore >> ~/.gitignore

echo -e '  Adding macOS...'
echo '\n# === macOS ===\n' >> ~/.gitignore
cat ./Global/macOS.gitignore >> ~/.gitignore

echo -e 'Setting file as global excludes file...'
git config --global core.excludesfile ~/.gitignore

echo -e 'Done.'