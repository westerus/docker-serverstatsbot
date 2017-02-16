![logo](https://global.download.synology.com/download/Package/img/Docker/1.11.2-0270/thumb_256.png?style=centerme)

# What is docker-serverstastsbot?

Custom docker containers with ServerStastsBot installed.
This project is based in [GitHub ServerStastsBot](https://github.com/geekbeard/ServerStatsBot)

# Requirements variables
In Telegram:
1.  Search for the “botfather” telegram bot (he’s the one that’ll assist you with creating and managing your bot)

2.  Type /help to see all possible commands the botfather can handle
3.  Click on or type /newbot to create a new bot.

4.  I have chosen "Name Bot" as the screen name and "uniquename_bot" as its username.

    You should see a new API token generated for variable "BOTID". You can see newly generated token type is (270485614:AAHfiqksKZ8WmR2zSjiQ7_v4TMAKdiHm9T0).

    BOTID="API token"
    Example.
    BOTID="270485614:AAHfiqksKZ8WmR2zSjiQ7_v4TMAKdiHm9T0"

    Now you can search for your newly created bot on telegram. @Name Bot

5.  Get user id for variable "ADMINID".
    Access to "userinfobot" in telegram.
    Type /start and get @Userid

    ADMINID="User ID"
    Example.
    ADMINID="12345678"

# Usage Docker
    docker run -d -e BOTID="270485614:AAHfiqksKZ8WmR2zSjiQ7_v4TMAKdiHm9T0" -e ADMINID="12345679" westerus/serverstatsbot

# Usage Server Manager Bot

A Telegram Bot:

*   Commands
    *   `/stats` - gives summed statistics about memory \ disk \ processes (will improve)
    *   `/shell` - goes into the mode of executing shell commands & sends you the output
    *   `/memgraph` - plots a graph of memory usage for a past period and sends you a picture of the graph
    *   `/setmem` - set memory threshold (%) to monitor and notify if memory usage goes above it
    *   `/setpoll` - set polling interval in seconds (higher than 10)
*   Monitors memory usage and if it reaches above the set threshold = sends you warning message


Example summary: [Gif](http://i.imgur.com/AhCvy9W.gifv)

![Bot](http://i.imgur.com/hXT0drx.png)


Example shell command output as a message from the bot:

![Shell](https://i.imgur.com/PtvcaSD.png)


Example graph sent by bot: [Gif](http://i.imgur.com/anX7rJR.gifv)

![Graph](http://i.imgur.com/K8mG3aM.jpg?1)
