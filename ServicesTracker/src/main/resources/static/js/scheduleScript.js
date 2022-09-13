window.addEventListener('load', function(e) {
	createTable();
});

let createTable = function() {
	let schedulesDiv = document.getElementById('schedules');
	let table = document.createElement('table');
	createTableHead(table);
	createTableBody(table);
	schedulesDiv.appendChild(table);
}

let createTableBody = function(table) {
	let tbody = document.createElement('tbody');
	usStates.forEach(function(state) {
		let row = document.createElement('tr');
		let name = document.createElement('td');
		name.textContent = state.name;
		row.appendChild(name);
		let abbr = document.createElement('td');
		abbr.textContent = state.abbr;
		row.appendChild(abbr);
		tbody.appendChild(row);
	});
	table.appendChild(tbody);
}

let createTableHead = function(table) {
	let thead = document.createElement('thead');
	let trow = document.createElement('tr');
	for (property in usStates[0]) {
		let th = document.createElement('th');
		th.textContent = property;
		trow.appendChild(th);
	}
	thead.appendChild(trow);
	table.appendChild(thead);

}

function getSchedules() {
	let xhr = new XMLHttpRequest();
	xhr.open("GET", "api/schedules");
	xhr.onreadystatechange = function() {
		if (xhr.readyState === 4) {
			if (xhr.status === 200) {
				displaySchedules(JSON.parse(xhr.responseText));
				console.log(JSON.parse(xhr.responseText));
			}
			else {
				console.error("Error loading events: " + xhr.status);
			}
		}
	};
	xhr.send();
}

function displaySchedules(schedules) {
	let schedulesDiv = document.getElementById('schedules');
	let table = document.createElement('table');
	
	createTableBody(table);
	schedulesDiv.appendChild(table);
	let thead = document.createElement('thead');
	let trow = document.createElement('tr');
	
	console.log(schedules[0]);
	for (property of schedules[0]) {
		let th = document.createElement('th');
		th.textContent = property;
		trow.appendChild(th);
	}
	thead.appendChild(trow);
	table.appendChild(thead);
}
