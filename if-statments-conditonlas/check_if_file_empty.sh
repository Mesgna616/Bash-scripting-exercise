directory="/mnt/c/users/mesgn/onedrive/documents/Bash-scripting-exercise"
files=$(find "$directory" -type f -not -path '*/.git/*' -not -name '.*')
for file in $files; do
  if [ -s "$file" ]; then
    echo "$file is not empty"
  else
    echo "Empty file is found: $file"
  fi
done


