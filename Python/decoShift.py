
with open("D:/Tony/Desktop/c/Clases virtuales/Taller/Proyect/Archivos/fileShift.hex", "rb") as bin:
	data= bin.read()
	mode = data[0]
	num_bits = data[1]
	message = list()
	mask = 0	
	for byte in data[ 2 :  ]:
		if(byte != b'\xFF'):
			num_s = (( byte >> num_bits ) | ( byte  << ( 8-num_bits ) )) & 0xFF
			message.append( chr(num_s ) )

	print("".join(message))
