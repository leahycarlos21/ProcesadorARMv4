
with open("D:/Tony/Desktop/c/Clases virtuales/Taller/Proyect/Archivos/file.hex", "rb") as bin:
	data= bin.read()
	mode = data[0]
	llave = data[1]
	message = list()
	for byte in data[ 2 :  ]:
		if(byte != 0xFF):
			message.append(chr(byte^llave))
	print("".join(message))
