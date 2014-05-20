<?php
    require_once('mandrill.php');
    
function clean_string($string) {
          $bad = array("content-type","bcc:","to:","cc:","href");
          return str_replace($bad,"",$string);
        }
function get_contact($email_to,$mandrill,$email_subject){

    $ime = $_POST['name']; // required
    $email_from = $_POST['email']; // required
    $company = $_POST['company']; // required
    $country = $_POST['country']; // required
    $phone = $_POST['phone']; // not required
    $subject = $_POST['subject']; // required
    $text = $_POST['message']; // required
     
    $email_message = "Nuovo contatto dal sito Millbo <br />";

    $email_message .= "Name: ".clean_string($ime)."\n<br />";
    $email_message .= "Email: ".clean_string($email_from)."\n<br />";
    $email_message .= "Company: ".clean_string($company)."\n<br />";
    $email_message .= "Country: ".clean_string($country)."\n<br />";
    $email_message .= "Phone: ".clean_string($phone)."\n<br />";
    $email_message .= "Subject: ".clean_string($subject)."\n<br />";
    $email_message .= "Message: ".clean_string($text)."\n<br />";
         
         
    // create email headers

    $params = array(
            'html' => $email_message,
            'subject' => $email_subject." ".$subject,
            'from_email' => $email_from,
            'from_name' => $ime,
            'to' => array(
                array(
                    'email' => $email_to['email'], 
                    'name' => $email_to['name']
                )
            ),
            'headers' => array(
                array(
                    'X-MC-SigningDomain'=> 'millbo.com'
                    )
                )
            
    );
    $result = $mandrill->messages->send($params);
}

if(isset($_POST['email'])) {
         
        


        $mandrill = new Mandrill('m53jOMAsJCXrCQGVu7NHug');
        // EDIT THE 2 LINES BELOW AS REQUIRED
        $email_subject = "Email dal sito Millbo:";
        
        $emails = array(array("name"=>"Piermaria Cosina","email"=>"piermaria@belafonte.co"),array("name"=>"Giulia Barra","email"=>"giulia@belafonte.co"));
         foreach ($emails as $email_to) {
            get_contact($email_to,$mandrill,$email_subject);
        }
        
    }
?>


  <?php
    include 'index.html';
  ?>
