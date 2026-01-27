#!/bin/bash

ping -c 1 www.google.com > redirect.log   # single ">" write the whole file

pwd >> redirect.log # double ">>" append the file 