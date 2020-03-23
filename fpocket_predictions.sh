echo "PROCESSING INDIVIDUAL MODELS"

echo "Processing DeepMind Structure Models"
for f in structures/deepmind_structures/*.pdb
do 
	echo "Processing $f using fPocket";
	fpocket -f $f 
done

echo "Processing Korkin Lab IndividualModels"
for f in structures/korkin_lab/IndividualModels/*.pdb
do 
	echo "Processing $f using fPocket";
	fpocket -f $f
done

echo "Processing Feig Lab Models"
for f in structures/FeigLab/*.pdb
do 
	echo "Processing $f using fPocket";
	fpocket -f $f
done

echo "Processing AlphaFold Models Refined by Feig Lab"
for f in structures/AlphaFold_refined/*.pdb
do 
	echo "Processing $f using fPocket";
	fpocket -f $f
done

echo "PROCESSING COMPLEXES"

echo "Processing Korkin Lab IntraViralComplexes"
for f in structures/korkin_lab/IntraViralComplexes/*.pdb
do 
	echo "Processing $f using fPocket";
	fpocket -f $f
done

echo "Processing Korkin Lab ViralHumanComplexes"
for f in structures/korkin_lab/ViralHumanComplexes/*.pdb
do 
	echo "Processing $f using fPocket";
	fpocket -f $f
done

echo "MOVING POCKETS"
find ./structures/FeigLab -name "*pockets.pqr" -exec mv -i {} ./pockets/fpocket/FeigLab/ ";"
find ./structures/AlphaFold_refined -name "*pockets.pqr" -exec mv -i {} ./pockets/fpocket/AlphaFold_refined/ ";"
find ./structures/deepmind_structures -name "*pockets.pqr" -exec mv -i {} ./pockets/fpocket/deepmind_structures ";"
find ./structures/korkin_lab -name "*pockets.pqr" -exec mv -i {} ./pockets/fpocket/korkin_lab ";"