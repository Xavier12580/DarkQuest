mkdir -p output

file="./run_list.txt"

tar -czvf public.tar.gz RecoE1039Data.C work support AnaModule setup.sh ~/test/testio/core-inst

# Read the file line by line
while IFS= read -r line
do
  ./gridsub_standard.sh $line 0 $vfac $reducer_option $coarse_mode
done < "$file"
