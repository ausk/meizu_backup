#/usr/bin/python
#-*- encoding:utf8-*-
import os,sys
OUT_FILE_NAME = os.path.join(os.getcwd(),"meizu_note.txt")
with open(OUT_FILE_NAME,"w+") as outfile:
    for i in range(287,0,-1):
        TAG = "{}[{}]{}\n".format("\n"*5,288-i,"="*50)
        outfile.write(TAG)
        IN_FILE_NAME = os.path.join("~/Desktop/meizu/","meizu{}.txt".format(i))
        with open(IN_FILE_NAME,"r") as infile:
            for line in infile:
                print line                
                outfile.write(line)

print("="*50+"\n")
#os.popen("cat " + OUT_FILE_NAME)
print("Done!\n")
