#!/bin/sh
javac ./src/HelloService.java
dx --dex --output=./src/class.dex ./src/HelloService.class
baksmali d ./src/class.dex
