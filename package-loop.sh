#!/bin/bash
USERID=$(id-u)
if [$? -ne 0]
then
   echo "Need Sudo access"
else
  dnf list installed mysql 
  if [? -ne 0]
  then 
    dnf install mysql 
    if [$? -ne 0]
     then 
       echo "Installation failed mysql"
    else
       echo "Installation Success mysql"
    fi
  else 
    echo "Already Installed mysql"
  fi

   dnf list installed git
  if [? -ne 0]
  then 
    dnf install git 
    if [$? -ne 0]
     then 
       echo "Installation failed git"
    else
       echo "Installation Success git "
    fi
  else 
    echo "Already Installed git"
  fi
     