input_file="00_src/main.cpp"
output_file="10_bin/main_NextGenLightweightFirmware"
include_vincimini="30_dep/libvinvimini/include"
libary_file="30_dep/libvinvimini/lib/linux-gcc8.3.0/amd64/libvincimini.a"

g++ -g "$input_file" -o "$output_file" -I"$include_vincimini" "$libary_file" -lm -lpthread -lpcap