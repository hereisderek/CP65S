#set -x


iasl ./hotpatch/*.dsl
mkdir ./build/
rm -r ./build/*
mv ./hotpatch/*.aml ./build/
