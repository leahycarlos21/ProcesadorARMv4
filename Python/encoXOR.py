
message = "Prueba"

llave = 0x33
msg_list = list(message)
coded = list()
coded.extend([0x00, llave])
for i in range(len(msg_list)):
        coded.append( ord(msg_list[i])^llave)
coded.append(0xFF)
with open("file.hex", "wb") as bin_file:
	bin_file.write(bytes(coded))
