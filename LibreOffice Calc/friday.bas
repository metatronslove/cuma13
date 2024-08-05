Function artancuma(Optional tarih As Date) As Date
	Dim testthis As Date
	If day(tarih) > 13 Then tarih = ChangeMonth(tarih, 1)
	testthis = DateSerial(year(tarih), month(tarih), 13)
	testday = weekday(testthis)
	Do Until testday = 6
		testthis = ChangeMonth(testthis, 1)
		testday = weekday(testthis)
	Loop
	artancuma = testthis
End Function
Function azalancuma(Optional tarih As Date) As Date
	Dim testthis As Date
	If day(tarih) < 13 Then tarih = ChangeMonth(tarih, -1)
	testthis = DateSerial(year(tarih), month(tarih), 13)
	testday = weekday(testthis)
	Do Until testday = 6
		testthis = ChangeMonth(testthis, -1)
		testday = weekday(testthis)
	Loop
	azalancuma = testthis
End Function
Function ChangeMonth(Optional tarih As Date, Optional Job As Variant) As Date
	Dim newmonth, newyear As Integer
	Select Case Job
	Case -1
		If month(tarih) > 1 Then
			newmonth = (month(tarih) - 1)
			newyear = year(tarih)
		Else
			newmonth = 12
			newyear = (year(tarih) - 1)
		End If
	Case Else
		If month(tarih) < 12 Then
			newmonth = (month(tarih) + 1)
			newyear = year(tarih)
		Else
			newmonth = 1
			newyear = (year(tarih) + 1)
		End If
	End Select
	ChangeMonth = DateSerial(newyear, newmonth, 13)
End Function