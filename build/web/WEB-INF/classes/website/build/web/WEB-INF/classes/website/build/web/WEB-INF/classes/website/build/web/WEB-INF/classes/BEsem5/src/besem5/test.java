package besem5;

import java.net.*;
import java.io.*;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.net.Socket;
import java.io.IOException;
import java.net.UnknownHostException;
class test{
public static void main(String[] agrs)throws UnknownHostException, IOException
{
	client c=new client();
	c.dataflow();

	}
}
class client
{
	Socket s;
	DataInputStream din;
	DataOutputStream dout;
	client() throws UnknownHostException, IOException{
		s=new Socket("172.16.1.40",2222);
	}
	void dataflow() throws IOException
	{
		din=new DataInputStream(s.getInputStream());
		dout=new DataOutputStream(s.getOutputStream());
		String str="hello";
		dout.writeUTF(str);
		}
}
