package sem5;
    import java.io.*;

public class create_03 
{
	public static void main(String args[])
	{
		File f = null;
		boolean bul = false;
		
		System.out.println("\t* Create A File And Write Some Content *");
		System.out.println("\t======================================");
		
		try
		{
			f = new File("Practical - 30.txt");
			bul = f.createNewFile();
			System.out.println("\t =>File is created: " +bul);
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		try
		{
			FileOutputStream fout = new FileOutputStream("Practical - 30.txt");
			String s = "\n\tPractical - 30.txt \n\t =>This is System Output Stream Damo";
			byte b[] = s.getBytes();
			fout.write(b);
			System.out.println("\t =>String  S added to file: "+s);
			fout.close();
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		

		
		System.out.println("\n\n\t * Read Created  File And Write Some Content. *");
		System.out.println("\t ============================================");
		try
		{
			System.out.println("\t => Read Practical - 30.txt ");
			FileInputStream fin = new FileInputStream("Practical - 30.txt");
			int i;
			while((i=fin.read())!=-1)
			{
				System.out.print((char)i);
			}
			fin.close();
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}


