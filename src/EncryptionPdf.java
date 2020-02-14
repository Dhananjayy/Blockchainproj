	import java.io.FileOutputStream;
	import java.io.IOException;
	 
	import com.itextpdf.text.Document;
	import com.itextpdf.text.DocumentException;
	import com.itextpdf.text.Paragraph;
	import com.itextpdf.text.pdf.PdfWriter;
	import com.itextpdf.text.pdf.PdfReader;
	import com.itextpdf.text.pdf.PdfStamper;
public class EncryptionPdf {
	

	 
	 

	    /** User password. */
	    public static byte[] USER = "Hello".getBytes();
	    /** Owner password. */
	    public static byte[] OWNER = "World".getBytes();
	 
	    /** The resulting PDF file. */
	    public static final String RESULT1
	        = "C://Users/Admin/Downloads/encrypt.pdf";
	    /** The resulting PDF file. */
	    public static final String RESULT2
	        = "C://Users/Admin/Downloads/addd.pdf";
	    /** The resulting PDF file. */
	  /*  public static final String RESULT3
	        = "C://Users/Admin/Downloads/encryption_encrypted.pdf";
	 */
	    /**
	     * Creates a PDF document.
	     * @param filename the path to the new PDF document
	     * @throws DocumentException 
	     * @throws IOException 
	     */
	    public void createPdf(String filename) throws IOException, DocumentException {
	        // step 1
	        Document document = new Document();
	        // step 2
	        PdfWriter writer = PdfWriter.getInstance(document, new FileOutputStream(filename));
	        writer.setEncryption(USER, OWNER, PdfWriter.ALLOW_PRINTING, PdfWriter.STANDARD_ENCRYPTION_128);
	        writer.createXmpMetadata();
	        // step 3
	        document.open();
	        // step 4
	        document.add(new Paragraph("Hello World"));
	        // step 5
	        document.close();
	    }
	 
	    /**
	     * Manipulates a PDF file src with the file dest as result
	     * @param src the original PDF
	     * @param dest the resulting PDF
	     * @throws IOException
	     * @throws DocumentException
	     */
	    public void decryptPdf(String src, String dest) throws IOException, DocumentException {
	        PdfReader reader = new PdfReader(src, OWNER);
	        PdfStamper stamper = new PdfStamper(reader, new FileOutputStream(dest));
	        stamper.close();
	        reader.close();
	    }
	 
	    /**
	     * Manipulates a PDF file src with the file dest as result
	     * @param src the original PDF
	     * @param dest the resulting PDF
	     * @throws IOException
	     * @throws DocumentException
	     */
	    public void encryptPdf(String src, String dest) throws IOException, DocumentException {
	        PdfReader reader = new PdfReader(src);
	        PdfStamper stamper = new PdfStamper(reader, new FileOutputStream(dest));
	        stamper.setEncryption(USER, OWNER,
	            PdfWriter.ALLOW_PRINTING, PdfWriter.ENCRYPTION_AES_128 | PdfWriter.DO_NOT_ENCRYPT_METADATA);
	        stamper.close();
	        reader.close();
	    }
	 
	    /**
	     * Main method.
	     *
	     * @param    args    no arguments needed
	     * @throws DocumentException 
	     * @throws IOException
	     */
	    public static void main(String[] args) throws IOException, DocumentException {
	        EncryptionPdf metadata = new EncryptionPdf();
	        metadata.createPdf(RESULT1);
	        metadata.decryptPdf(RESULT1, RESULT2);
	       // metadata.encryptPdf(RESULT2, RESULT3);
	    }
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	


