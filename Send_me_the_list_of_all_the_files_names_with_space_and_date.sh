#!/bin/bash

sender="ckaruthapandi@gmail.com"
receiver="deepakshipurushotham@gmail.com"
gapp="ugxdsrjlovexupqd"
sub="Welcome "
body="Welcome"      
if [ -z "$1" ]; 
#then 
    
#	curl -s --url 'smtps://smtp.gmail.com:465' --ssl-reqd \
 #   --mail-from $sender \
  #  --mail-rcpt $receiver\
   # --user $sender:$gapp \
    # -T <(echo -e "From: ${sender}
#To: ${receiver}
#Subject:${sub}

 #${body}")

then
    echo `ls -lh | awk '{print $5 $6 $7 $8 $9}' >> output.txt`
    file="output.txt"
    # MIME type for multiple type of input file extensions
    
    MIMEType=`file --mime-type "$file" | sed 's/.*: //'`
    curl -s --url 'smtps://smtp.gmail.com:465' --ssl-reqd \
    --mail-from $sender \
    --mail-rcpt $receiver\
    --user $sender:$gapp \
     -H "Subject: $sub" -H "From: $sender" -H "To: $receiver" -F \
    '=(;type=multipart/mixed' -F "=$body;type=text/plain" -F \
      "file=@$file;type=$MIMEType;encoder=base64" -F '=)'
    
fi 
echo `date`
