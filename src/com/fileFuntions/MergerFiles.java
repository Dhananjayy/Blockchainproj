package com.fileFuntions;
import java.io.BufferedReader;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;

import com.login.dao.SplitFilesImpl;
 
public class MergerFiles {
 
	public static String mergedFile(long file_id,String path,String FileName) {
		
 
		String mergedFilePath = path+File.separator+"mergedFiles"+File.separator+FileName;
	    File folder=new File(path+File.separator+"mergedFiles");
	
		if(!folder.exists())
			folder.mkdir();
			
		
		SplitFilesImpl saveSplitFiles=new SplitFilesImpl();
		List<String> fileList=saveSplitFiles.getAllsplitFiles(file_id);
		
		File[] files = new File[fileList.size()];
		for(int i=0;i<fileList.size();i++)
			files[i]=new File(fileList.get(i));
		
		
      try{
		File mergedFile = new File(mergedFilePath);
		mergeFiles(files, mergedFile);
		/*long size=mergedFile.length();
    	  
		FileInputStream inputStream = new FileInputStream(mergedFile);
		byte[] byteChunkPart = new byte[(int)size];
		  
         int  read = inputStream.read(byteChunkPart, 0, (int)size);
        
		 String rowData = new String(byteChunkPart);
		// System.out.println("rowData"+rowData);
         String decryptedData= EncryptionDecryptionAES.decrypt(rowData);
         byteChunkPart= decryptedData.getBytes();
         FileOutputStream  filePart = new FileOutputStream(new File(mergedFilePath));
         
         filePart.write(byteChunkPart);
   		filePart.flush();
		  
           filePart.close();*/
 }catch(Exception e)
 {
	 e.printStackTrace();
 }
		return mergedFilePath;
	}
 
	public static void mergeFiles(File[] files, File mergedFile) throws Exception {
 
		FileWriter fstream = null;
		BufferedWriter out = null;
		try {
			fstream = new FileWriter(mergedFile, true);
			 out = new BufferedWriter(fstream);
		} catch (IOException e1) {
			e1.printStackTrace();
		}
 
		for (File f : files) {
			System.out.println("merging: " + f.getName());
			FileInputStream fis;
			try {
				fis = new FileInputStream(f);
				BufferedReader in = new BufferedReader(new InputStreamReader(fis));
 
				String aLine;
				while ((aLine = in.readLine()) != null) {
					
					String decryptedData= EncryptionDecryptionAES.decrypt(aLine);
					out.write(decryptedData);
					//out.newLine();
				}
 
				in.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
 
		try {
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
 
	}
}