echo "Select option"
select option in Encrypt Decrypt
  do
    echo "You have selected $option"
    if [ $REPLY = 1 ]
    then
        read -p "Enter file name: " filename
        gpg -c $filename
        echo "Encryption done"
        rm $filename

    else

        read -p "Enter file name: " filename
        gpg -d $filename
        echo "Decryption done"
        rm $filename


fi
done
