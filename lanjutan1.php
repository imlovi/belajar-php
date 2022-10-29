<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Practice Submit </title>
</head>
<body>
    <h1> Belajar dan latihan </h1>
    <form action="<?php $_SERVER['PHP_SELF'] ?>" method="post">
        <label>Nama </label>
        <input type="text" name="nama">
        <label>Jumlah </label>
        <input type="text" name="no">
        <input type="submit" name="submit" value="submit">
</form>
<?php
    if(!empty($_POST['submit'])) {

    switch($_POST ['nama']) {
        case "Anthony":
            $pesan = $_POST['nama']." adalah kesukaan cewek";
        break;
        case "Alexa":
            $pesan = $_POST['nama']." adalah kesukaan cowok";
        break;
        default:
            $pesan = $_POST['nama']. " darimana ya?";
    }

    for ($i=0;$i<$_POST['no'];$i++) {
        echo $pesan,"<br>";
    } 
    
    }else {
        echo "Anda belum input nama dan jumlah";
    }
?>
</body>
</html>
<?php

/*
echo "<b> Belajar Loop </b>";
$nama = "Jisoo";
$no= 12;

for ($i=0; $i<$no; $i++) {
    $n = $i + 1;
    echo $n. " ". $nama. "<br>";
}
*/

/*
$i = 0;
//while itu menggambil data di database
echo "<br>";
while ($i<$no) {
    $n = $i + 1;
    echo $n. " ". $nama. "<br>";
    $i++;
}
*/

/*
echo "<br>";
do {
    $n = $i + 2;
    echo $n. " ". $nama. "<br>";
    $i++;
} while ($i<$no);
*/

/*
echo "<br> <b> Belajar array </b>";
$data = array ("Spanyol", "Japan", "Denmark", "Switzerland", "England");
foreach ($data as $value) {
    echo "<br>" ;
    print $value;
}
    echo "<br> <i>Showed</i> nilai 2 = ";
    echo $data[2];

echo "<br> <br> <b> Belajar Percabangan </b>";
echo "<br>";
if ($nama == "Kitty") {
    echo $nama." adalah kesukaan cewek";
} else if($nama == "Hello") { 
    echo $nama." bukan kesukaan cowok";
} else {
    echo $nama. " darimana ya?";
}
*/

/*
echo "<br>";
switch($nama) {
    case "Anthony":
        $pesan = $nama." adalah kesukaan cewek";
    break;
    case "Alexa":
        $pesan = $nama." adalah kesukaan cowok";
    default:
        $pesan = $nama. " darimana ya?";
}
*/
?>