mkdir -p output

file="./run_list.txt"

# Read the file line by line
while IFS= read -r line
do
  ./gridsub_standard.sh $line 0 standard
done < "$file"
