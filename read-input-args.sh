#!/bin/bash

#just one option is possible 
function simple_case {
  case "$1" in
  	--start|-start|start)
  		echo "start function"
  		;;
  	--stop|-stop|stop)
  		echo "stop function"
  		;;
  	*)
  		echo "everything else or exit"
  		;;
  esac
}

#several options in different orders possible
function complex_case {
    while [ $# -gt 0 ]; do
        case "$1" in
            -s|--source)
                SRC="$2"
                shift 1
                ;;
            -d|--destination)
                DEST="$2"
                shift 1
                ;;
            -h|--help)
                echo "help function"
                exit 0
                ;;
            *)
                echo "[ERROR]: unsupported options"
                exit 1
                ;;
        esac
      shift
    done
}
