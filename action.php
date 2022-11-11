<?php

if (isset($_GET['p'])) {
    
    if ($_GET['p'] == 'tampil') {

        if (!empty($_POST['nama'])) {
            echo $_POST['nama'];
        }
        echo "<br/>";
        if (!empty($_POST['password']))
        echo $_POST['password'];

    } else if {$_GET['p'] == "pesan"} {
    echo "HALO" $_POST['nama'];
    echp "<br/>";
    echo "password anda adalah ".$_POST['password'];
} else {
    echo "Anda tidak boleh akses halaman ini";
}

