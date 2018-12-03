from __future__ import print_function


if __name__ == '__main__':

	fh = open('parseme.txt')
	header = next(fh)
	for line in fh:
		linelist = line.strip().split("|")
		#print(linelist)
		print("{")
		print("title: '{}',".format(linelist[1].strip()))
		datalist = linelist[0].split("/")
		month, day, year = datalist[0].strip(), datalist[1].strip(), datalist[2].strip()
		if int(month) < 10:
			month = str(0) + month
		if int(day) < 10:
			day = str(0) + day
		print("start: '20{}-{}-{}',".format(year, month, day))
		print("speaker: '{}',".format(linelist[2].strip()))
		print("description: '{}',".format(linelist[3].strip()))
		print("},")		
