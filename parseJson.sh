openssl genrsa -out key.pem 512
openssl rsa -in key.pem -pubout -out pub.pem
#Use this command to unecrypt the string
#name=`echo $encryptName | base64 -d | openssl rsautl -decrypt -inkey key.pem -in -`

var1=`cat line.json`
#var1=`cat $1/line.json`

runnerExist=`echo $var1 | jq --compact-output 'try .mc[].marketDefinition.runners[]?'`

if [ "$runnerExist" != "" ]
then
  runners=`echo $var1 | jq --compact-output '.mc[].marketDefinition.runners'`
  for k in $(echo $runners | jq '. | keys | .[]')
  do
    name=`echo $var1 | jq '.mc[].marketDefinition.runners['$k'].name'`

    if [ "$name" != "null" ]
    then
      encryptName=`echo $name | openssl rsautl -encrypt -inkey pub.pem -pubin -in - | base64 -w 0`
      var1=`echo $var1 | jq --compact-output --arg encryptName "$encryptName" '.mc[].marketDefinition.runners['$k'].name=$encryptName'` 
    fi	    

  done
else
  echo "This json line does not have a runners array"
fi
echo $var1
