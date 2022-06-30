mkdir output/iron/
for f in ../../../lhe/data/iron/*_hepmc.txt
do
    filename=$(basename -- "$f")
    python run_sim.py --sim trimuon --inputfile $filename --inputpath ../../../lhe/data/iron/ --zvertex 490 -n 5000 
    mv output.root output/iron/$filename.root
done
