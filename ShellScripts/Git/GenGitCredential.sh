#!/bin/bash
ssh-keygen -t rsa -b 4096 -C "test@example.com"
nano ~/.ssh/id_rsa.pub
