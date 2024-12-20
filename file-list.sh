#!/bin/bash

file_count= $(ls -lrt *.json)

for i in file_count;do
  line_count= $(wc -l $file_count)

  echo ("The first File is",$i,and "No of lines :",$i)
  done
