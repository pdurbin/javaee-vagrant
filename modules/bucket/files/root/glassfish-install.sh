#!/bin/sh
cd /root
wget http://download.java.net/glassfish/3.1.2.2/release/glassfish-3.1.2.2-unix.sh && \
sh glassfish-3.1.2.2-unix.sh -a glassfish-answerfile -s
