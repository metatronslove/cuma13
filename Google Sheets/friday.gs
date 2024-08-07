function artancuma(tarih) {
	let testthis = new Date(tarih);
	if (testthis.getDate() > 13) testthis = new Date(changemonth(testthis, 1));
	testthis.setDate(13);
	let testday = testthis.getDay();
	while (testday != 5) {
			testthis = new Date(changemonth(testthis, 1));
			testday = testthis.getDay()
	}
	return testthis
}
function azalancuma(tarih) {
	let testthis = new Date(tarih);
	if (testthis.getDate() < 13) testthis = new Date(changemonth(testthis, -1));
	testthis.setDate(13);
	let testday = testthis.getDay();
	while (testday != 5) {
			testthis = new Date(changemonth(testthis, -1));
			testday = testthis.getDay()
	}
	return testthis
}
function changemonth(tarih, job) {
	let datetochange = new Date(tarih);
	if (job == -1) {
		if (datetochange.getMonth() > 0) {
			datetochange.setMonth(datetochange.getMonth() - 1)
		} else {
			datetochange.setFullYear(datetochange.getFullYear() - 1);
			datetochange.setMonth(11)
		}
	} else {
		if (datetochange.getMonth() < 11) {
			datetochange.setMonth(datetochange.getMonth() + 1)
		} else {
			datetochange.setFullYear(datetochange.getFullYear() + 1);
			datetochange.setMonth(0)
		}
	}
	return datetochange
}