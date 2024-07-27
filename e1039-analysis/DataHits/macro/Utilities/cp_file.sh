for id in {1..100}
do
	echo $id
	if [ -e /pnfs/e1039/scratch/users/$USER/DataHits/$1_reco_$2/$id/out/ana*root ] ; then
		file_name=$(basename "/pnfs/e1039/scratch/users/$USER/DataHits/$1_reco_$2/$id/out/"ana*root)
		echo $file_name
		if [ ! -e ./$file_name ] ; then  
			cp /pnfs/e1039/scratch/users/$USER/DataHits/$1_reco_$2/$id/out/ana*root .
			echo $id >> goodruns.txt
		fi
	fi
done

