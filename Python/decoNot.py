with open("Notfile.hex", "rb") as bin:
	data= bin.read()
	mode = data[0]
	llave = 0xFF
	message = list()
	for byte in data[ 1 :  ]:
		if(byte != 0xFF):
		    message.append(chr(byte^0xFF))
	print("".join(message))
