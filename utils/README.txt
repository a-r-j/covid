0. Requirements:

You need Biopython installed. You can download it from here: http://biopython.org/wiki/Download

1. What does it do?

Given PDB structure(s), it tells you which residues are 'in contact' (according to the distance cutoff you provide) and which ones are in the neighborhood of those contacts (also according to your contacts). There are two types of annotations produced:

contacts: intermolecular contacts.
interface neighborhood: the intramolecular contacts (within a certain distance) of the intermolecular contacts.

2. How to use it?

Input:

--f1 : first pdb file [Required]
--f2 : second pdb file (if the contacts are to be calculated in the same molecule, just submit the same pdb in both cases) [Required]
--c1 : Chains to be used for the first molecule [Required]
--c2 : Chains to be used for the second molecule [Required]
--c : contact cutoff (Optional, set to 4.5A if not supplied on input) 
--i : interface neighbor cutoff (Optional, set to 10.0A if not supplied on input)
--jobid : name for the output folder (Set to out_[random number] if not supplied on input)

An example which you can just copy paste and run when in the same directory as the python script:

python GetInterfaces.py --f1 1A2Y.pdb --f2 1A2Y.pdb --c1 AB --c2 C --c 4.5 --i 10.0 --jobid example_output

Above command will calculate the contacts between antibody in 1a2y (chains A and B) and the antigen (chain C). The contact distance was defined as 4.5A and the interface distance was defined as 10A. All the output files are saved in the folder out_example_output.

3. Output:

- molecule_1.pdb - the first supplied molecule with b-factor fields of contacts set to 100 and interface neighborhood set to 50
- molecule_2.pdb - the second supplied molecule with b-factor fields of contacts set to 100 and interface neighborhood set to 50
- molecule_1.txt - whitespace delimited file specifying the contacts and interface neighborhood in the second molecule in the format: [chain] [residue id] [contact 'C' or interface residues 'I']
- molecule_2.txt - whitespace delimited file specifying the contacts and interface neighborhood in the second molecule in the format: [chain] [residue id] [contact 'C' or interface residues 'I']
- molecule_1_constrained.pdb - the first molecule, which is constrained only to the residues in the interface.
- molecule_2_constrained.pdb - the second molecule, which is constrained only to the residues in the interface.
- parameters.txt - the contact distance and neighborhood distance used for the particular run.