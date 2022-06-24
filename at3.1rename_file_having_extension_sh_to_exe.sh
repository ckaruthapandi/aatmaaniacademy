#!/bin/bash
for f in *.sh; do 
    mv -- "$f" "${f%.sh}.exe"
done
