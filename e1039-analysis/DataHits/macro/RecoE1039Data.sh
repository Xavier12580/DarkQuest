mkdir -p output

file="./file_list.txt"

# Read the file line by line
while IFS= read -r line
do
  file_base=$(basename "$line" .root)
  # Process each line
  echo "$file_base"
  root -b -q RecoE1039Data_new.C\(100,\"$line\",\"output\/ana_$file_base\.root\",true\);
  exit;
done < "$file"
