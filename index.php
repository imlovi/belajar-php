
<?php

    echo "Hey There!";

    $nama = "<br> Ini aku";
    $nama1 = "Lovi";
    $umur = 21;

    print "$nama <b> $nama1 </b> umur $umur tahun";

    $namaKakak = "Prince";
    $umurKakak = 27;
    $umurangka = 2;

    echo "<br> Aku punya kakak, namanya <b> $namaKakak </b> yang berumur $umurKakak tahun";

    $perbedaan = $umurKakak - $umur;
    echo "<br> selisih usia saya dan kakak adalah $perbedaan tahun.";
      //operator aritmatik + - * / % ++ --
    echo $umurangka * $umur +$umurKakak;
    // ++ untuk penambahan 1 digit saja
    $umurKakak++;
    print "<br> $umurKakak";
    // -- untuk pengurangan 1 digit saja
    $umurKakak--;
    print "<br> $umurKakak";

    //belajar numerik lebih dalam
    $angka = 25;
    $angka1 = 40;
    $angka2 = 30.57;
    //nama = nilai; bisa merubah nilai meski di var yang sama;
    $angka = $angka + $angka1 / $angka2;
    $angka2 +- $angka1;
    print "<br> $angka";

    //metode numerik = round, (min,max) max, min
    // round ini untuk desimal
    echo  "<br>" ;
    echo  round($angka2);
    //rand ini menghasilkan angka acak. Terdapat 2 elemen penting yaitu (min,max)
    echo "<br>";
    echo "Rand. Lovi suka angka". rand (8, 29);
    //max ini menemukan angka yang besar di parameter. Parameter bisa diisi var
    echo "<br>";
    echo "Max. Lovi suka angka". max (8, 80, 60, 10000, 785);
    //min ini menemukan angka yang kecil di parameter. Parameter bisa diisi var
    echo "<br>";
    echo "Min. Lovi suka angka". min ($angka, $angka2, $angka1);

    //metode string = strlen, str_word_count, str_replace, str_repeat
    //strlend ini menghitung banyaknya huruf
    echo "<br>";
    echo "coba strlen". strlen($nama1);
    //str_word_count itu menghitung banyaknya kata
    $trystr = "Ini aku Lovi pecinta makanan manis";
    echo "<br>";
    echo "coba str_word_count". str_word_count ($trystr);
    //str_replace itu mengganti kata sebelumnya. Yg kiri itu kata yang mau digantu, tengah itu kata yang diganti, kanan itu sumbernya
    echo "<br>";
    echo "coba str_replace". str_replace ("Lovi","yang",$trystr);
    //str_repeat itu penggulangan kata. Kiri itu kata yang mau diulang, kanan itu 'mau berapa' kali kata itu diulang
    echo "<br>";
    echo "coba str_repeat". str_repeat ("Ini", 5); 
    //mix str_replace dan str_repeat
    echo "<br>";
    echo "coba mix". str_repeat (str_replace ("Ini", "Hai", $trystr), 5);

    /*Array PHP ini memiliki beberapa nilai di satu variabel
    Echo ini digunain untuk mengambil nilai di array */
    echo "<br>";
    $mie = array ('indomie', 'sedap', 'sarimie', 'indomie');
    //array juga berfungsi tanpa langsung memunculkan 'array' dgn pakai [], kemudian nggak usah pakai print_r
    $minum = ['mineral water', 'air degan', 'tea', "chocolate", "matcha"];
    print_r($mie);
    echo $minum[2];

    //metode array = unique, reverse, shuffle, count,sort
    //unique ini menghilangkan atau mengambil nilai unik
    echo "<br>";
    echo "belajar array_unique";
    print_r(array_unique($mie) );
    //reverse ini mengacak nilai 
    echo "<br>";
    echo "belajar array_reverse";
    print_r(array_reverse($minum));
    //shuffle ini mengacak nilai secara terus menerus
    echo "<br>";
    echo "belajar array_shuffle";
    shuffle($minum);
    print_r($minum);
    //count ini untuk mengetahui jumlah nilai di ()
    echo "<br>";
    echo "belajar array_count";
    echo count($minum);
    //sort ini untuk mengurutkan alphabet di nilai
    echo "<br>";
    echo "belajar array_count";
    sort($mie);
    print_r($mie);

    //assosiative array itu penggunaan urutan nilai dengan kata kunci. Bisa pakai () nor []
    //ciri-ciri assosiative array itu ada "" kemudian => dan nilai di () 
    echo "<br>";
    $data =  array("nama"   => "lovi", 
                    "umur"  => 21,
                    "kerja" => "mahasiswa",
                    );
                print_r($data);
                echo "<br> Nama saya adalah ". $data["nama"];
    //mengubah nilai pada array
    $data ["kerja"] = "sekretaris";
    echo "<br> Dia kerja sebagai". $data["kerja"];
    //cara menggabungkan beberapa array
    $data2 = array("suami" => "belum ada",
                      "laptop" => "macbook",
                  );
                  echo "<br> belajar array_merge ";
          print_r(array_merge($data, $data2) );
    //cara mengganti nilai di assosiative array pakai array_values
    echo "<br> belajar array_values ";
    print_r(array_values ($data) );
    //cara mengganti atau mengembalikan keys pakai array_keys
    echo "<br> belajar array_keys ";
    print_r(array_keys($data) );

    //multidimensi array ini memiliki beberapa array di dalam suatu array
    $data3 = array (
                array ("programmer", "21", "olahraga"),
                array ("designer", "27", "senam"),
                array ("manager", "25", "makan"),
    );
    echo "<br> belajar multi dimernsi array ";
    print_r($data3);
    /*bisa print per-item, pakai kode dimulai dari
    00 = "programmer" , 01 = "21"  , 02 = "olahraga"
    10 = "designer" , 11 = "27" , 12 = "senam"
    20 = "manager" , 21 = "25" , 22 = "makan"
    */
    echo "<br> belajar keluarin nilai pakai kode- ";
    echo  $data3 [1] [1]; 
    echo "<br> belajar mengganti nilai pakai kode- ";
    echo $data3 [2] [2] = "minum";

    //loop itu penggulangan
    //for(variabelawal (mulai), batas(syarat), perubahan
    for ($i=0; $i<5; $i++) {
      echo "<br>--------";
      echo "lovi belajar php_bagian loop";
      echo "-------- ";
    }

    //menggeluarkan hasil array dengan loop dan ada batasan
    //-1 itu batasan; jadinnya output nilai cuma di point 0-2
    $buah = ['semangka', 'mangga', 'jeruk', 'apel'];
    for ($i=0; $i<count($buah) - 1; $i++)
     {
        print "<br> belajar out array by loop";
        echo "------";
        echo $buah [$i];
        echo "........ <br>";
    }

    //mengeluarkan hasil array dengan loop cara ke-2
    $perabotan = ['jam', 'meja', 'print', 'kasur', 'laptop'];
    foreach($perabotan as $p) {
        print "<br> belajar out array by loop (2)";
        echo "-------";
        echo $p;
        echo "------";
    }
    
    //for each untuk assosiative array
    $sabun = ['orange'=> 'detol', 'blue' => 'lifeboy', 'pink' => 'devo'];
    foreach($sabun as $key => $value) {
        echo "<br> belajar foreach to assosiative array ";
        print $value;
    }
  
    //tipe data boolean ialah memiliki 2 kemungkinan nilai, antara true dan false
    $hasil = true;
    $hasil2 = false;

    //if dan else itu menentukan keputusan, misal login 
    //pengujian memakai '=='
    $password = '123';
    $password2 = '1234';
    if ($password == $password2){
        echo ' <br> Selamat! Anda berhasil masuk! ';
    }else {
        echo '<br> Selamat anda gagal masuk Coba Lagi';
    }

    //operator logika == === > >= < =< != (pengujian juga)
    $coba = 4589;
    $coba2 = 4950;
    if ($coba != $coba2) {
        echo '<br> Percobaan if dan else2_Selamat angkanya kecil';
    }else {
        echo '<br> Percobaan if daan else2_Selamat angkanya besar';
    }

    //else if itu menambahkan syarat
    $cici_laptop = 2000;
    $harga_mac   = 4000;
    $uang_adek   = 5000;
    if ($cici_laptop > $harga_mac) {
        echo '<br> beli sekarang';
    }else if ($uang_adek > $harga_mac) {
        echo '<br> beli sekarang';
    }
    else {
        echo '<br> nanti aja belinya';
    }