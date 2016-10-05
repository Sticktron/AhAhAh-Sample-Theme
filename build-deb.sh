#!/bin/bash

folder="Sample Package"
package="com.sticktron.ahahah-sample-theme"

echo ""
echo "1) Cleaning up..."

# get rid of these pesky buggers
find . -name '.DS_Store' -delete


echo ""
echo "2) Packaging Theme ..."

# build the deb file from the "Sample Package" folder
dpkg-deb -b "$folder"


echo ""
echo "3) Renaming '$folder.deb' to '$package.deb' ..."

# rename the deb file to match the package name
mv "$folder.deb" "$package.deb"


echo ""
echo "Finished."
echo ""
