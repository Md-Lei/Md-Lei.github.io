<?php
$chessPlayers = [
  ["images/magnus.jpg", "Magnus Carlsen", "🇳🇴 Norway", "2837"],
  ["images/hikaru.jpg", "Hikaru Nakamura", "🇺🇸 USA", "2804"],
  ["images/gukesh.jpg", "Dommaraju Gukesh", "🇮🇳 India", "2787"],
  ["images/arjun.jpeg", "Erigaisi Arjun", "🇮🇳 India", "2782"],
  ["images/fabiano.jpg", "Fabiano Caruana", "🇺🇸 USA", "2776"],
  ["images/nodirbek.jpg", "Nodirbek Abdusattorov", "🇺🇿 Uzbekistan", "2773"]
];
?>

<div style="text-align: center; margin-top: 30px; color: white;">
  <h2><strong>World Chess Players</strong></h2>

  <?php foreach ($chessPlayers as $player) { ?>
    <div style="display: inline-block; margin: 10px; border-radius: 10px; width: 250px;  color: white;">
      <div style="font-size: 24px; font-weight: bold;"><?php echo $player[1]; ?></div>
      <img src="<?php echo $player[0]; ?>" width="200" height="200" style="border-radius: 50%; margin: 15px 0;">
      <p><?php echo $player[2]; ?></p>
      <div style="font-size: 18px; font-weight: bold;">Rating: <?php echo $player[3]; ?></div>
    </div>
  <?php } ?>
</div>