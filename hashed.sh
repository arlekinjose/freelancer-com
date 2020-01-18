cat > hashed.json <<EOF
[
  {"op":"`date`"},
  {"mcm":"dsfd"},
  {"clk":"kddd"}
]
EOF

var1=`cat line.json`
echo $var1

hashed="[{\"op\":\"`date`\"},{\"mcm\":\"dsfd\"},{\"clk\":\"kddd\"}]"

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
