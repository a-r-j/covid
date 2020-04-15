import os
from Bio.PDB import PDBList

#23/03/2020
#pdbs = ['5R7Y', '5R7Z', '5R80', '5R81', '5R82', '5R83', '5R84', '6LU7', '6LVN', '6LXT', '6LZG', '6M03', '6M0J', '6M17', '6M3M', '6VSB', '6VW1', '6VWW', '6VXX', '6VYB', '6VYO', '6W01', '6W02', '6W4B', '6W4H', '6Y84']
# '6Y2E' '6y2f' '6y2g' not available as PDB; downloaded separately

#15/04/2020
pdbs = ['6Y2G', '6Y2F', '6Y2E', '6W02', '6W01', '6Y84', '6W41', '6W4H', '6VSB', '6W4B', '6W61', '6W63', '6W75', '6VW1', '6W6Y', '6VXS', '6VWW', '6VYO', '6VYB', '6VXX', '6YB7', '5R84', '5R83', '5R7Y', '5R80', '5R82', '5R81', '5R7Z', '5REA', '5REC', '5REB', '5REE', '5RED', '5REG', '5REF', '5RE9', '5RE8', '5RE5', '5RE4', '5RE7', '5RE6', '5RFB', '5RFA', '5RFD', '5RFC', '5RFF', '5RFE', '5RFH', '5RFG', '5REY', '5REX', '5RF9', '5REZ', '5RF2', '5REP', '5RF1', '5RES', '5RF4', '5RER', '5RF3', '5REU', '5RF6', '5RET', '5RF5', '5REW', '5RF8', '5REV', '5RF7', '5REI', '5REH', '5REK', '5REJ', '5REM', '5REL', '5REO', '5RF0', '5REN', '5RFZ', '5RFY', '5RFR', '5RFQ', '5RFT', '5RFS', '5RFV', '5RFU', '5RFX', '5RFW', '5RFJ', '5RFI', '5RFL', '5RFK', '5RFN', '5RFM', '5RFP', '5RFO', '5RG0', '6M03', '6M17', '6M0J', '6M3M', '6LU7', '6LVN', '6LXT', '6LZG', '6W9C', '5R8T', '6M71', '6W9Q', '6YI3', '7BTF', '6WEN', '6WCF', '5RG1', '5RG2', '5RG3', '5RGG', '5RGH', '5RGI', '5RGJ', '5RGK', '5RGL', '5RGM', '5RGN', '5RGO', '5RGP', '5RGQ', '5RGR', '5RGS', '6M2N', '6M2Q', '6YLA']


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
