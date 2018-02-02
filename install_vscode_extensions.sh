#!/bin/bash

for extension in `cat vscode.extensions`;
do
  code --install-extension $extension
done