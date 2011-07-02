#!/bin/sh

echo 'Hello World' > /tmp/helloworld.html
open /Applications/Safari.app --args /tmp/helloworld.html
sleep 2
rm /tmp/helloworld.html

