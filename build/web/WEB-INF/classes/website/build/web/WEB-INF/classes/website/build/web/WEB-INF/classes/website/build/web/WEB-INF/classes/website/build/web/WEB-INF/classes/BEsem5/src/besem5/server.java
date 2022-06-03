package besem5;

import java.net.*;
import java.io.*;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.net.Socket;
import java.io.IOException;
import java.net.UnknownHostException;
class server{
public static void main(String agrs[])throws UnknownHostException, IOException
{
	clientse c=new clientse();
	c.dataflow();

	}
}
class clientse
{
	ServerSocket ss;
	Socket s;
	DataInputStream din;
	DataOutputStream dout;
	clientse() throws UnknownHostException, IOException{
		ss=new ServerSocket(2222);
	}
	void dataflow() throws IOException
	{
		while(true)
		{
			s=ss.accept();
		din=new DataInputStream(s.getInputStream());
		dout=new DataOutputStream(s.getOutputStream());
		String str=din.readUTF();
		System.out.print(str);
	}
		}
}
