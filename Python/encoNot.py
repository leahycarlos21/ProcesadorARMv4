message = "hola"

llave = 0xFF

msg_list = list(message)
coded = list()
coded.append(0x00)
for i in range(len(msg_list)):
        coded.append( ord(msg_list[i])^llave)
coded.append(0xFF)
with open("Notfile.hex", "wb") as bin_file:
	bin_file.write(bytes(coded))
