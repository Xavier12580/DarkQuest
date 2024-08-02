mkdir -p output

file="./run_list.txt"

# Read the file line by line
while IFS= read -r line
do
  ./gridsub_displaced.sh $line 0 fac2_reducernone_geomdummy_coarseon_DarkQuest_displaced
done < "$file"
