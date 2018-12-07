#!/bin/bash
# Change email to match your own
ssh-keygen -t rsa -b 4096 -C "test@example.com"
vi ~/.ssh/id_rsa.pub
