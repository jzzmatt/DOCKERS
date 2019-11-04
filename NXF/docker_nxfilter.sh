#!/bin/sh
sudo docker run --restart always -dt \
--name nxfilter \
-v nxfilter-conf:/nxfilter/conf \
-v nxfilter-log:/nxfilter/log \
-v nxfilter-db:/nxfilter/db \
-p 53:53/udp \
-p 80:80 \
-p 443:443 \
-p 19002-19004:19002-19004 \
packetworks/nxfilter-base:latest
