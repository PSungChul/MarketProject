// 중복 확인
const btn_check = document.getElementById("btn_check"); // 중복 확인 버튼
const id = "aaa"; // 중복 확인용 ID값 // DB대체용
btn_check.addEventListener("click", function() {
	const ch_id = document.getElementById("ch_id"); // ID입력값
	if (id == ch_id.value) { // 변수에 저장된 ID와 입력된 ID가 값이 같을 시
		alert(ch_id.value + "는 중복된 ID입니다.");
		ch_id.value = ""; // 작성값 초기화용
	} else { // 변수에 저장된 ID와 입력된 ID가 값이 다를 시
		alert(ch_id.value + "는 사용가능한 ID입니다.");
	}
});