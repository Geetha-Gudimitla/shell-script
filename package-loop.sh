#!/bin/bash
validate(){

 if [ $1 -ne 0 ]
     then 
       echo " $2 failed "
       exit 1
    else
       echo "$2 Success "
    fi

}
USERID=$(id -u)
if [ $? -ne 0 ]
then
   echo "Need Sudo access"
   exit 1
else
  dnf list installed mysql 
  if [ $? -ne 0 ]
  then 
    dnf install mysql -y
    validate $? "Installation mysql"
    # if [ $? -ne 0 ]
    #  then 
    #    echo "Installation failed mysql"
    #    exit 1
    # else
    #    echo "Installation Success mysql"
    # fi
  else 
    echo "Already Installed mysql"
  fi

   dnf list installed git
  if [ $? -ne 0 ]

  then 

    dnf install git -y
    validate $? "Installation git" 

    # if [ $? -ne 0 ]

    #  then 
    #    echo "Installation git failed "
    #    exit 1
    # else
    #    echo "Installation git Success  "
    # fi
  else 
    echo "Already Installed git"
  fi
fi