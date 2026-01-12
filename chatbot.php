<?php
header('Content-Type: application/json');
include "koneksi.php";
include "env.php";

$input = trim($_POST['pesan'] ?? "");

if (strlen($input) < 5) {
    echo json_encode([
        "status" => "error",
        "reply" => "Yuk tulis pertanyaan yang lebih jelas ya 😊"
    ]);
    exit;
}

/* ===== GEMINI API ===== */
$apiKey = GEMINI_API_KEY;

$prompt = "
Kamu adalah asisten ide kegiatan harian.
Jawab dengan:
- Bahasa Indonesia
- 2–4 kalimat
- Ramah dan motivatif

Pertanyaan:
$input
";

$data = [
    "contents" => [
        [
            "parts" => [
                ["text" => $prompt]
            ]
        ]
    ]
];

$ch = curl_init(
    "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.5-flash:generateContent?key=".$apiKey
);

curl_setopt($ch, CURLOPT_HTTPHEADER, ["Content-Type: application/json"]);
curl_setopt($ch, CURLOPT_POST, true);
curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($data));
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);

$response = curl_exec($ch);
file_put_contents("log_ai.txt", $response);


if (curl_errno($ch)) {
    $reply = "Hari ini cocok untuk merapikan agenda dan fokus pada satu hal penting 🌱";
} else {
    $result = json_decode($response, true);
    $reply = $result['candidates'][0]['content']['parts'][0]['text']
        ?? "Tetap semangat menjalani hari ini 💪";
}

curl_close($ch);

/* ===== SIMPAN HISTORY ===== */

$stmt = $conn->prepare("
    INSERT INTO history_chat (pesan_user, respon_ai, tanggal)
    VALUES (?, ?, NOW())
");
$stmt->bind_param("ss", $input, $reply);
$stmt->execute();
$stmt->close();

echo json_encode([
    "status" => "success",
    "reply" => $reply
]);
