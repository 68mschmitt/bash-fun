#!/bin/bash
echo "Today is " `date`

echo -e "\nenter the path to directory" `date`
read the_path

ecdo -e "\n you path has the following foles and folders: "
ls $the_path
