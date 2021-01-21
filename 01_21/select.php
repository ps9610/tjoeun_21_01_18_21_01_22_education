<?
    //서버 접속 PHP
    //인코딩을 먼저 해야 한글이 안깨짐
    /* css 타입 쓰는거랑 비슷쓰, utf-8이라고 안 쓰고 붙여쓴다. */
    header("Content-type:text/html; charset=utf8"); 

    //데이터베이스 서버의 접속 정보 변수 등록
    $servername = localhost;
    $username   = sohye;
    $password   = qkthgp6438!;
    $dbname     = sohye; 

    $conn = mysqli_connect($servername, $username, $password, $dbname);
    mysqli_set_charset($conn, "utf8");   //데이터베이스 인코딩 = 문자 세팅을 해라라는 뜻
    //변수가 등록 되었으면 렌더링을 시켜주어야 함(위에다가 이어서 씀)

    if( !$conn ){ //데이터베이스 접속이 안된다면
        die("데이터베이스 접속 실패!");
    }
    else{
        echo "데이터베이스 접속 성공!";
    }

    /////////////////////////////////////헤더 끝, 정보 검색 시작////////////////////////////////////////////////////

    //정보 검색 본문 쿼리(Query)
    //변수 = 정보를 검색해라 , 모든 것을, login_table(리눅스 환경에서는 웬만하면 소문자, 공백없이) 로부터
    $sql = "select * from login_table";
    //데이터베이스 접속
    $result = mysql_query($conn, $sql);
    
    //이 에코를 AJAX를 이용해서 이동할거임. 정보 검색 본문. 반복문 프로그래밍
    echo $result;
    //이 에코를 AJAX를 이용해서 이동할거임. 정보 검색 본문. 반복문 프로그래밍

    /////////////////////////////////////////////////본문 끝, 나머지는 푸터/////////////////////////////////////////////////
    // 정보 검색이 끝났다면 데이터베이스 닫아주기
    mysqli_close($conn); //데이터베이스 닫기


?>