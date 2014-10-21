-- Register a notification type called "New Mail" with Growl, and enable it.
--tell application "Growl"
   -- set the allNotificationsList to {"Test Notification"}
    --set the enabledNotificationsList to {"Test Notification"}
    --register as application ¬
       -- "Messages" all notifications allNotificationsList ¬
       -- default notifications enabledNotificationsList ¬
        --icon of application "Messages"
--end tell

using terms from application "Messages"
    on message sent theMessage for theChat

    end message sent

    on message received theMessage from theBuddy for theChat
        set theHandle to name of theBuddy
      --set theHandle to handle of theBuddy
        tell application "Growl"
            notify with name ¬
                "Test Notification" title ¬
                theHandle description ¬
                theMessage application name "Messages"
        end tell
    end message received

    on chat room message received theMessage from theBuddy for theChat

    end chat room message received

    on active chat message received theMessage

    end active chat message received

    on addressed chat room message received theMessage from theBuddy for theChat

    end addressed chat room message received

    on addressed message received theMessage from theBuddy for theChat

    end addressed message received

    # The following are unused but need to be defined to avoid an error

    on received text invitation theText from theBuddy for theChat

    end received text invitation

    on received audio invitation theText from theBuddy for theChat

    end received audio invitation

    on received video invitation theText from theBuddy for theChat

    end received video invitation

    on received remote screen sharing invitation from theBuddy for theChat

    end received remote screen sharing invitation

    on received local screen sharing invitation from theBuddy for theChat

    end received local screen sharing invitation

    on received file transfer invitation theFileTransfer

    end received file transfer invitation

    on buddy authorization requested theRequest

    end buddy authorization requested

    on av chat started

    end av chat started

    on av chat ended

    end av chat ended

    on login finished for theService

    end login finished

    on logout finished for theService

    end logout finished

    on buddy became available theBuddy

    end buddy became available

    on buddy became unavailable theBuddy

    end buddy became unavailable

    on completed file transfer

    end completed file transfer

end using terms from