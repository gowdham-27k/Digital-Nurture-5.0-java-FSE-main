interface Document{
    public void create();
}
class PdfDocument implements Document {
    public void create(){
        System.out.println("PDF Document Created!");
    }
}
class WordDocument implements Document{
    @java.lang.Override
    public void create() {
        System.out.println("Word Document is Created!");
    }
}
class ExcelDocument implements Document {
    @java.lang.Override
    public void create() {
        System.out.println("Excel Document is Created!!");
    }
}
interface DocumentFactory{
    public Document createDocument();
}
class ExcelFactory implements DocumentFactory{
    @java.lang.Override
    public Document createDocument() {
        return new ExcelDocument();
    }
}

class PdfFactory implements DocumentFactory{
    @java.lang.Override
    public Document createDocument() {
        return new PdfDocument();
    }
}

class WordFactory implements DocumentFactory{
    @java.lang.Override
    public Document createDocument() {
        return new WordDocument();
    }
}
public class DocumentClass{
    public static void main(String[] args){
        DocumentFactory factory = new WordFactory();
        Document doc = factory.createDocument();
        doc.create();
    }
}