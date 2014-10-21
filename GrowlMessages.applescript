-- Register a notification type called "New Mail" with Growl, and enable it.
tell application "Growl"
    set the allNotificationsList to {"Test Notification"}
    set the enabledNotificationsList to {"Test Notification"}
    register as application ¬
        "Messages" all notifications allNotificationsList ¬
        default notifications enabledNotificationsList ¬
        icon of application "Messages"
end tell

using terms from application "Messages"
    on message received this_message for this_chat
        -- Tell Growl to show our "New Mail" notification, working on a title with a custom title and description.

        tell application "Growl"
            notify with name ¬
                "Test Notification" title ¬
                "Test Notification" description ¬
                "This is a test AppleScript notification." application name "Messages"
        end tell

    end message received
end using terms from