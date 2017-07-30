module.exports = {
  config: {
    // default font size in pixels for all tabs
    fontSize: 13,

    // font family with optional fallbacks
    fontFamily: '"MesloLGL NF", Menlo, "DejaVu Sans Mono", Consolas, "Lucida Console", monospace',

    // terminal cursor background color and opacity (hex, rgb, hsl, hsv, hwb or cmyk)
    cursorColor: 'rgba(255,255,0,1)',

    // `BEAM` for |, `UNDERLINE` for _, `BLOCK` for █
    cursorShape: 'BLOCK',

    // color of the text
    foregroundColor: '#fff',

    // terminal background color
    backgroundColor: '#000',

    // border color (window, tabs)
    borderColor: '#333',

    // custom css to embed in the main window
    css: '',
    // custom css to embed in the terminal window
    termCSS: `
		x-row {
			line-height: 21px
		}
		x-row .unicode-node {
			display: inline-block;
			vertical-align: top;
			width: auto !important;
		}
		x-row .unicode-node-,
		x-row .unicode-node- {
			text-indent: -9999px;
			width: 7.8265625px;
		}
		x-row .unicode-node-:after,
		x-row .unicode-node-:after {
			content: ' ';
			text-indent: 0;
			border-top: 10px solid transparent;
			border-bottom: 10px solid transparent;
			width: 0;
			height: 0;
		}
		x-row .unicode-node-:after {
			border-left: 7px solid;
			float: left;
		}
		x-row .unicode-node-:after {
			border-right: 7px solid;
			float: right;
		}
		x-row .unicode-node- {
			text-indent: -9999px;
			width: 7.8265625px;
		}
		x-row .unicode-node-:after {
			content: ' ';
			background-color: #f5da55;
			-webkit-mask: url('data:image/svg+xml;base64,PHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IiB3aWR0aD0iNDIycHgiIGhlaWdodD0iNTEycHgiPjxwYXRoIGQ9Ik0xNTYuMjE0ODEzMiwzNi42NTA5ODU3Yy0xNS4xOTY4NTM2LDExLjE3NDE2MzgtMzIuNjI4NTU1MywyMi4xMjQ4MzIyLTUyLjA3MTU5NDIsMzIuODUyMDY2bDAuMjIzNDgwMiwzLjM1MjI0OTFjMS4zNDA4ODEzLDAsMi45MDUyNzM0LTAuODkzOTIwOSw1LjE0MDEwNjItMi4wMTEzMzczYzIuMjM0ODMyOC0wLjIyMzQ5NTUsMy41NzU3Mjk0LDAuNjcwNDI1NCwzLjU3NTcyOTQsMi45MDUyNTgybDMuNTc1NzI5NC0yLjAxMTMzNzNsMS43ODc4NTcxLTAuMjIzNDk1NWwwLjIyMzQ4MDIsMS41NjQ0MDczYzAuMjIzNDgwMiwxLjU2NDQyMjYtMTIuMDY4MSwxMS4xNzQxNjM4LTM2LjQyNzc2NDksMjguMzgyNDE1OGwyLjAxMTM1MjUsMy4xMjg3Mzg0bC0xLjc4Nzg3MjMsMC4yMjM1MTA3bC0zLjc5OTIwOTYtMS4zNDA5MjcxYzAsMS4xMTc0MTY0LTEuNTY0MzkyMSwxLjc4Nzg0MTgtNS4xNDAxMjE1LDIuMDExMzM3M2wwLjIyMzQ4MDIsMS43ODc4NDE4bDQuMDIyNzA1MSw0LjQ2OTY2NTVjLTEuMzQwODk2NiwwLTMuMTI4NzY4OS0wLjIyMzQ5NTUtNS4zNjM2MDE3LTEuMTE3NDE2NGMtNy44MjE5MTQ3LDAuNjcwNDI1NC0xNS42NDM4MjkzLDYuNDgxMDAyOC0yMy4yNDIyNjM4LDE3LjIwODIzNjdsMi4wMTEzNTI1LDMuMTI4NzUzN2M2LjcwNDQ5ODMtNi4wMzQwNTc2LDEwLjUwMzcwNzktOS4xNjI4MTEzLDExLjYyMTEyNDMtOS4xNjI4MTEzbDAuNDQ2OTc1Nyw0LjkxNjY1NjVjLTEuMTE3NDE2NCwwLTIuOTA1Mjg4NywwLjg5MzkyMDktNS4xNDAxMjE1LDIuMDExMzIybDQuMjQ2MTg1Myw2LjI1NzUwNzNjOC4wNDUzOTQ5LTguNzE1ODIwMywxNi43NjEyNDU3LTE2LjA5MDgyMDMsMjYuNTk0NTEyOS0yMi4xMjQ4MzIyYzQuOTE2NjI2LDEuMzQwOTExOSw3LjM3NDkzOSwyLjY4MTgyMzcsNy4zNzQ5MzksNC40Njk2ODA4bDMuNTc1NzI5NC0wLjIyMzUxMDdjMjYuMTQ3NTUyNS0xOS40NDMwNjk1LDUyLjA3MTYwOTUtMzMuMjk4OTk2LDc3Ljc3MjE4NjMtNDIuMDE0ODMxNWwwLjIyMzQ4MDIsMy4zNTIyNDkxYy00LjY5MzE0NTgsNy4xNTE0ODkzLTguMDQ1NDEwMiwxMC43MjcxNzI5LTkuODMzMjgyNSwxMC45NTA2NjgzYzAuMjIzNDgwMiwyLjQ1ODMyODIsMS4xMTc0MzE2LDQuNDY5NjY1NSwyLjQ1ODMxMyw2LjQ4MTAwMjhjMC40NDY5NjA0LDQuNDY5NjY1NS0xMS4xNzQxNDg2LDMzLjc0NTk4NjktMzQuODYzMzcyOCw4OC4yNzU4OTQyQzgxLjU3MTM5NTksMzEwLjY0MTQ3OTUsMzYuNDI3NzgwMiw0MDQuMDU3NDk1MSwwLDQ2NC44NDQ5NzA3YzAsMS4xMTc0MzE2LDAuODkzOTI4NSwyLjkwNTI3MzQsMi4wMTEzNDQ5LDQuOTE2Njg3YzguOTM5MzM4Ny0yLjIzNDg2MzMsMTQuNzQ5OTAwOC00LjI0NjIxNTgsMTcuMjA4MjEzOC02LjQ4MTAxODFsMi4wMTEzNTI1LTAuMjIzNTEwN2wwLjIyMzQ4MDIsMy4zNTIyMzM5bDMuMzUyMjQ5MS0wLjIyMzQ0OTdsMy41NzU3MzctMi4wMTEzNTI1YzAsMS4xMTc0MzE2LDEuMzQwODk2NiwxLjU2NDM5MjEsMy41NzU3Mjk0LDEuMzQwODgxM2wwLjIyMzQ4NzksMy4zNTIyOTQ5YzAuMjIzNDgwMiwzLjM1MjI5NDktMS41NjQzODQ1LDguNDkyMzcwNi01LjgxMDU2OTgsMTUuNDIwMjg4MWMtMy43OTkyMDk2LDQuMjQ2Mjc2OS03LjU5ODQyNjgsMTIuOTYyMDM2MS0xMS44NDQ2MTIxLDI2LjE0NzU4M0wxNC43NDk5MDA4LDUxMmwzLjM1MjI0OTEtMC4yMjMzODg3YzE0LjUyNjQwNTMtMTYuMzE0MjcsMjUuNzAwNTY5Mi0zMi40MDUwOTAzLDMzLjI5OTAwMzYtNDguMDQ4ODg5MmM0Mi42ODUzMDI3LTEyLjUxNTA3NTcsNzUuMDkwMzc3OC0yNC44MDY3MDE3LDk3LjY2MjE4NTctMzYuODc0NzU1OWMyMi41NzE3OTI2LTIuMDExMzUyNSw0MC4wMDM1MjQ4LTcuODIxODk5NCw1MS42MjQ2MTg1LTE3LjY1NTE1MTRsLTAuMjIzNDQ5Ny0xLjc4Nzg0MThsLTguNDkyNDAxMSwyLjQ1ODMxM2wtMi4wMTEzNTI1LDAuMjIzNTEwN2wtMC4yMjM0ODAyLTEuNzg3ODQxOGMxNi41Mzc3ODA4LTIuNDU4Mzc0LDI4LjE1ODkwNS02LjI1NzUwNzMsMzQuNDE2NDQyOS0xMS4xNzQxOTQzYzMyLjQwNTA5MDMtMjUuMDMwMTUxNCw1Ni43NjQ3NzA1LTQyLjY4NTMwMjcsNzMuMzAyNDkwMi01My4xODg5NjQ4YzUxLjE3NzY3MzMtMzcuNTQ1MTY2LDc1LjMxMzg3MzMtNzMuNzQ5NTExNyw3Mi40MDg2MzA0LTEwOC4xNjU5MDg4Yy0wLjIyMzUxMDctMy41NzU3NDQ2LTExLjYyMTEyNDMtMTcuNjU1MTgxOS0zMy43NDYwMDIyLTQyLjIzODM0MjNjLTAuNDQ2OTYwNC00LjY5MzE0NTgsNy4zNzQ5Njk1LTExLjM5NzY0NCwyMy4wMTg3OTg4LTIwLjMzNjk3NTFsNDQuNDczMTQ0NS0zOS4xMDk1ODg2YzkuODMzMjUyLTEyLjczODU4NjQsMTUuODY3MzQwMS0zMy4yOTg5OTYsMTcuODc4NjkyNi02MS42ODEzOTY1bC0wLjY3MDQ3MTItNi43MDQ0OTgzYy0xLjc4NzkwMjgtMTkuODg5OTk5NC0xNi4wOTA3ODk4LTM1Ljk4MDgxOTctNDMuMzU1NzQzNC00OC4yNzIzOTk5QzM2MS4zNzI0NjcsNi40ODEwMTgxLDMzMi41NDMwOTA4LDAuNjcwNDQwNywyOTAuOTc1MjE5NywwLjAwMDAxNTNDMjU2Ljc4MjI4NzYsMy4xMjg0OTQzLDIxMS42Mzg2NzE5LDE1LjE5NjU3OSwxNTYuMjE0ODEzMiwzNi42NTA5ODU3TDE1Ni4yMTQ4MTMyLDM2LjY1MDk4NTd6IE0zOTUuNzg4OTA5OSwzOS41NTYzMDQ5bC0xLjM0MDkxMTksMy4zNTIyNDkxbC00OS42MTMyODEyLTIwLjc4MzkwNUMzNzcuOTEwMjQ3OCwyMy40NjU0ODQ2LDM5NC44OTQ5NTg1LDI5LjI3NjA2MiwzOTUuNzg4OTA5OSwzOS41NTYzMDQ5TDM5NS43ODg5MDk5LDM5LjU1NjMwNDl6IE0xOTUuMTAwOTIxNiwxNzcuMjIxOTY5NmMzLjM1MjIzMzktMTguMzI1NjgzNiw3LjE1MTQ1ODctMjguODI5MzQ1NywxMS4zOTc2NDQtMzEuMjg3NjU4N2wzNy4wOTgyMDU2LTgzLjM1OTI1MjljLTAuNDQ2OTYwNC01LjE0MDA5MDksNy4zNzQ5Njk1LTkuMTYyODI2NSwyMy42ODkyMzk1LTExLjg0NDU4OTJsNS4zNjM1ODY0LTAuNDQ2OTkxbDAuNDQ2OTYwNCw0LjY5MzE2MWMxNi4wOTA3ODk4LTIuNDU4MzI4MiwyNS45MjQwNzIzLTMuNzk5MjQwMSwyOS43MjMyOTcxLTQuMjQ2MTdjMjkuNDk5Nzg2NC0yLjQ1ODMyODIsNDQuNjk2NjU1MywzLjM1MjI0OTEsNDYuMDM3NTY3MSwxNy44Nzg2NjIxbDMuMzUyMjMzOS0wLjIyMzQ5NTVsLTAuNjcwNDQwNy04LjQ5MjM0MDFsMy41NzU3NDQ2LTAuMjIzNDk1NWM4LjcxNTgyMDMsNC42OTMxNjEsMTMuNDA4OTk2NiwxMC41MDM3NTM3LDEzLjg1NTk1NywxNy40MzE2NzExYzAuNDQ2OTYwNCw0LjY5MzE2MS0yLjAxMTM1MjUsMTAuNTAzNzM4NC03LjU5ODQxOTIsMTcuNDMxNjcxMWMtMi4yMzQ4MzI4LDAuMjIzNDk1NS0zLjU3NTc0NDYtMS4zNDA5MTE5LTMuNzk5MjI0OS00LjY5MzE2MWwtMy41NzU3NDQ2LDAuMjIzNDk1NWwtMC44OTM5MjA5LDEwLjA1Njc0NzRjLTE0Ljk3MzM1ODIsMjIuMzQ4MzI3Ni0yNS43MDA1NjE1LDMzLjc0NjAwMjItMzIuNDA1MDU5OCwzNC40MTY0MTI0Yy02LjAzNDA1NzYsOC4yNjg5MjA5LTkuODMzMjUyLDEyLjUxNTA3NTctMTEuMzk3Njc0NiwxMi43Mzg1ODY0Yy00LjY5MzE0NTgsNS41ODcwNjY3LTE3LjQzMTcwMTcsMTUuMTk2ODA3OS0zOC40MzkxMTc0LDI4LjYwNTgwNDRjLTYuOTI3OTc4NSwwLjY3MDQ0MDctMzIuNjI4NTQsMTAuNTAzNzUzNy03Ny4xMDE3MTUxLDI5Ljk0Njc0NjhjLTIuMjM0ODMyOC0xLjExNzQwMTEtNC40Njk2NjU1LTEuMzQwOTExOS03LjE1MTQ1ODctMS4xMTc0MDExbC0wLjIyMzQ4MDItMy4xMjg3NTM3QzE4NS45MzgwNzk4LDE5NS4xMDA2MzE3LDE4OC42MTk5MDM2LDE4Ny4wNTUyODI2LDE5NS4xMDA5MjE2LDE3Ny4yMjE5Njk2TDE5NS4xMDA5MjE2LDE3Ny4yMjE5Njk2eiBNNDAwLjQ4MjAyNTEsNzQuNDE5NjQ3MmwwLjIyMzUxMDcsMy4xMjg3NTM3Yy0xLjc4Nzg3MjMsMC4yMjM0OTU1LTUuMTQwMTM2Ny01LjE0MDA5MDktMTAuMDU2NzYyNy0xNS44NjczMjQ4bC0wLjIyMzQ4MDItMy4xMjg3NTM3QzM5My41NTQwNzcxLDU4LjEwNTM5MjUsMzk2LjkwNjMxMSw2My40Njg5Nzg5LDQwMC40ODIwMjUxLDc0LjQxOTY0NzJMNDAwLjQ4MjAyNTEsNzQuNDE5NjQ3MnogTTc0LjE5NjQ0MTcsMTE0LjE5OTcwN2wwLjIyMzQ4MDIsMS41NjQ0MDczYy0xLjExNzQxNjQsMC0yLjkwNTI3MzQsMC44OTM5MjA5LTUuMTQwMTA2MiwyLjAxMTM1MjVsLTEuNzg3ODcyMywwLjIyMzQ4MDJsLTAuMjIzNDgwMi0zLjEyODczODRMNzQuMTk2NDQxNywxMTQuMTk5NzA3eiBNMTgyLjEzODg4NTUsMTExLjUxNzg4MzNsMC40NDY5NjA0LDQuOTE2NjU2NWMtMS41NjQzOTIxLDAuMjIzNDk1NS0zLjc5OTIyNDksMi40NTgzMjgyLTYuNDgxMDQ4Niw3LjE1MTUwNDVsLTAuMjIzNDQ5Ny0zLjM1MjI2NDRjMy4xMjg3NTM3LTMuNzk5MjQwMSw0LjY5MzExNTItNi43MDQ0OTgzLDQuNjkzMTE1Mi04LjcxNTgyMDNMMTgyLjEzODg4NTUsMTExLjUxNzg4MzN6IE0xNjUuNjAxMTA0NywxNDYuMzgxMzAxOWwwLjY3MDQ3MTIsNi43MDQ0OTgzbC0xLjc4Nzg3MjMsMC4yMjM0ODAybC0wLjY3MDQ3MTItNi43MDQ0OTgzTDE2NS42MDExMDQ3LDE0Ni4zODEzMDE5eiBNMTYxLjM1NDkxOTQsMTU4LjQ0OTM4NjZjLTAuNDQ2OTYwNCw1LjU4NzA2NjctMS43ODc4NzIzLDguNDkyMzA5Ni00LjY5MzE0NTgsOC43MTU4MjAzbC0xLjc4Nzg3MjMsMC4yMjM1MTA3YzIuMDExMzUyNS0zLjc5OTI1NTQsMy4xMjg3Njg5LTYuNDgxMDE4MSwyLjkwNTI4ODctOC40OTIzNDAxTDE2MS4zNTQ5MTk0LDE1OC40NDkzODY2eiBNMTUzLjk3OTk4MDUsMTc1Ljg4MTExODhsMC4yMjM0ODAyLDEuNTY0MzkyMWwtMy4xMjg3Njg5LDUuMzYzNTg2NGwtMy4zNTIyNDkxLDAuMjIzNTEwN2wtMC4yMjM0ODAyLTEuNTY0NDIyNmMzLjM1MjI0OTEtMC4yMjM0ODAyLDQuOTE2NjI2LTIuMDExMzIyLDQuNjkzMTQ1OC01LjM2MzU4NjRMMTUzLjk3OTk4MDUsMTc1Ljg4MTExODh6IE0xNDYuMzgxNTQ2LDE5MS41MjQ5NDgxbC0wLjg5MzkzNjIsOC4yNjg4OTA0bC0xLjc4Nzg1NzEsMC4yMjM1MTA3bC0wLjY3MDQ1NTktOC4yNjg5MjA5TDE0Ni4zODE1NDYsMTkxLjUyNDk0ODF6IE0zMjcuNjI2NDk1NCwxOTcuNTU4OTQ0N2w3LjM3NDk2OTUsNC40Njk2NjU1YzAuMjIzNDgwMiwyLjIzNDgzMjgtMC44OTM5MjA5LDMuNTc1NzQ0Ni0zLjEyODc1MzcsMy43OTkyNTU0Yy0zLjEyODc1MzctMi4wMTEzNTI1LTUuNTg3MDk3Mi0yLjkwNTI3MzQtNy4zNzQ5Njk1LTIuOTA1MjczNGwtMC40NDY5NjA0LTQuOTE2NjU2NUwzMjcuNjI2NDk1NCwxOTcuNTU4OTQ0N3ogTTE4NS43MTQ1OTk2LDIxNi41NTUwMzg1bDAuMjIzNDgwMiwzLjEyODc1MzdsLTYuOTI3OTc4NSwwLjY3MDQxMDJsLTAuMjIzNDgwMi0zLjEyODc1MzdMMTg1LjcxNDU5OTYsMjE2LjU1NTAzODV6IE0zMDAuMTM4MDYxNSwyMjguMTc2MTkzMmM0LjkxNjYyNiwyLjIzNDgzMjgsNy4zNzQ5MzksNC40Njk2NjU1LDcuNTk4NDE5Miw2LjI1NzUwNzNsMC4yMjM0ODAyLDEuNTY0MzkyMWMtNC42OTMxNDU4LDAuNDQ2OTkxLTguOTM5MzMxMS0yLjAxMTMyMi0xMi45NjIwMzYxLTcuMzc0OTA4NEwzMDAuMTM4MDYxNSwyMjguMTc2MTkzMnogTTE1Mi42MzkwODM5LDI2NC4zODA0MzIxYzIwLjExMzUxMDEtMS43ODc4NDE4LDUxLjg0ODEyOTMtMTEuMTc0MTQ4Niw5NC45ODAzOTI1LTI4LjE1ODkyMDNsMTAuNTAzNzIzMS0wLjg5Mzg5MDRjMjEuOTAxMzY3Mi0xLjc4Nzg0MTgsMzguMjE1NjM3MiwyLjIzNDgzMjgsNDguOTQyODEwMSwxMi41MTUwNzU3bDAuNjcwNDcxMiw2LjcwNDQ5ODNjLTguMDQ1NDQwNywyMy4yNDIyMzMzLTE2Ljk4NDc3MTcsMzYuNjUxMjI5OS0yNi41OTQ1MTI5LDQwLjg5NzM4NDZsLTQ0LjY5NjY1NTMsMzUuNTMzODEzNWMtMzMuMjk5MDQxNywyMS45MDEzNjcyLTUxLjE3NzcwMzksMzIuODUyMTExOC01My44NTk0NjY2LDMzLjA3NTUwMDVjLTUyLjk2NTU2MDksMjkuMjc2MzY3Mi04Ni4wNDEwNzY3LDQ0LjI0OTY5NDgtOTguNzc5NjMyNiw0NS4zNjcxMjY1bC0yLjAxMTM1MjUsMC4yMjM1MTA3QzgzLjU4Mjc0ODQsNDAzLjM4NzA4NSwxMDcuMDQ4NDkyNCwzNTUuMTE0Njg1MSwxNTIuNjM5MDgzOSwyNjQuMzgwNDMyMUwxNTIuNjM5MDgzOSwyNjQuMzgwNDMyMXogTTIwMC45MTE0Njg1LDI0NS4zODQzNTM2bDAuMjIzNDgwMiwxLjU2NDQyMjZsLTcuMTUxNDU4NywwLjY3MDQxMDJsLTAuMjIzNDgwMi0xLjU2NDQyMjZMMjAwLjkxMTQ2ODUsMjQ1LjM4NDM1MzZ6IE0zNjEuMzcyNDY3LDIzOC4yMzI5MjU0bDEuMTE3NDAxMSwxMy4xODU1MTY0Yy0xLjU2NDM2MTYsMy41NzU3NDQ2LTMuMTI4NzUzNyw1LjM2MzYwMTctNC45MTY2MjYsNS4zNjM2MDE3bC0yLjAxMTMyMi0yMy4yNDIyNjM4QzM1OS4zNjExMTQ1LDIzNS4xMDQxNzE4LDM2MS4xNDg5ODY4LDIzNi42Njg1MzMzLDM2MS4zNzI0NjcsMjM4LjIzMjkyNTRMMzYxLjM3MjQ2NywyMzguMjMyOTI1NHogTTg5LjM5MzMxMDUsMzUzLjU1MDI5M2MtMi4yMzQ4MzI4LDExLjM5NzcwNTEtNC42OTMxNDU4LDE3LjIwODI1Mi03LjE1MTQ3NCwxNy40MzE3MDE3bC0wLjIyMzQ2NS0xLjU2NDM5MjFDODEuNTcxMzk1OSwzNjMuNjA3MDU1Nyw4NC4wMjk3MDg5LDM1OC40NjY5MTg5LDg5LjM5MzMxMDUsMzUzLjU1MDI5M0w4OS4zOTMzMTA1LDM1My41NTAyOTN6IE0xMzQuMDg5OTY1OCw0MTYuNTcyNTcwOGMxMi45NjIwMzYxLTIuNDU4MzEzLDQ4LjQ5NTg4MDEtMjEuMjMwODk2LDEwNi44MjUwMTIyLTU1Ljg3MDg0OTZsMC4yMjM0ODAyLDMuMTI4Nzg0MmMwLjIyMzQ4MDIsMS4zNDA4ODEzLTQuOTE2NjI2LDUuNTg3MDk3Mi0xNC45NzMzNTgyLDEyLjk2MTk3NTFjLTI5LjcyMzI5NzEsMTQuNTI2NDI4Mi00Ny4xNTQ5NjgzLDI0LjU4MzE5MDktNTIuMjk1MTA1LDI5LjcyMzI2NjZjLTMyLjE4MTU5NDgsMTEuMTc0MTk0My00OC4wNDg5MDQ0LDE4LjEwMjE3MjktNDcuODI1NDI0MiwyMC43ODM5MzU1Yy0yOC42MDU4NTAyLDExLjM5NzY0NC00Ny4zNzg0NDg1LDE5LjY2NjUwMzktNTYuMzE3Nzk0OCwyNC44MDY2NDA2Yy0yLjAxMTMzNzMsMC4yMjM1MTA3LTUuMTQwMTA2Mi0wLjY3MDQxMDItOS4xNjI4MTEzLTIuNDU4MzEzYy0wLjQ0Njk2MDQtNS44MTA2MDc5LDIuMDExMzUyNS0xMC41MDM3MjMxLDcuODIxOTE0Ny0xNC4zMDI5MTc1YzQuOTE2NjI2LTAuNDQ3MDIxNSw5LjgzMzI2NzIsMC4yMjM1MTA3LDE0LjMwMjkzMjcsMi4yMzQ4MDIyYzUuMzYzNjAxNy0yLjY4MTgyMzcsMTQuNTI2NDEzLTUuODEwNTQ2OSwyNy43MTE5MjkzLTguOTM5MzMxMWwtMC4yMjM0ODAyLTMuMzUyMjMzOWwtMTAuNTAzNzA3OSwwLjg5MzkyMDljMS4zNDA4OTY2LTEuNzg3ODQxOCwxMS4zOTc2NDQtNi40ODEwMTgxLDMwLjYxNzIwMjgtMTQuMzAyOTE3NWw1LjM2MzYwMTctMC40NDY5NjA0bDAuMjIzNDgwMiwxLjU2NDM5MjFjLTguOTM5MzMxMSwwLjY3MDQxMDItMTQuMDc5NDM3MywzLjU3NTc0NDYtMTUuMTk2ODUzNiw4LjI2ODkyMDljMC4yMjM0ODAyLDIuMDExMjkxNSwxLjM0MDg5NjYsMy4xMjg3MjMxLDMuNTc1NzI5NCwyLjkwNTIxMjRDMTMwLjczNzcxNjcsNDE5LjcwMTM1NSwxMzQuMDg5OTY1OCw0MTcuMjQzMDQyLDEzNC4wODk5NjU4LDQxNi41NzI1NzA4TDEzNC4wODk5NjU4LDQxNi41NzI1NzA4eiBNNzkuMTEzMDgyOSwzNzYuMTIyMDcwM2wwLjIyMzQ4MDIsMS41NjQ0NTMxYzAuMjIzNDgwMiwyLjIzNDgwMjItMC44OTM5MzYyLDMuNTc1NzQ0Ni0zLjEyODc2ODksMy43OTkxOTQzbC0wLjIyMzQ4MDItMS41NjQzOTIxQzc1Ljc2MDgzMzcsMzc3LjkwOTk3MzEsNzYuODc4MjUwMSwzNzYuNTY5MDkxOCw3OS4xMTMwODI5LDM3Ni4xMjIwNzAzTDc5LjExMzA4MjksMzc2LjEyMjA3MDN6IE0xNjIuNjk1ODMxMywzOTguOTE3NDE5NGMtNC4yNDYxODUzLDAuNDQ2OTYwNC0xMi4wNjgxLDMuNzk5MjU1NC0yMy45MTI3MDQ1LDEwLjUwMzcyMzFsLTEuNzg3ODcyMywwLjIyMzUxMDdsLTAuMjIzNDgwMi0zLjM1MjIzMzljOC40OTIzNzA2LTAuNjcwNDcxMiwxNS44NjczMDk2LTQuMDIyNzA1MSwyMS45MDEzNjcyLTEwLjA1Njc2MjdDMTYxLjEzMTQzOTIsMzk1Ljc4ODYzNTMsMTYyLjQ3MjMyMDYsMzk2LjkwNjA2NjksMTYyLjY5NTgzMTMsMzk4LjkxNzQxOTRMMTYyLjY5NTgzMTMsMzk4LjkxNzQxOTR6IE03NS45ODQzMTQsNDIzLjA1MzU4ODlsNS4zNjM2MDE3LTAuNDQ3MDIxNWwwLjIyMzQ4MDIsMS43ODc4NDE4Yy0xLjM0MDg5NjYsMC0yLjkwNTI3MzQsMC44OTM5MjA5LTUuMTQwMTIxNSwyLjAxMTM1MjVsLTMuMzUyMjQ5MSwwLjIyMzUxMDdDNzIuODU1NTQ1LDQyNS4wNjUwMDI0LDczLjc0OTQ4MTIsNDIzLjcyNDA2MDEsNzUuOTg0MzE0LDQyMy4wNTM1ODg5TDc1Ljk4NDMxNCw0MjMuMDUzNTg4OXogTTQwLjQ1MDQ3LDQ0Mi45NDM2NjQ2bDMuNzk5MjI0OSwxLjU2NDM5MjFjLTEuMzQwOTExOSwxMC4wNTY3NjI3LTQuMjQ2MTg1MywxNS4xOTY4Mzg0LTkuMzg2MzA2OCwxNS42NDM3OTg4Yy00LjAyMjY5NzQtMS43ODc4NDE4LTcuNTk4NDI2OC0yLjQ1ODMxMy0xMC45NTA2NzYtMi4yMzQ4MDIybC0wLjQ0Njk2ODEtNC45MTY2ODdjLTAuMjIzNDgwMi0yLjAxMTI5MTUsMC44OTM5MzYyLTMuMTI4NzIzMSwzLjM1MjI0OTEtMy43OTkxOTQzYzIuMjM0ODMyOC0wLjIyMzUxMDcsMy41NzU3MzcsMS4zNDA4ODEzLDMuNzk5MjE3Miw0LjY5MzExNTJDMzYuNjUxMjYwNCw0NDYuNTE5MzQ4MSw0MC4wMDM1MDk1LDQ0Mi45NDM2NjQ2LDQwLjQ1MDQ3LDQ0Mi45NDM2NjQ2TDQwLjQ1MDQ3LDQ0Mi45NDM2NjQ2eiIvPjwvc3ZnPg==') no-repeat 0 center;
			-webkit-mask-size: 8px 10px;
			text-indent: 0;
			float: left;
			width: 7.8265625px;
			height: 21px;
		}
	  `,

    // set to `true` (without backticks) if you're using a Linux setup that doesn't show native menus
    // default: `false` on Linux, `true` on Windows (ignored on macOS)
    showHamburgerMenu: '',

    // set to `false` if you want to hide the minimize, maximize and close buttons
    // additionally, set to `'left'` if you want them on the left, like in Ubuntu
    // default: `true` on windows and Linux (ignored on macOS)
    showWindowControls: '',

    // custom padding (css format, i.e.: `top right bottom left`)
    padding: '0 0 0 4px',

    // the full list. if you're going to provide the full color palette,
    // including the 6 x 6 color cubes and the grayscale map, just provide
    // an array here instead of a color map object
    colors: {
      black: '#000000',
      red: '#ff0000',
      green: '#33ff00',
      yellow: '#ffff00',
      blue: '#0066ff',
      magenta: '#cc00ff',
      cyan: '#00ffff',
      white: '#d0d0d0',
      lightBlack: '#808080',
      lightRed: '#ff0000',
      lightGreen: '#33ff00',
      lightYellow: '#ffff00',
      lightBlue: '#0066ff',
      lightMagenta: '#cc00ff',
      lightCyan: '#00ffff',
      lightWhite: '#ffffff'
    },

    // the shell to run when spawning a new session (i.e. /usr/local/bin/fish)
    // if left empty, your system's login shell will be used by default
    // make sure to use a full path if the binary name doesn't work
    // (e.g `C:\\Windows\\System32\\bash.exe` instad of just `bash.exe`)
    // if you're using powershell, make sure to remove the `--login` below
    shell: '',

    // for setting shell arguments (i.e. for using interactive shellArgs: ['-i'])
    // by default ['--login'] will be used
    shellArgs: ['--login'],

    // for environment variables
    env: {},

    // set to false for no bell
    bell: 'SOUND',

    // if true, selected text will automatically be copied to the clipboard
    copyOnSelect: false,

    // if true, on right click selected text will be copied or pasted if no
    // selection is present (true by default on Windows)
    // quickEdit: true

    // URL to custom bell
    // bellSoundURL: 'http://example.com/bell.mp3',

	addUnicodeCssClasses: true,

    // for advanced config flags please refer to https://hyper.is/#cfg
	hyperTabs: {
		tabIconsColored: true,
		activityColor: 'salmon'
	},
	nordHyper: {
		cursorColor: 'rgb(209, 59, 130)'
	},
	paneNavigation: {
		showIndicators: false, // Show pane number
	}
  },

	// a list of plugins to fetch and install from npm
	// format: [@org/]project[#version]
	// examples:
	//   `hyperpower`
	//   `@company/project`
	//   `project#1.0.1`
	plugins: [
        "nord-hyper",
        "hyper-hide-title",
        "hyper-tabs-enhanced",
        "hyper-pane",
        "hyperlayout",
        "hyperterm-tab-numbers",
        "hypercwd",
        "hyperterm-tabs"
    ],

	// in development, you can create a directory under
	// `~/.hyper_plugins/local/` and include it here
	// to load it and avoid it being `npm install`ed
	localPlugins:[]

};
