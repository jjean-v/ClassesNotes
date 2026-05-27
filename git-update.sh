#! /bin/bash

if [ -z "$1" ]; then
   echo "Usage: $0 <course-name>"
   exit 1
elif [ -z "$2" ]; then
    mode="add"
else
    mode="$2"
fi

date=$(date +%Y-%m-%d)

git checkout -B course/$date

git add .

git commit -m "$mode: course $1 $date"

git push --set-upstream origin course/$date
