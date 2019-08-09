javac SearchQuery.java
javac ClientRequest.java
javac SearchServer.java
echo "== Compilation Success =="
sleep 1s
echo "== Creating Stub and Skeleton objects from the implementation class using rmic =="
rmic SearchQuery
echo "== Starting rmiregistry"
rmiregistry &
echo "== RMI registry successfully started"
sleep 1s
echo "== Executing server program == "
java SearchServer
echo "== Server started =="
sleep 1s
echo "== Starting Client =="
java ClientRequest