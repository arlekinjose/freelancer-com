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

mcExist=`echo $var1 | jq --compact-output 'try .mc[].marketDefinition?'`

if [ "$mcExist" != "" ]
then
  bettingType=`echo $var1 | jq --compact-output '.mc[].marketDefinition.bettingType'`

  if [ "$bettingType" != "null" ]
  then
    encryptName=`echo $bettingType | openssl rsautl -encrypt -inkey pub.pem -pubin -in - | base64 -w 0`
    var1=`echo $var1 | jq --compact-output --arg encryptName "$encryptName" '.mc[].marketDefinition.bettingType=$encryptName'`
  fi

  marketType=`echo $var1 | jq --compact-output '.mc[].marketDefinition.marketType'`

  if [ "$marketType" != "null" ]
  then
    encryptName=`echo $marketType | openssl rsautl -encrypt -inkey pub.pem -pubin -in - | base64 -w 0`
    var1=`echo $var1 | jq --compact-output --arg encryptName "$encryptName" '.mc[].marketDefinition.marketType=$encryptName'`
  fi
fi

  name=`echo $var1 | jq --compact-output '.mc[].marketDefinition.name'`

  if [ "$name" != "null" ]
  then
    encryptName=`echo $name | openssl rsautl -encrypt -inkey pub.pem -pubin -in - | base64 -w 0`
    var1=`echo $var1 | jq --compact-output --arg encryptName "$encryptName" '.mc[].marketDefinition.name=$encryptName'`
  fi

  eventName=`echo $var1 | jq --compact-output '.mc[].marketDefinition.eventName'`

  if [ "$eventName" != "null" ]
  then
    encryptName=`echo $eventName | openssl rsautl -encrypt -inkey pub.pem -pubin -in - | base64 -w 0`
    var1=`echo $var1 | jq --compact-output --arg encryptName "$encryptName" '.mc[].marketDefinition.eventName=$encryptName'`
  fi

echo $var1
