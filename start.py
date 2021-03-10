import os

os.system("yes | cp server.jar server/")
os.chdir("server")
os.system("touch eula.txt && echo eula=true > eula.txt")
os.system("java -Xmx1024M -Xms1024M -jar server.jar nogui")