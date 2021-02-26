#!/usr/bin/env python3
"""Typeset. Converge to png. Build readme"""

import glob
import subprocess
import os

table = \
"""
| example | output |
| ------- | ------ |
"""

if __name__ == "__main__":
    files = sorted(glob.glob('*.tex'))

    kwargs = {'check': True,
              'stdout': subprocess.DEVNULL,
              'stderr': subprocess.DEVNULL}


    for f in files:
        name = f.replace('.tex', '')
        pdfname = f.replace('.tex', '.pdf')
        pngname = f.replace('.tex', '.png')

        print(f'-- building {f}')
        subprocess.run(['latexmk', f], **kwargs)

        print(f'-- create {pngname}')
        subprocess.run(['convert', '-density', '300', '-quality', '100', pdfname, pngname], **kwargs)

        print(f'-- add {pngname} to table')
        if os.path.exists(pngname):
            table += f'| {f} | <img src="./{pngname}" width="300"/> |\n'
        else:
            ftmp = f
            for image in sorted(glob.glob(f'{name}-[0-9].png')):
                table += f'| {ftmp} | <img src="./{image}" width="300"/> |\n'
                ftmp = ' ' * len(f)

    with open('readme.md', 'w') as f:
        f.write(table)
