property growlAppName : "Growl Messages"

property notificationNames : {"Message Received"}
property defaultNotificationNames : {"Message Received"}

using terms from application "Messages"
    
    on message received theText from theBuddy for theTextChat
        my registerWithGrowl()
        
        tell application "Messages"
            set theIcon to image of theBuddy
            set theTitle to full name of theBuddy
        end tell
        my notify(theTitle, theText, theIcon, "Message Received")
    end message received
end using terms from

on registerWithGrowl()
    tell application "Growl"
        register as application growlAppName all notifications notificationNames default notifications notificationNames icon of application "Messages"
    end tell
end registerWithGrowl

on notify(theTitle, desc, icondata, notificationName)
    if application "Messages" is not frontmost then
        tell application "Growl"
            if icondata is "" or icondata is missing value then
                notify with name notificationName title theTitle description desc application name growlAppName icon of application "Messages"
            else
                notify with name notificationName title theTitle description desc application name growlAppName image icondata
            end if
        end tell
    end if
end notify