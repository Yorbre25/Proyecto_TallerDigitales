import os
def form_u4_data(instructions):
    row = len(instructions)
    col = len(instructions[0])
    data = []
    for current_row in range(row):
        for current_col in range(col):
            data.append(
                (f'{current_row * col + current_col}: {instructions[current_row][current_col]};'))
    return data


def form_mif_header(depth, width, addr_radix='UNS', data_radix='HEX'):
    header = [
        f'DEPTH = {depth};',
        f'WIDTH = {width};',
        f'',
        f'ADDRESS_RADIX = {addr_radix};',
        f'DATA_RADIX = {data_radix};',
        f''
    ]
    return header


def form_mif_content(instructions):
    content = [f'CONTENT', f'BEGIN'] + form_u4_data(instructions) + [f'END;']
    return content


def form_mem(instructions):
    len_i = len(instructions)
    data = []
    for i in range(len_i):
        data.append(instructions[i])
    mem = '\n'.join(data)
    return mem

def write_mif_ROM(instructions, mode='x', file='ROMData.mem'):
    '''
    this writes out the mif
    '''
    equalStr = []
    for i in range(len(instructions)):
        for j in range(2, len(instructions[0]), 2):
            part = instructions[i][j: j + 2]
            equalStr.append(part)
    try:
        os.remove(file)
    except:
        pass
    f = open(file, mode)
    f.write(form_mem(equalStr))
    f.close()