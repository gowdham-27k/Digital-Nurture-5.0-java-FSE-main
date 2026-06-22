import java.util.*;
class Products{
    int productId;
    String productName;
    String category;
    public Products(int productId,String productName,String category){
        this.category=category;
        this.productId=productId;
        this.productName=productName;
    }
    public static String toString(Products p1){
        return new String(p1.productId+" "+p1.productName+" "+p1.category);
    }

    public static void main(String[] args) {

        List<Products> list = new ArrayList<>();
        list.add(new Products(101,"Mobile","Electronics"));
        list.add(new Products(102,"laptop","Electronics"));
        list.add(new Products(103,"shirt","fashion"));
        list.add(new Products(104,"shoe","Accessories"));
        Products ls = linearSearch(list,103);
        if(ls!=null){
            String vh = toString(ls);
            System.out.println("Linear Search: ");
            System.out.println(vh);
        }
        Products bs = binarySearch(list,102);
        if(bs!=null){
            String vh = toString(bs);
            System.out.println("Binary Search: ");
            System.out.println(vh);
        }
    }
    public static Products binarySearch(List<Products> list,int id){
        Collections.sort(list,(a,b)->a.productId-b.productId);
        int l = 0;
        int r = list.size()-1;
        while(l<=r){
            int mid = l+(r-l)/2;
            if(list.get(mid).productId==id){
                return list.get(mid);
            } else if (list.get(mid).productId>id) {
                r = mid-1;
            }
            else{
                l = mid+1;
            }
        }
        return null;
    }
    public static Products linearSearch(List<Products> p1,int id){
        for(Products p:p1){
            if(p.productId==id){
                return p;
            }
        }
        return null;
    }
}

