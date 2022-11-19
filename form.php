<title> Learning form </title>
<form method="POST" action="" enctype="multipart/form-data">
    <table> 
    <tr>
        <td> Nama </td>
        <td> : </td>
        <td> <input type="text" name="nama"> </td>
    </tr>
    <tr>
        <td> Alamat </td>
        <td> : </td>
        <td> <input type="text" name="alamat"> </td>
    </tr>
    <tr>
        <td> Foto </td>
        <td> : </td>
        <td> <input type="file" name="file"> </td>
    </tr>
    <tr>
        <td></td>
        <td></td>
        <td> <input type="Submit" name="hasil" value="SEND"> </td>
    </tr>
    </table>
</form>

<?php
    if (isset($_POST["hasil"])) {

        $nama = $_POST["nama"];
        $alamat = $_POST["alamat"];

        $file = $_FILES["file"] ["name"];
        $tmp_name = $_FILES['file'] ["tmp_name"];

        move_uploaded_file($tmp_name, "gambar/". $file);
    }
    ?>

<table border="1" cellspacing="0">
    <tr>
        <td>Nama</td>
        <td>Alamat</td>
        <td>Foto</td>
    </tr>
    <tr>
        <td><?php echo $nama ?></td>
        <td><?php echo $alamat ?></td>
        <td><img src="gambar/<?php echo $file ?>" style="width: 100px"></td>
    </tr>
</table>
