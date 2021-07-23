#! bin/bash

host=$1
user=$2
pcode=$3
sed -i "s/instanceip/$host/g" test.inv
sed -i "s/ec2user/$user/g" test.inv
sed -i "s/hostpasscode/$pcode/g" test.inv
