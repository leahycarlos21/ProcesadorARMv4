
with open("file.hex", "rb") as bin:
	data= bin.read()
	mode = data[0]
	llave = data[1]
	message = list()
	print(data)
	for byte in data[ 2 :  ]:
		if(byte != 0xFF):
			message.append(chr(byte^llave))
	print("".join(message))
