<?php
include "koneksi.php";

$data = mysqli_query($conn, "SELECT * FROM history_chat ORDER BY tanggal DESC");
?>

<h4 class="lead display-6 pb-2 border-bottom border-danger-subtle">
    Riwayat Chat AI
</h4>

<table class="table table-bordered mt-3">
    <tr>
        <th>No</th>
        <th>Pertanyaan User</th>
        <th>Respon AI</th>
        <th>Tanggal</th>
    </tr>
    <?php $no=1; while($r=mysqli_fetch_assoc($data)): ?>
    <tr>
        <td><?= $no++ ?></td>
        <td><?= $r['pesan_user'] ?></td>
        <td><?= $r['respon_ai'] ?></td>
        <td><?= $r['tanggal'] ?></td>
    </tr>
    <?php endwhile; ?>
</table>
