<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formula</title>
    <link rel="stylesheet" href="./form.css">
    <script src="./script.js"></script>
</head>
<?php
    
    $conn = mysqli_connect("localhost","root","","test",3306);
    if (!$conn) {
        echo "connection failed";
    }else{
        $q = isset($_GET['agence']) ? $_GET['agence'] : '';
        $sql = "SELECT * FROM personnel_information WHERE nom_prenom=?";
        $stmt = mysqli_prepare($conn, $sql);
        mysqli_stmt_bind_param($stmt, "s", $q);
        mysqli_stmt_execute($stmt);
        $result = mysqli_stmt_get_result($stmt);
        $value = mysqli_fetch_array($result);
        $p = $value['id'];  
        $sql2 = "SELECT * FROM agence_information WHERE id=?";
        $stmt2 = mysqli_prepare($conn, $sql2);
        mysqli_stmt_bind_param($stmt2, "s", $p);
        mysqli_stmt_execute($stmt2);
        $result2 = mysqli_stmt_get_result($stmt2);
        $value2 = mysqli_fetch_array($result2);
    }
    ?>
<body>
    
    <div class="container"> 
        <center>
            <div>
            <img src="<?php echo 'data:image/jpeg;base64,' . base64_encode($value2['img']); ?>" alt="profile-picture">
            </div>
        </center>
        <div class="data">
            <div class="title">
                <h1><strong class="text">Personnel information</strong></h1>
            </div>
            <div class="content">
                <p class="field">Nom et prénom</p>
                <p class="output o1"><?php echo $value['nom_prenom'];?></p>
                <p class="field">N° Visa:</p>
                <p class="output o2"><?php echo $value['visa'];?></p>
                <p class="field">N° passport:</p>
                <p class="output o3"><?php echo $value['passport'];?></p>
                <p class="field ">N° assurance:</p>
                <p class="output o4"><?php echo $value['assurance'];?></p>
                <p class="field">N° Mobile</p>
                <p class="output o5"><?php echo $value['mobile'];?></p>
            </div>
            <div class="title">
                <h1><strong class="text">Agence information</strong></h1>
            </div>
            <div class="content">
                <p class="field">Agence</p>
                <p class="output"><?php echo $value2['agence'];?></p>
                <p class="field">Nom de Guide</p>
                <p class="output"><?php echo $value2['nom_guide'];?></p>
                <p class="field">N° Mobile</p>
                <p class="output"><?php echo $value2['mobile_a'];?></p>
            </div>
            <div class="title">
                <h1><strong class="text">Health information</strong></h1>
            </div>
            <div class="content2">
                <p class="text-field"><?php echo $value['healthcare'];?></p>
            </div>
            <div class="title">
                <h1><strong class="text">Used medications</strong></h1>
            </div>
            <div class="content2">
                <p class="text-field"><?php echo $value['used_medication'];?></p>
            </div>      
        </div>
        
    </div>
    <center>
        <div>
            <form action="./index1.php">
                <select name="agence" onchange="this.form.submit();">
                    <option value="">select a person</option>
                    <option value="john wick">john wick</option>
                    <option value="johnny depp">johnny depp</option>
                    <option value="jason stathem">jason stathem</option>
               </select>
            </form>
        </div>
    </center>
</html>