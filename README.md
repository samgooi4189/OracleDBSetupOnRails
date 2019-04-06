Setup Oracle DB for Rails

* Download basic and sdk client package from Oracle (https://www.oracle.com/technetwork/topics/linuxx86-64soft-092277.html)
* sudo mkdir /opt/oracle
* cd /opt/oracle
* sudo unzip ~/Downloads/instantclient-sdk-linux.x64-12.2.0.1.0.zip
* sudo unzip ~/Downloads/instantclient-basic-linux.x64-12.1.0.2.0.zip
* sudo mv instantclient_12_1/* instantclient_12_2/
* cd instantclient_12_2
* sudo ln -s libclntsh.so.12.1 libclntsh.so
* put this in ~/.profile 
** export LD_LIBRARY_PATH="/opt/oracle/instantclient_12_2"
* sudo apt-get install libaio1
* bundle install

Start docker container
* /bin/bash start_oracle.sh

Run the following script to set the correct database user
* /bin/bash create_db_users.sh

For more information:
* https://ronekins.wordpress.com/2017/04/20/oracle-12c-on-docker/
* https://www.rubydoc.info/github/kubo/ruby-oci8/file/docs/install-instant-client.md
* https://medium.com/@coorasse/rails-oracle-11g-on-macosx-el-capitan-2b4086449c54
