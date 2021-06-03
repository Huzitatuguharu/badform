<?php

// DB接続情報
$dbn = 'mysql:dbname=gsacf_l05_13;charset=utf8;port=3306;host=localhost';
$user = 'root';
$pwd = '';

// DB接続
// $statusにSQLの実行結果が入る（取得したデータではない点に注意）
try {
  $pdo = new PDO($dbn, $user, $pwd);
} catch (PDOException $e) {
  echo json_encode(["db error" => "{$e->getMessage()}"]);
  exit();
}

// SQL文の組み立て
$sql = 'SELECT * FROM goodbad_table ORDER BY id asc';
// $sqlを代入
$stmt = $pdo->prepare($sql);
// へんすうにだいにゅう
$status = $stmt->execute();


// データの処理
if ($status == false) {
  $error = $stmt->errorInfo();
  exit('sqlError:' . $error[2]);
} else {
  // データの取得 fetchAll
  $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
  $output = "";


  foreach ($result as $record) {
    $output .= "<div class='card_parent'>";
    $output .= "<div class='cardurl'>{$record["bad_text"]}</div>";
    $output .= "<div class='cardgood'>{$record["good_text"]}</div>";
    $output .= "</div>";
  }
}

?>

<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="style.css">
  <title>BADUIメモ</title>
</head>

<body>
  <h1>
    <p class="title">あらら？なぜだめ</p>
  </h1>
  <div class="card">


    <?= $output ?>

  </div>

  <form class="memoarea" action="create.php" method="post">
    <div>
      <p>
        あらら？
      </p>
      <textarea class="note_text" rows="4" name="bad_text"></textarea>
    </div>
    <div>
      <p>
        なぜだめ
      </p><textarea class="note_text" rows="4" name="good_text"></textarea>
    </div>
    <div>
      <button id="save_btn">保存</button>
    </div>
    <a href="form_bad.php" class="link" id="link_BAD">BADフォーム</a>
  </form>


</body>

</html>
