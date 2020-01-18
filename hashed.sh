cat > hashed.json <<EOF
[
  {"op":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"mcm":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"clk":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"pt":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"mc":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"img":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"id":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"Tv":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"marketDefinition":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"Venue":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"bspMarket":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"turnInPlayEnabled":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"persistenceEnabled":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"marketBaseRate":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"eventId":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"eventTypeId":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"numberOfWinners":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"bettingType":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"marketType":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"marketTime":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"suspendTime":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"bspReconciled":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"complete":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"inPlay":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"crossMatching":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"runnersVoidable":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"numberOfActiveRunners":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"betDelay":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"status":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"regulators":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"discountAllowed":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"timezone":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"openDate":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"version":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"name":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"eventName":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"countryCode":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"runners":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"sortPriority":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"hc":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"rc":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"tv":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"ltp":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"batb":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"spb":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"batl":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"trd":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"spf":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"atb":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"spl":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"spn":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"},
  {"atl":"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`"}
]
EOF

var1=`cat line.json`
echo $var1

#hashed="[{\"op\":\"`date`\"},{\"mcm\":\"dsfd\"},{\"clk\":\"kddd\"}]"

hashed="[{\"op\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"mcm\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"clk\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"pt\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"mc\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"img\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"id\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"Tv\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"marketDefinition\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"Venue\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"bspMarket\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"turnInPlayEnabled\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"persistenceEnabled\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"marketBaseRate\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"eventId\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"eventTypeId\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"numberOfWinners\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"bettingType\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"marketType\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"marketTime\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"suspendTime\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"bspReconciled\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"complete\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"inPlay\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"crossMatching\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"runnersVoidable\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"numberOfActiveRunners\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"betDelay\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"status\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"regulators\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"discountAllowed\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"timezone\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"openDate\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"version\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"name\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"eventName\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"countryCode\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"runners\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"sortPriority\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"hc\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"rc\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"tv\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"ltp\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"batb\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"spb\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"batl\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"trd\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"spf\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"atb\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"spl\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"spn\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"},{\"atl\":\"`cat /dev/urandom | tr -dc 'a-z' | fold -w 10 | head -n 1`\"}]"


for k in $(echo $hashed | jq '. | keys | .[]')
do
  key=`echo $hashed | jq '.['$k'] | keys' | jq --raw-output '.[]'`
  value=`echo $hashed | jq --raw-output '.['$k'] | to_entries[] | "\(.value)"'`
  echo $key
  echo $value
  var1=`echo $var1 | sed "s,\"$key\"\:,\"$value\"\:,g"`
done

  echo $var1
  echo
  echo
  echo
