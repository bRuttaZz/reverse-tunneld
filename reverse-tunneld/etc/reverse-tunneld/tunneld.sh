#!/usr/bin/sh

if test -z $CONF_FILE
then
    CONF_FILE=/etc/reverse-tunneld/tunnel-conf-shell
    echo "Conf file not specified. Using custom conf file: $CONF_FILE" >&2
fi

if ! test -f $CONF_FILE
then
    echo "Conf file not found! Exiting (101)"
    exit 101
fi

if grep -q "HostName <remote address>" $CONF_FILE
then
    echo "Conf file not customized: $CONF_FILE"
    exit 102
fi

if ! grep -qE '^[[:space:]]*RemoteForward' $CONF_FILE
then
    echo "No port configuration found! Exiting (102)"
    exit 103
fi

cmd="/usr/bin/ssh -o ExitOnForwardFailure=yes -o StrictHostKeyChecking=accept-new  -N -v -F $CONF_FILE remote"
echo "cmd: '$cmd'\n"

$cmd
