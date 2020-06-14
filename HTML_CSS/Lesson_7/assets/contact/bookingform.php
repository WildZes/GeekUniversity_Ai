<?php
$errorMSG = "";
// Your-name
if (empty($_POST["yourname"])) {
    $errorMSG = "Your name is required ";
} else {
    $yourname = $_POST["yourname"];
}
// Number-of-rooms
if (empty($_POST["numberofrooms"])) {
    $errorMSG = "Number of rooms is required ";
} else {
    $numberofrooms = $_POST["numberofrooms"];
}
// EMAIL
if (empty($_POST["email"])) {
    $errorMSG .= "Email is required ";
} else {
    $email = $_POST["email"];
}
// Number-of-people

if (empty($_POST["numberofpeople"])) {    $errorMSG = "Number of people is required ";} else {    $numberofpeople = $_POST["numberofpeople"];}

// Phone

if (empty($_POST["phonenumber"])) {    $errorMSG = "Phone is required ";} else {    $phonenumber = $_POST["phonenumber"];}

// Check-in

if (empty($_POST["checkin"])) {    $errorMSG = "Checkin is required ";} else {    $checkin = $_POST["checkin"];}

// Check-out

if (empty($_POST["checkout"])) {    $errorMSG = "Checkout is required ";} else {    $checkout = $_POST["checkout"];}
$EmailTo = "payothemes@gmail.com";
$Subject = "New message from your landing page's contact form";

// prepare email body text

$Body = "";
$Body .= "Name: ";
$Body .= $yourname;
$Body .= "\n";
$Body .= "Number of rooms: ";
$Body .= $numberofrooms;
$Body .= "\n";
$Body .= "Email: ";
$Body .= $email;
$Body .= "\n";
$Body .= "Number of people: ";
$Body .= $numberofpeople;
$Body .= "\n";
$Body .= "Phone number: ";
$Body .= $phonenumber;
$Body .= "\n";
$Body .= "Check In: ";
$Body .= $checkin;
$Body .= "\n";
$Body .= "Check Out: ";
$Body .= $checkout;
$Body .= "\n";

// send email
$success = mail($EmailTo, $Subject, $Body, "From:".$email);

// redirect to success page

if ($success && $errorMSG == ""){
   echo "success";
}else{
    if($errorMSG == ""){
        echo "Something went wrong :(";
    } else {
        echo $errorMSG;
    }
}
?>