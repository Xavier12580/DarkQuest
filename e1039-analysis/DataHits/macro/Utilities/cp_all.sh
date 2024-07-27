mkdir -p output

file="./run_list.txt"

# Read the file line by line
while IFS= read -r line
do
	mkdir July27_chatura_standard_$line
	cp cp_file.sh July27_chatura_standard_$line
	cd July27_chatura_standard_$line
	./cp_file.sh chatura_standard $line
	cd ..
done < "$file"
