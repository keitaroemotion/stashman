
==============================
   stashman documentation  
==============================

Quid hic applicationam:

this application is for the stashing NON-CONFIDENTIAL
data which sometimes needs to be reffered from outside.

[Settings]
1. make your dropbox account
2. sign in your dropbox account and keep the status
3. goto: https://www.dropbox.com/developers/apps
4. "Create App"
5. Find your "App Key" and "App Secret"
6. vim /etc/appinfo 
     key1:your app key  
     key2:your app secret
7. ruby ./lib/authentication.rb
8. follow the instructions and you will see the console output as follows:
    key1: ....
    key2: ....
   just copy these output and paste into the ./etc/conf


[file listing]

$ ./stashman list


[file upload]

$ ./stashman upload your-file-to-upload
  
or, if you want to upload the hole contents in a directory


$ ./stashman upload your-directory

then you can upload the in directory omnium.







