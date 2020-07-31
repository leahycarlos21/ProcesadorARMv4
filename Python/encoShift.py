num_bits = 3
message = "HOLA"
msg_list = list(message)
coded = list()
coded.extend([0x03, num_bits])
for i in range(len(msg_list)):
	num = ord(msg_list[i])
	num_s = ( ( num << num_bits ) | (num >> (8-num_bits) ) ) & 0xFF
	coded.append( num_s )
coded.append(0xFF)
with open("D:/Tony/Desktop/c/Clases virtuales/Taller/Proyect/Archivos/fileShift.hex", "wb") as bin_file:
	bin_file.write(bytes(coded))
