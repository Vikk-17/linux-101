#!/bin/bash

echo "FILE ENCRYPTION AND DECRYPTION"

echo "Your Call: "
choice="ENCRYPT DECRYPT"

select opt in $choice; do
    if [ $REPLY = 1 ]; then
        echo "Please enter the file_name"
        read file_dir
        echo "Encrypting the file ..."
        gpg -c $file_dir
        echo "Done"
        break 
    else 
        echo "Please enter the file_name"
        read file_dir1
        echo "Decrypting the file ..."
        gpg -d $file_dir1
        echo "Done"
        break
    fi
done