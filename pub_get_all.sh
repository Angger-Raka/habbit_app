#!/bin/bash

# Get the current directory
DIR=$(pwd)

# Loop through all folders in the libraries directory
for folder in $DIR/libraries/*; do
  # Change directory to the folder
  cd $folder

  # Run pub get
  flutter pub get

  # Change directory back to the original directory
  cd $DIR
done

# Loop through all folders in the features directory
for folder in $DIR/features/*; do
  # Change directory to the folder
  cd $folder

  # Run pub get
  flutter pub get

  # Change directory back to the original directory
  cd $DIR
done

# Run pub get on the root project
cd $DIR
flutter pub get