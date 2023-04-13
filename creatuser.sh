#!/bin/bash


useradd guest -s bin/bash -m  -p $(openssl passwd -crypt 123)
useradd guest2 -s bin/bash -m  -p $(openssl passwd -crypt 123)

echo "finalizado"
