// 데이모드, 다크모드
const btn_mode = document.getElementById("btn_mode"); // 버튼
const tx_mode = document.getElementsByClassName("tx_mode"); // 내부 내용들
const body = document.body; // 바디태그 전체
btn_mode.addEventListener("click", function() {
	if (btn_mode.value == "다크모드") {
		body.style.backgroundColor = "#383838";
		tx_mode[0].style.color = "white";
		tx_mode[1].style.color = "white";
		btn_mode.value = "데이모드";
	} else {
		body.style.backgroundColor = "white";
		tx_mode[0].style.color = "black";
		tx_mode[1].style.color = "black";
		btn_mode.value = "다크모드";
	}
});