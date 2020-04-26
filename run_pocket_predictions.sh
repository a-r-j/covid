echo "PROCESSING INDIVIDUAL MODELS"

echo "Processing DeepMind Structure Models"
for f in structures/deepmind_structures/*.pdb
do 
	echo "Processing $f using fPocket";
	fpocket -f $f 
	./p2rank_2.0.1/prank predict -f $f -o ./p2rank_pockets/deepmind_structures
done

echo "Processing Korkin Lab IndividualModels"
for f in structures/korkin_lab/IndividualModels/*.pdb
do 
	echo "Processing $f using fPocket";
	fpocket -f $f
	./p2rank_2.0.1/prank predict -f $f -o ./p2rank_pockets/korkin_lab/IndividualModels
done

echo "Processing Feig Lab Models"
for f in structures/FeigLab/*.pdb
do 
	echo "Processing $f using fPocket";
	fpocket -f $f
	./p2rank_2.0.1/prank predict -f $f -o ./p2rank_pockets/FeigLab
done

echo "Processing AlphaFold Models Refined by Feig Lab"
for f in structures/AlphaFold_refined/*.pdb
do 
	echo "Processing $f using fPocket";
	fpocket -f $f
	./p2rank_2.0.1/prank predict -f $f -o ./p2rank_pockets/AlphaFold_refined
done

echo "PROCESSING COMPLEXES"

echo "Processing Korkin Lab IntraViralComplexes"
for f in structures/korkin_lab/IntraViralComplexes/*.pdb
do 
	echo "Processing $f using fPocket";
	fpocket -f $f
	./p2rank_2.0.1/prank predict -f $f -o ./p2rank_pockets/korkin_lab/IntraViralComplexes
done

echo "Processing Korkin Lab ViralHumanComplexes"
for f in structures/korkin_lab/ViralHumanComplexes/*.pdb
do 
	echo "Processing $f using fPocket";
	fpocket -f $f
	./p2rank_2.0.1/prank predict -f $f -o ./p2rank_pockets/korkin_lab/ViralHumanComplexes
done

echo "Processing Experimental structures"
for f in structures/experimental_structures/*.pdb
do 
	echo "Processing $f using fPocket";
	fpocket -f $f
	./p2rank_2.0.1/prank predict -f $f -o ./p2rank_pockets/experimental_structures
done

echo "Processing RaptorX structures"
for f in structures/RaptorX/*.pdb
do 
	echo "Processing $f using fPocket";
	fpocket -f $f
	./p2rank_2.0.1/prank predict -f $f -o ./p2rank_pockets/RaptorX
done

echo "Processing CSGID structures"
for f in structures/csgid/*.pdb
do
	echo "Processing $f using fPocket";
	fpocket -f $f
	./p2rank_2.0.1/prank predict -f $f -o ./p2rank_pockets/csgid
done

echo "Processing Modeller Structures"
for f in structures/modeller/*.pdb
do 
    echo "Processing $f using fpocket";
    fpocket -f $f
    ./p2rank_2.0.1/prank predict -f $f -o ./p2rank_pockets/modeller
done


echo "MOVING fPocket POCKETS"
#find ./structures/FeigLab -name "*pockets.pqr" -exec mv -i {} ./fpocket/FeigLab/ ";"

#find ./structures/AlphaFold_refined -name "*pockets.pqr" -exec mv -i {} ./pockets/AlphaFold_refined/ ";"

#find ./structures/deepmind_structures -name "*pockets.pqr" -exec mv -i {} ./pockets/deepmind_structures/ ";"

#find ./structures/korkin_lab -name "*pockets.pqr" -exec mv -i {} ./pockets/korkin_lab/ ";"

#find ./structures/RaptorX -name "*pockets.pqr" -exec mv -i {} ./pockets/RaptorX/ ";"

#find ./structures/experimental_structures -name "*pockets.pqr" -exec mv -i {} ./pockets/experimental_structures/ ";"


find ./structures/experimental_structures -name "*_out" -exec cp -i -r {} ./pockets/experimental_structures/ ";"

find ./structures/RaptorX -name "*_out" -exec cp -i -r {} ./pockets/RaptorX/ ";"

#find ./structures/RaptorX -name "*_out" -exec cp -i -r {} ./pockets/RaptorX/ ";"

#find ./structures/RaptorX -name "*_out" -exec cp -i -r {} ./pockets/RaptorX/ ";"

#find ./structures/RaptorX -name "*_out" -exec cp -i -r {} ./pockets/RaptorX/ ";"

#find ./structures/RaptorX -name "*_out" -exec cp -i -r {} ./pockets/RaptorX/ ";"

find ./structures/csgid -name "*_out" -exec cp -i -r {} ./pockets/csgid/ ";"

find ./structures/modeller -name "*_out" -exec cp -i -r {} ./pockets/modeller/ ";"