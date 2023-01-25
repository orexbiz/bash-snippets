#!/bin/bash

function absolute_path {
  local PATH=$(readlink -f "$0")
  echo "Absolute path: $PATH" 
}


function script_parent_directory {
   local DIR=$( dirname ${BASH_SOURCE[0]})
   echo "parent directory: $DIR"
   cd $DIR
   echo "parent directory absolute path: $(pwd)"
   cd -
}

function script_name {
  local NAME=$( basename $0 )
  echo "script name: $NAME"
}


#----------------------------------------
absolute_path
script_parent_directory
script_name
