shopt -s expand_aliases
alias encrypt="cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1"

openssl genrsa -out key.pem 512
openssl rsa -in key.pem -pubout -out pub.pem
#Use this command to unecrypt the string
#name=`echo $encryptName | base64 -d | openssl rsautl -decrypt -inkey key.pem -in -`

var1=`cat line.json`
#var1=`cat $1/line.json`

hashed="[{\"op\":\"`encrypt`\"},{\"mcm\":\"`encrypt`\"},{\"clk\":\"`encrypt`\"},{\"pt\":\"`encrypt`\"},{\"mc\":\"`encrypt`\"},{\"img\":\"`encrypt`\"},{\"id\":\"`encrypt`\"},{\"Tv\":\"`encrypt`\"},{\"marketDefinition\":\"`encrypt`\"},{\"Venue\":\"`encrypt`\"},{\"bspMarket\":\"`encrypt`\"},{\"turnInPlayEnabled\":\"`encrypt`\"},{\"persistenceEnabled\":\"`encrypt`\"},{\"marketBaseRate\":\"`encrypt`\"},{\"eventId\":\"`encrypt`\"},{\"eventTypeId\":\"`encrypt`\"},{\"numberOfWinners\":\"`encrypt`\"},{\"bettingType\":\"`encrypt`\"},{\"marketType\":\"`encrypt`\"},{\"marketTime\":\"`encrypt`\"},{\"suspendTime\":\"`encrypt`\"},{\"bspReconciled\":\"`encrypt`\"},{\"complete\":\"`encrypt`\"},{\"inPlay\":\"`encrypt`\"},{\"crossMatching\":\"`encrypt`\"},{\"runnersVoidable\":\"`encrypt`\"},{\"numberOfActiveRunners\":\"`encrypt`\"},{\"betDelay\":\"`encrypt`\"},{\"status\":\"`encrypt`\"},{\"regulators\":\"`encrypt`\"},{\"discountAllowed\":\"`encrypt`\"},{\"timezone\":\"`encrypt`\"},{\"openDate\":\"`encrypt`\"},{\"version\":\"`encrypt`\"},{\"name\":\"`encrypt`\"},{\"eventName\":\"`encrypt`\"},{\"countryCode\":\"`encrypt`\"},{\"runners\":\"`encrypt`\"},{\"sortPriority\":\"`encrypt`\"},{\"hc\":\"`encrypt`\"},{\"rc\":\"`encrypt`\"},{\"tv\":\"`encrypt`\"},{\"ltp\":\"`encrypt`\"},{\"batb\":\"`encrypt`\"},{\"spb\":\"`encrypt`\"},{\"batl\":\"`encrypt`\"},{\"trd\":\"`encrypt`\"},{\"spf\":\"`encrypt`\"},{\"atb\":\"`encrypt`\"},{\"spl\":\"`encrypt`\"},{\"spn\":\"`encrypt`\"},{\"atl\":\"`encrypt`\"},{\"con\":\"`encrypt`\"}]"

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
fi

for k in $(echo $hashed | jq '. | keys | .[]')
do
  key=`echo $hashed | jq '.['$k'] | keys' | jq --raw-output '.[]'`
  value=`echo $hashed | jq --raw-output '.['$k'] | to_entries[] | "\(.value)"'`
#  echo $key
#  echo $value
  var1=`echo $var1 | sed "s,\"$key\"\:,\"$value\"\:,g"`
done

echo $var1
