#!/bin/bash
workspace="/workspaces/intro-argo-cd-tutorial"

## Check to see if you're in the right path
## TODO: This will fail if users are doing this "outside" of GitHub. Need a way to "normalize it"
if [[ ! -d ${workspace} ]] ; then
    echo "FATAL: Unable to verify current working directory"
    exit 3
fi

## Check to see if the ${GITHUB_USER} env is set (best effort)
## TODO: This will fail if users are doing this "outside" of GitHub. Need a way to "normalize it"
if [[ ${#GITHUB_USER} -eq 0 ]] ; then
    echo "FATAL: The GITHUB_USER env var is not set"
    exit 3
fi

## Search for <username> and replace it with 
find ${workspace} -type f -exec grep -l '<username>' {} \; | while read file
do
    ## Let's ignore this script
    [[ ${file} == ${workspace}/hack/update-repo-for-workshop.sh ]] && continue
    sed -i "s/<username>/${GITHUB_USER}/g" ${file}
done

## Now that the files are updated, we commit it and push it up. Best effort :cross_fingers_emoji:
cd ${workspace}
git add .
git commit -am "updated source to point to ${GITHUB_USER}"
git push origin main

## Exit with 0 for the post-start script
exit 0