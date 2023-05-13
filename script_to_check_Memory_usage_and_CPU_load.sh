#check Memory usage, CPU load, TCP connections and Kernel version

#!/bin/bash

function check_memory(){
   echo""
     echo "Memory usage:"
     free -h
   echo""
   }
function check_CPU(){
   echo""
     echo "CPU Load:"
   echo""
     uptime
   echo""
   }
function check_tcp(){
   echo""
     echo "tcp connections:"
   echo""
     cat /proc/net/tcp | wc -l
   echo""
   }
function check_kernel(){
   echo""
     echo "kernel version is:"
   echo""
     uname -r
   echo""
   }

check_memory
check_CPU
check_tcp
check_kernel
