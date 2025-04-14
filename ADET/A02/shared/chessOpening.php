<?php
$openings = [
    // [image, title, start, description, keyIdeas, strengths, usedBy]
    [
        "images/lopez.png",
        "1. Ruy Lopez (Spanish Opening)",
        "1.e4 e5 2.Nf3 Nc6 3.Bb5",
        "One of the most respected openings for White aiming for long-term positional pressure and central dominance.",
        "Control center, pressure on e5, fast kingside castling.",
        "Flexible and strategic with many variations.",
        "Bobby Fischer, Magnus Carlsen"
    ],

    [
        "images/queensGambit.png",
        "2. Queen's Gambit",
        "1.d4 d5 2.c4",
        "A strong positional opening where White offers a pawn to gain better central control and open lines for development.",
        "Create tension in the center, control the d5-square, maintain structural balance.",
        "Famous Trap: Elephant Trap (if mishandled by White)",
        "Beth Harmon (fictional), Vladimir Kramnik"
    ],

    [
        "images/londonSystem.png",
        "3. London System",
        "1.d4 and 2.Bf4 or 2.Nf3 followed by Bf4",
        "A solid and easy-to-learn system for White, popular at all levels of play.",
        "Early development of bishop outside the pawn chain, safe king, flexible setup.",
        "Hard to refute, good for beginners and masters alike.",
        "Magnus Carlsen, Levon Aronian"
    ],

    [
        "images/bishopOpening.png",
        "4. Bishop's Opening",
        "1.e4 e5 2.Bc4",
        "A classical opening focusing on rapid development and center control with the bishop.",
        "Develop the bishop early, control the center, prepare for a kingside attack.",
        "Fast development, flexible and often leads to open positions.",
        "Bobby Fischer, Garry Kasparov"
    ],

    [
        "images/italian.png",
        "5. Italian Game",
        "1.e4 e5 2.Nf3 Nc6 3.Bc4",
        "A classical and aggressive opening aiming for early control of the center and quick development.",
        "Target f7-square, fast development, castle early.",
        "Enables rapid kingside pressure and tactical opportunities in the opening phase.",
        "Paul Morphy, Hikaru Nakamura"
    ]
];
?>

<div class="text-center my-5">
    <h1 class="d-4" style="font-weight: bold;  color: white;">Popular Chess Opening</h1>
    <p class="color: white;">Explore the most effective and strategic openings to dominate the chessboard</p>
</div>

<?php foreach ($openings as $opening) { ?>
    <div class="card my-3">
        <div class="row g-0">
            <div class="col-md-4">
                <img src="<?php echo $opening[0]; ?>" class="img-fluid rounded-start" alt="<?php echo $opening[1]; ?>">
            </div>
            <div class="col-md-8">
                <div class="card-body shadow-sm" style="background-color: #f5f2e9;">
                    <h5 class="card-title"><?php echo $opening[1]; ?></h5>
                    <p class="card-text">Starts with <strong><?php echo $opening[2]; ?></strong>. <?php echo $opening[3]; ?></p>
                    <p><strong>Key Ideas:</strong> <?php echo $opening[4]; ?></p>
                    <p><strong>Strengths:</strong> <?php echo $opening[5]; ?></p>
                    <p><strong>Used By:</strong> <?php echo $opening[6]; ?></p>
                </div>
            </div>
        </div>
    </div>
<?php } ?>