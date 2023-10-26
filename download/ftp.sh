#!/bin/bash

docker run -d --rm -p 20-21:20-21 -p 60000-60100:60000-60100 --network bridge --name ftp gelirettore/ftp:padrao
