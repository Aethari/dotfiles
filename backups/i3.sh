#!/bin/bash

cd ..

rm -fr i3/i3conf
rm -fr i3/statusconf

cp ~/.config/i3/config i3/i3conf
cp ~/.config/i3status/config i3/statusconf
