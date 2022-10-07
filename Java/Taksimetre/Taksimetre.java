import java.util.Scanner;

public class Taksimetre {
    public static void main(String[] args) {
        double perKm=2.20,km,total,startPrice=10,price;
        Scanner input = new Scanner (System.in);
        System.out.println("Gidilen Mesafeyi Yazınız:");
        km = input.nextDouble();
        total = startPrice + km*perKm;
        price = total > 20 ? total : 20;
        System.out.println("Ödenecek Tutar:"+ price);
    }
}
