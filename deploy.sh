#!/bin/bash

rsync -avze 'ssh -p 22' --delete public/ will@willhy.com:/srv/nginx/willhy.com/

