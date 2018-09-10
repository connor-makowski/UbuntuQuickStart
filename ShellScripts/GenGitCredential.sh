#!/bin/bash
ssh-keygen -t rsa -b 4096 -C "conmak@mit.edu"
vi ~/.ssh/id_rsa.pub
