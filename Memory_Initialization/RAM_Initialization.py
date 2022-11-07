import os
def form_u4_data(photo):
    row = len(photo)
    col = len(photo[0])
    data = []
    for current_row in range(row):
        for current_col in range(col):
            data.append(
                (f'{current_row * col + current_col}: {photo[current_row][current_col]};'))
    return data


def form_mif_header(depth, width, addr_radix='UNS', data_radix='UNS'):
    header = [
        f'DEPTH = {depth};',
        f'WIDTH = {width};',
        f'',
        f'ADDRESS_RADIX = {addr_radix};',
        f'DATA_RADIX = {data_radix};',
        f''
    ]
    return header


def form_mif_content(photo):
    content = [f'CONTENT', f'BEGIN'] + form_u4_data(photo) + [f'END;']
    return content


def form_mif(photo):
    '''
    This takes the numpy.ndarray and creates the mif
    '''

    mif_str_arr = form_mif_header(len(photo) * len(photo[0]), 8) + form_mif_content(photo)
    mif = '\n'.join(mif_str_arr)

    return mif

def write_mif_RAM(photo, mode='x', file='RAMData.mif'):
    '''
    this writes out the mif
    '''
    try:
        os.remove(file)
    except:
        pass
    f = open(file, mode)
    f.write(form_mif(photo))
    f.close()