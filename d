
#!/bin/bash

# Define the Minecraft server version
MC_VERSION="1.8.8"

# Define the server jar file name
SERVER_JAR="minecraft_server.$MC_VERSION.jar"

# Check if the server jar file exists, if not, download it
if [ ! -f $SERVER_JAR ]; then
    echo "Downloading Minecraft server version $MC_VERSION..."
    wget -O $SERVER_JAR "https://launcher.mojang.com/v1/objects/4b7f6b2f4d2c6d1f8fcb6d5c9d6c7f5d3c6d6b5d/minecraft_server.$MC_VERSION.jar"
fi

# Accept the EULA
if [ ! -f eula.txt ]; then
    echo "eula=true" > eula.txt
fi

# Start the Minecraft server
echo "Starting Minecraft server..."
java -Xmx1024M -Xms1024M -jar $SERVER_JAR 
chmod +x start.sh
./start.sh
