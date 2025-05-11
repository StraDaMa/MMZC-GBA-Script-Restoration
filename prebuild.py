import glob
import os
import subprocess
import struct

def process_msgs(folderName, prefix):
	files = glob.glob(f"{folderName}/*.msg")
	baseFolderName = os.path.splitext(os.path.basename(folderName))[0]
	with open(f"{baseFolderName}.h", 'w') as c_header_array_file:
		# Write top of header
		c_header_array_file.write(f"#pragma once\n")
		c_header_array_file.write(f"#include <cstdint>\n\n")
		# Write top of source
		for fileName in files:
			baseName = os.path.splitext(os.path.basename(fileName))[0]
			baseName = f"{prefix}_{baseName}"
			with open(fileName, 'rb') as binary_file:
				# Write header
				baseDataOffset = struct.unpack("<H", binary_file.peek(2)[:2])[0]
				numEntries = baseDataOffset // 2
				scriptOffsets = struct.unpack(f"<{numEntries}H", binary_file.read(baseDataOffset))
				# Write the script offsets
				c_header_array_file.write(f"alignas(16) inline constexpr uint16_t {baseName}_script_offsets[] = {{\n")

				for i, scriptOffset in enumerate(scriptOffsets, 1):
					c_header_array_file.write(f"0x{scriptOffset - baseDataOffset:04X},")
					# Add a new line every 8 values
					if i % 8 == 0:
						c_header_array_file.write("\n")
				c_header_array_file.write("\n};\n")

				c_header_array_file.write(f"constexpr int {baseName}_num_entries = {numEntries};\n")
				c_header_array_file.write(f"alignas(16) inline constexpr uint8_t {baseName}_script_data[] = {{\n")

				binary_data = binary_file.read()
				for i, byte in enumerate(binary_data, 1):
					c_header_array_file.write(f"0x{byte:02X},")
					# Add a new line every 16 bytes
					if i % 16 == 0:
						c_header_array_file.write("\n")
				c_header_array_file.write("\n};\n")


# process all tpl to msg
os.makedirs("tpl/log", exist_ok = True)
processList = []
textDirs = [
	("tpl/mmz1_tpl", "tpl/mmz1_msg", "mmz1"),
	("tpl/mmz2_tpl", "tpl/mmz2_msg", "mmz2"),
	("tpl/mmz3_tpl", "tpl/mmz3_msg", "mmz3"),
	("tpl/mmz4_tpl", "tpl/mmz4_msg", "mmz4"),
]

# run all TextPet runs
for tplDir, msgDir, gameID in textDirs:
	baseName = os.path.basename(tplDir)
	p = subprocess.Popen([
		"tpl/TextPet.exe",
		"Load-Plugins", "tpl/plugins",
		"Game", gameID,
		"Read-Text-Archives", tplDir,
		"--format", "tpl",
		"Write-Text-Archives", msgDir,
		"--single",
		"--format", "msg"
	],
	stdout = open(f"tpl/log/{baseName}.stdout.txt", "w"),
	stderr = open(f"tpl/log/{baseName}.stderr.txt", "w"))
	processList.append(p)

errorCodes = []

# wait for everything to finish
for p in processList:
	errorCode = p.wait()
	if errorCode != 0:
		print(f"Error: {p.args}")
	errorCodes.append(errorCode)

if sum(errorCodes) != 0:
	exit(1)

# Process msg to header / cpp file
for tplDir, msgDir, gameID in textDirs:
	process_msgs(msgDir, gameID)