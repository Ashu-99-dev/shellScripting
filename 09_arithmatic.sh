#!/bin/bash

#Math calculation

x=10
y=2

let mul=$x*$y
let sum=$x+$y
let sub=$x-$y
let div=$x/$y
echo "${mul}"
echo "${sum}"
echo "${sub}"
echo "${div}"

echo "substraction is: $(($x-$y))"