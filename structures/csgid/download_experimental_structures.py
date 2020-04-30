import os
import pandas as pd
from Bio.PDB import PDBList

# Read list of PDBs from downloaded csv
df = pd.read_csv('csgid_structures.csv')
pdbs = list(df['PDB'])

# Directory to write files to
pdb_dir = '.'

def download_pdb(pdb_code):
        """
        Download PDB structure
        :param pdb_code: 4 character PD accession code
        :return: # todo impl return
        """
        
        # Initialise class and download pdb file
        pdbl = PDBList()
        pdbl.retrieve_pdb_file(pdb_code, pdir=pdb_dir, overwrite=True, file_format='pdb')

        # Rename file to .pdb from .ent
        try:
        	os.rename('pdb' + pdb_code + '.ent', pdb_code + '.pdb')
        	assert any(pdb_code in s for s in os.listdir(pdb_dir))
        	print(f'Downloaded PDB file for: {pdb_code}')
        except:
        	print(f'{pdb_code} structure not found')

for pdb in pdbs:
	download_pdb(pdb.lower())

print('Complete')
