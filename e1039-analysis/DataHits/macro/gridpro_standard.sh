mkdir -p output

file="./run_list.txt"

# Read the file line by line
while IFS= read -r line
do
  ./gridsub_standard.sh $line 0 fac2_reducernone_geomdummy_coarseon_SpinQuest_standard
done < "$file"
