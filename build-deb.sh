#!/bin/bash

folder="Sample Theme"
package="com.sticktron.ahahah-sample-theme_1.1"

echo ""
echo "1) Cleaning up..."

# get rid of these pesky buggers
find "$folder" -name ".DS_Store" -delete


echo ""
echo "2) Packaging ..."

# build the deb file from the "Sample Package" folder
dpkg-deb -Zgzip -b "$folder"


echo ""
echo "3) Renaming ..."

# rename the deb file to match the package name
mv -v "$folder.deb" "$package.deb"


echo ""
echo "Finished."
echo ""
