<?php
    if(isset($_POST['email'])) {
         
        require_once('mandrill.php');


        $mandrill = new Mandrill('m53jOMAsJCXrCQGVu7NHug');
        // EDIT THE 2 LINES BELOW AS REQUIRED
        $email_to = "piermaria@belafonte.co";
        $email_subject = "Test Belafonte";
         
        
        $ime = $_POST['name']; // required
        $email_from = $_POST['email']; // required
        $company = $_POST['company']; // required
        $country = $_POST['country']; // required
        $phone = $_POST['phone']; // not required
        $subject = $_POST['subject']; // required
        $text = $_POST['message']; // required
         
        $email_message = "Mail details from themestreet.com \n\n";
         
        function clean_string($string) {
          $bad = array("content-type","bcc:","to:","cc:","href");
          return str_replace($bad,"",$string);
        }
         
        $email_message .= "Name: ".clean_string($ime)."\n";
        $email_message .= "Email: ".clean_string($email_from)."\n";
        $email_message .= "Company: ".clean_string($company)."\n";
        $email_message .= "Country: ".clean_string($country)."\n";
        $email_message .= "Phone: ".clean_string($phone)."\n";
        $email_message .= "Subject: ".clean_string($subject)."\n";
        $email_message .= "Message: ".clean_string($text)."\n";
         
         
    // create email headers

    $params = array(
            'html' => $email_message,
            'subject' => $email_subject,
            'from_email' => $email_from,
            'from_name' => $ime,
            'to' => array(
                array(
                    'email' => $email_to, 
                    'name' => $email["name"]
                )
            ),
            'headers' => array(
                array(
                    'X-MC-SigningDomain'=> 'belafonte.co'
                    )
                )
            
    );
    $result = $mandrill->messages->send($params);
}
?>
 

  <?php
    include 'index.html';
  ?>