openssl genrsa -out key.pem 512
openssl rsa -in key.pem -pubout -out pub.pem
#Use this command to unecrypt json key-value
#name=`echo $encryptName | base64 -d | openssl rsautl -decrypt -inkey key.pem -in -`

shopt -s expand_aliases
alias encrypt="cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1"

hashed="[{\"op\":\"`encrypt`\"},{\"mcm\":\"`encrypt`\"},{\"clk\":\"`encrypt`\"},{\"pt\":\"`encrypt`\"},{\"mc\":\"`encrypt`\"},{\"img\":\"`encrypt`\"},{\"id\":\"`encrypt`\"},{\"Tv\":\"`encrypt`\"},{\"marketDefinition\":\"`encrypt`\"},{\"Venue\":\"`encrypt`\"},{\"bspMarket\":\"`encrypt`\"},{\"turnInPlayEnabled\":\"`encrypt`\"},{\"persistenceEnabled\":\"`encrypt`\"},{\"marketBaseRate\":\"`encrypt`\"},{\"eventId\":\"`encrypt`\"},{\"eventTypeId\":\"`encrypt`\"},{\"numberOfWinners\":\"`encrypt`\"},{\"bettingType\":\"`encrypt`\"},{\"marketType\":\"`encrypt`\"},{\"marketTime\":\"`encrypt`\"},{\"suspendTime\":\"`encrypt`\"},{\"bspReconciled\":\"`encrypt`\"},{\"complete\":\"`encrypt`\"},{\"inPlay\":\"`encrypt`\"},{\"crossMatching\":\"`encrypt`\"},{\"runnersVoidable\":\"`encrypt`\"},{\"numberOfActiveRunners\":\"`encrypt`\"},{\"betDelay\":\"`encrypt`\"},{\"status\":\"`encrypt`\"},{\"regulators\":\"`encrypt`\"},{\"discountAllowed\":\"`encrypt`\"},{\"timezone\":\"`encrypt`\"},{\"openDate\":\"`encrypt`\"},{\"version\":\"`encrypt`\"},{\"name\":\"`encrypt`\"},{\"eventName\":\"`encrypt`\"},{\"countryCode\":\"`encrypt`\"},{\"runners\":\"`encrypt`\"},{\"sortPriority\":\"`encrypt`\"},{\"hc\":\"`encrypt`\"},{\"rc\":\"`encrypt`\"},{\"tv\":\"`encrypt`\"},{\"ltp\":\"`encrypt`\"},{\"batb\":\"`encrypt`\"},{\"spb\":\"`encrypt`\"},{\"batl\":\"`encrypt`\"},{\"trd\":\"`encrypt`\"},{\"spf\":\"`encrypt`\"},{\"atb\":\"`encrypt`\"},{\"spl\":\"`encrypt`\"},{\"spn\":\"`encrypt`\"},{\"atl\":\"`encrypt`\"},{\"con\":\"`encrypt`\"}]"

echo $hashed > hashed.json

totalFiles=`ls -1 $1 | wc -l`
countFiles=1

dir=./$1/*
for file in $dir
do
  totalLines=`wc -l file`
  countLines=1
  while read jsonline; do
    parsedJsonLine=`./parseJsonLine.sh "$jsonline" "$hashed"`
    countLines=`expr $countLines + 1`
  done <$file
countFiles=`expr $countFiles + 1`
done
