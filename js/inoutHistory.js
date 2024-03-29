document.addEventListener("DOMContentLoaded", function () {

	document.querySelector(".navi-item6").setAttribute("class", "navi-item navi-item6 active");

});

// 셀렉트별 검색 기능
function goSearch() {
	let input = document.getElementById("searchInput").value.toUpperCase();
	let selectOption = document.getElementById("selectOption").value;

	let tbl = document.getElementById("tbl");
	let tbody = tbl.getElementsByTagName("tbody")[0];
	let rows = tbody.getElementsByTagName("tr");

	for (let i = 0; i < rows.length; i++) {
		const cells = rows[i].getElementsByTagName("td");
		let match = false;

		for (let j = 0; j < cells.length; j++) {
			const cell = cells[j];
			const txtValue = cell.textContent || cell.innerText;

			if (selectOption === "all") {
				if (txtValue.toUpperCase().indexOf(input) > -1) {
					match = true;
					break;
				}
			} else if (selectOption === "LOT" && j === 0) {
				if (txtValue.toUpperCase().indexOf(input) > -1) {
					match = true;
					break;
				}
			} else if (selectOption === "productCode" && j === 3) {
				if (txtValue.toUpperCase().indexOf(input) > -1) {
					match = true;
					break;
				}
			} else if (selectOption === "productName" && j === 4) {
				if (txtValue.toUpperCase().indexOf(input) > -1) {
					match = true;
					break;
				}
			}
		}

		rows[i].style.display = match ? "" : "none";
	}
}

// 테이블 내 입/출고 셀렉트
function goInout() {
	let inoutSelect = document.getElementById("inoutSelect");
	var optionTxt = inoutSelect.value;

	let tbl = document.getElementById("tbl");
	let tbody = tbl.getElementsByTagName("tbody")[0];
	let rows = tbody.getElementsByTagName("tr");

	for (let i = 0; i < rows.length; i++) {
		const cells = rows[i].getElementsByTagName("td");
		let match = false;

		for (let j = 0; j < cells.length; j++) {
			const cell = cells[j];
			const txtValue = cell.textContent || cell.innerText;

			if (optionTxt === "작업 구분" && j === 2) {
				if (txtValue.toUpperCase().indexOf(optionTxt) == -1) {
					match = true;
					break;
				}
			} else if (optionTxt === "입고" && j === 2) {
				if (txtValue.toUpperCase().indexOf(optionTxt) > -1) {
					match = true;
					break;
				}
			} else if (optionTxt === "출고" && j === 2) {
				if (txtValue.toUpperCase().indexOf(optionTxt) > -1) {
					match = true;
					break;
				}
			}
		}

		rows[i].style.display = match ? "" : "none";
	}
}
