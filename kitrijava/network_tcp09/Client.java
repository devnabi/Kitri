package network_tcp09;

import java.io.*;
import java.net.Socket;
import java.util.Scanner;

public class Client {
    static Scanner sc = new Scanner(System.in);

    public static void main(String[] args) {
        try {
            Socket socket = new Socket("192.168.10.204",50001);
            InputStream is = socket.getInputStream();
            DataInputStream dis = new DataInputStream(is);
            OutputStream os = socket.getOutputStream();
            DataOutputStream dos = new DataOutputStream(os);

            System.out.println(dis.readUTF());

            while(true){
                dos.writeUTF("클라 : " + sc.nextLine());
                System.out.println(dis.readUTF());
            }
        }
        catch (IOException e){
            throw new RuntimeException(e);
        }
    } // main의 끝
}

//
