import datetime
today = datetime.datetime.now()
if int(today.strftime("%d")) <= 13: testthis = datetime.datetime.strptime(str(today.strftime("%Y")) + "/" + str(today.strftime("%m")) + "/" + "13", "%Y/%m/%d")
if int(today.strftime("%d")) > 13:
	toincrement = datetime.datetime.strptime(str(today.strftime("%Y")) + "/" + str(today.strftime("%m")) + "/" + "13", "%Y/%m/%d")
	if int(toincrement.strftime("%m")) < 12:
		incremented = int(toincrement.strftime("%m")) + 1
		newyear = int(toincrement.strftime("%Y"))
	else:
		incremented = 1
		newyear = int(toincrement.strftime("%Y")) + 1
	jedi = "00" + str(incremented)
	warior = str(newyear) + "/" + str(jedi[-2:]) + "/" + str(toincrement.strftime("%d"))
	testthis = datetime.datetime.strptime(warior, "%Y/%m/%d")
dayofweek = int(testthis.strftime("%w"))
while dayofweek != 5:
	toincrement = datetime.datetime.strptime(str(testthis.strftime("%Y")) + "/" + str(testthis.strftime("%m")) + "/" + str(testthis.strftime("%d")), "%Y/%m/%d")
	if int(toincrement.strftime("%m")) < 12:
		incremented = int(toincrement.strftime("%m")) + 1
		newyear = int(toincrement.strftime("%Y"))
	else:
		incremented = 1
		newyear = int(toincrement.strftime("%Y")) + 1
	jedi = "00" + str(incremented)
	warior = str(newyear) + "/" + str(jedi[-2:]) + "/" + str(toincrement.strftime("%d"))
	testthis = datetime.datetime.strptime(warior, "%Y/%m/%d")
	dayofweek = int(testthis.strftime("%w"))
friday = str(testthis.strftime("%Y")) + "/" + str(testthis.strftime("%m")) + "/" + "13"
bugun = datetime.datetime.strptime(str(today.strftime("%Y")) + "/" + str(today.strftime("%m")) + "/" + str(today.strftime("%d")), "%Y/%m/%d")
cuma = datetime.datetime.strptime(friday, "%Y/%m/%d")
difference = (cuma - bugun).days
ay = ["Ocak", "Şubat", "Mart", "Nisan", "Mayıs", "Haziran", "Temmuz", "Ağustos", "Eylül", "Ekim", "Kasım", "Aralık"]
if int(difference) > 0:
	print("\n" + str(difference) + " gün sonra " + cuma.strftime("%d") + " " + ay[int(cuma.strftime("%m"))-1] + " " + cuma.strftime("%Y") + " Cuma\n")
else:
	print("\nBugün " + cuma.strftime("%d") + " " + ay[int(cuma.strftime("%m"))-1] + " " + cuma.strftime("%Y") + " Cuma\n")