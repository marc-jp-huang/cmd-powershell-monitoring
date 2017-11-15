$EmailFrom = "admin@yourmail.com"
$EmailTo = "yourmail@yourmail.com"
$Subject = "Tomcat Status Report"
$Body = "Tomcat is running"
$SMTPServer = "yourSMTP"
$SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 25)
$SMTPClient.Send($EmailFrom, $EmailTo, $Subject, $Body)