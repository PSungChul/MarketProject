function mode() {
			var btn_mode = document.getElementById("btn_mode");
			var tx_mode = document.getElementsByClassName("tx_mode");
			var body = document.body;
			
			if( btn_mode.value == "다크모드" ) {
				body.style.backgroundColor = "#383838";
				tx_mode[0].style.color = "white";
				tx_mode[1].style.color = "white";
				tx_mode[2].style.color = "white";
				tx_mode[3].style.color = "white";
				tx_mode[4].style.color = "white";
				btn_mode.value = "데이모드";
			} else {
				body.style.backgroundColor = "white";
				tx_mode[0].style.color = "black";
				tx_mode[1].style.color = "black";
				tx_mode[2].style.color = "black";
				tx_mode[3].style.color = "black";
				tx_mode[4].style.color = "black";
				btn_mode.value = "다크모드";
			}
		}
		
function check() {
			var id = "aaa"; //중복 확인용 ID값 //DB대체용
			var ch_id = document.getElementById("ch_id"); //ID입력값 가져오기위한 변수선언
			
			if( id == ch_id.value ) { //변수에 저장된 ID와 입력된 ID가 값이 같을 시
				alert(ch_id.value + "는 중복된 ID입니다.");
				ch_id.value = ""; //작성값 초기화용
			} else { //변수에 저장된 ID와 입력된 ID가 값이 다를 시
				alert(ch_id.value + "는 사용가능한 ID입니다.");
			}
		}