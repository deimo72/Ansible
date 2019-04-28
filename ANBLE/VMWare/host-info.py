#!/usr/bin/python
import vm_include
 
def main():
    #change these to match your installation
    host="192.168.0.254"
    user="root"
    pw="1234567"
 
    #connect to the host
    hostcon=vm_include.connectToHost(host,user,pw)
 
    #list server type
    print "Type:",hostcon.get_server_type()
 
    #disconnect from the host
    hostcon.disconnect()
 
if __name__ == '__main__':
        main()