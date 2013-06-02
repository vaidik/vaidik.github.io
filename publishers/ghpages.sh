#!/bin/bash

"
Hyde publisher plugin for publishing to Github Pages.

Script to do the actual static file shifting from dev to master.
"

# checkout master branch
git checkout master

if [ $? -eq 0 ]
then
    cp -rf deploy/* .

    # commited the changed static files
    git add .
    git commit -m "build - `date`"

    # clean up
    rm -rf deploy/

    # publish to github pages
    git push origin master

    # go back to where you were
    git checkout dev
else
	echo "Error: you must commit changes made in your dev branch."
fi