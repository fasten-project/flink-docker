set -x
CONF_FILE=$1
escaped_option=$2
option=$3
value=$4
echo "In script"
echo ${CONF_FILE}
sed -e "s/${escaped_option}:.*/$option: $value/g" ${CONF_FILE} > /tmp/.tmp-conf-file
cat /tmp/.tmp-conf-file > ${CONF_FILE}
cat ${CONF_FILE}
echo "Out script"
