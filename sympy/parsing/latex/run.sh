CLASSPATH=".:/usr/local/lib/antlr-4.11.1-complete.jar:$CLASSPATH"

java -Xmx500M -cp "/usr/local/lib/antlr-4.11.1-complete.jar:$CLASSPATH" org.antlr.v4.Tool CommonTokensLexer.g4
javac *.java


java -Xmx500M -cp "/usr/local/lib/antlr-4.11.1-complete.jar:$CLASSPATH" org.antlr.v4.gui.TestRig CommonTokens tokens -tokens "$1" 
