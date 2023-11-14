
// first lesson
public class start {
    int c = 12;
    static void newmeth(){
        System.out.println("actually thats doesnt matter");
    }
    public static void main(String[] args) {
    newmeth();
    System.out.println(0);
    String name = "Quanysh";
    System.out.println(name);
    int num = 12;
    System.out.println(num);
    char letter = 'n';
    System.out.println(letter);
    int var;
    var = 7;
    System.out.println(var);
    final  int variable = 15;
    System.out.println(variable);
    boolean bool = true;
    System.out.println(bool);
    String str = "kalmik not good teacher";
    System.out.println(str.length());
    System.out.println(str.toLowerCase());
    System.out.println(str.indexOf("not"));
    String txt = ", ardak teacher the goat";
    System.out.println(str.concat(txt));
    System.out.println(Math.max(1, 4));
    System.out.println(Math.sqrt(45));
    System.out.println(Math.random());
    int random = (int)(Math.random() * 986);
    System.out.println(random);
    int a = 14;
    int b = 15;
    System.out.println(a>b);
    if (b>a) {
        System.out.println("Yepiee");
    }
    //variable = (condition) ? expressionTrue :  expressionFalse;
    String res = (a<b) ? "Yep buddyyy" : "Sorry bro";
    System.out.println(res);
    switch (a) {
        case 12:
            System.out.println("Crazy");
            break;
        case 14:
            System.out.println("Good");
            break;
        default:
            System.out.println("Today you will have some problems");
    }
    while (a < 17){
        System.out.println(a);
        a++;
    }    

    for (int i = 0; i < 6; i++) {
        System.out.println(i);

    }
    String[] teach = {"Mukash", "Dzhumik"};
    for (String i : teach) {
        System.out.println(i);
    }
    int[] numb = {1, 2, 3};
    System.out.println(numb.length);
    //create object in java

    start object = new start();
    System.out.println(object.c);

}

}
/*this comment actually same as 
multiline comment*/
