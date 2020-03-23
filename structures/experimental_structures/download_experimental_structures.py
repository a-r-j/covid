import os
from Bio.PDB import PDBList


pdbs = ['5R7Y', '5R7Z', '5R80', '5R81', '5R82', '5R83', '5R84', '6LU7', '6LVN', '6LXT', '6LZG', '6M03', '6M0J', '6M17', '6M3M', '6VSB', '6VW1', '6VWW', '6VXX', '6VYB', '6VYO', '6W01', '6W02', '6W4B', '6W4H', '6Y84']
# '6Y2E' '6y2f' '6y2g' not available as PDB; downloaded separately

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
        os.rename('pdb' + pdb_code + '.ent', pdb_code + '.pdb')
        assert any(pdb_code in s for s in os.listdir(pdb_dir))
        print(f'Downloaded PDB file for: {pdb_code}')

for pdb in pdbs:
	download_pdb(pdb.lower())

print('Complete')
