import json
import RAM_Initialization as RAM
import ROM_Initialization as ROM
if __name__ == '__main__':
    '''Read and write of the RAM'''
    f = open('encryptedImage.txt', 'r')
    contentRAM = f.read()
    f.close()
    resRAM = json.loads(contentRAM)
    RAM.write_mif_RAM(resRAM)

    '''Read and write of the ROM'''
    f = open('instructions.txt', 'r')
    contentROM = f.read()
    f.close()
    resROM = contentROM.split('\n')
    ROM.write_mif_ROM(resROM)
