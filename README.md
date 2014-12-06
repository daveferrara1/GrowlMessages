GrowlMessages
=============

AppleScript to add Messages App back into Growl. This may not be working for you depending on your OS.

If your like me, you like growl better than the notifications provided by OSX. On a big monitor it is sometimes difficult to see a notification in the top right corner. I like to use musicplayer growl alert. Its almost impossible to miss.  


<h2>NOTE:<h2>
There is also an unanswered stackoverflow question out there here:

http://stackoverflow.com/questions/26789704/applescript-timed-out-messages-app



<h1>INSTALL:</h1>

Put your script in:  Users ▸ BIGdave ▸ Library ▸ Application Scripts ▸ com.apple.iChat


Go to Messages preferences and set to you script file name here:

![](https://github.com/daveferrara1/GrowlMessages/blob/master/shot.png)


**if after adding this script and restarting growl, you don't see the messages app listed, try un commenting the following:

<pre>
-- Register a notification type called "New Mail" with Growl, and enable it.
--tell application "Growl"
   -- set the allNotificationsList to {"Test Notification"}
    --set the enabledNotificationsList to {"Test Notification"}
    --register as application ¬
       -- "Messages" all notifications allNotificationsList ¬
       -- default notifications enabledNotificationsList ¬
        --icon of application "Messages"
--end tell
</pre>

This is located at the top in the provided GrowlMessages.applescript file, that may get it to register with growl for you. Then you can comment it out I think.


Cheers!