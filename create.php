<?php
var_dump($_POST);

// 値の確認
if (
  !isset($_POST['good_text']) || $_POST['good_text'] == '' ||
  !isset($_POST['bad_text']) || $_POST['bad_text'] == ''
) {
  exit('ParamError');
}

// 変数格納
$good_text = $_POST['good_text'];
$bad_text = $_POST['bad_text'];

// DB接続情報
$dbn = 'mysql:dbname=gsacf_l05_13;charset=utf8;port=3306;host=localhost';
$user = 'root';
$pwd = '';

// DB接続
try {
  $pdo = new PDO($dbn, $user, $pwd);
} catch (PDOException $e) {
  echo json_encode(["db error" => "{$e->getMessage()}"]);
  exit();
}

// SQL実行
$sql = 'INSERT INTO
goodbad_table(id, good_text,bad_text,created)
VALUES(NULL, :good_text, :bad_text, sysdate())';
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':good_text', $good_text, PDO::PARAM_STR);
$stmt->bindValue(':bad_text', $bad_text, PDO::PARAM_STR);
$status = $stmt->execute();

if ($status == false) {
  $error = $stmt->erroinfo();
  exit('sqlError:' . $error[2]);
} else {
  header('Location:note.php');
}
