Function artancuma(Optional tarih As Date, Optional ayinkaci As Integer, Optional haftagunu As Variant) As Date
	Dim testthis As Date
	If day(tarih) > 13 Then
		testthis = DateSerial(year(tarih), month(tarih), 13)
		testthis = ChangeMonth(testthis, 1)
	Else
		testthis = DateSerial(year(tarih), month(tarih), 13)
	End If
	Do Until weekday(testthis) = 6
		testthis = ChangeMonth(testthis, 1)
	Loop
	artancuma = testthis
End Function
Function azalancuma(Optional tarih As Date, Optional ayinkaci As Integer, Optional haftagunu As Variant) As Date
	Dim testthis As Date
	If day(tarih) < 13 Then tarih = ChangeMonth(tarih, -1)
	testthis = DateSerial(year(tarih), month(tarih), 13)
	Do Until weekday(testthis) = 6
		testthis = ChangeMonth(testthis, -1)
	Loop
	azalancuma = testthis
End Function
Function haftadagun(Optional gun As Variant) As Integer
End Function
Function ChangeMonth(Optional tarih As Date, Optional Job As Variant) As Date
	Dim newmonth, newyear As Integer
	If Job = -1 Then
		If month(tarih) > 1 Then
			newmonth = month(tarih) - 1
			newyear = year(tarih)
		Else
			newmonth = 12
			newyear = year(tarih) - 1
		End If
	Else
		If month(tarih) < 12 Then
			newmonth = month(tarih) + 1
			newyear = year(tarih)
		Else
			newmonth = 1
			newyear = year(tarih) + 1
		End If
	End If
	ChangeMonth = DateSerial(newyear, newmonth, day(tarih))
End Function
