#!/bin/bash

# User input
sender="ckaruthapandi@gmail.com"
receiver="deepakshipurushotham@gmail.com"
gapp="ugxdsrjlovexupqd"
sub="Welcome "

#echo "Enter the body of mail : "
cat > tempfile.txt                # using cat command for multiline input
body="Welcome"        # storing the content of file in a variable

#rm tempfile.txt


# check for provided attachment file as a positional parameter
# -z indicating an empty positional parameter
# attachment doesn't exist condition
 
if [ -z "$1" ]; then 


# curl command for accessing the smtp server

    curl -s --url 'smtps://smtp.gmail.com:465' --ssl-reqd \
    --mail-from $sender \
    --mail-rcpt $receiver\
    --user $sender:$gapp \
     -T <(echo -e "From: ${sender}
To: ${receiver}
Subject:${sub}

 ${body}")


# attachment exists condition
else
    file="$1"           # set file as the 1st positional parameter
    
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
echo
