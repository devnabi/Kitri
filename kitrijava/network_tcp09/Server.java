package network_tcp09;

import java.io.*;
import java.net.ServerSocket;
import java.net.Socket;

public class Server {

    public static void main(String[] args) throws IOException {
        try {
            // 서버 소켓 생성 & 바인딩
            ServerSocket serverSocket = new ServerSocket(50001);
            while(true) {
                // 연결 요청 대기
                System.out.println("연결 대기 중...");
                Socket socket = serverSocket.accept();
                serveClient(socket);
            }



        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    static void serveClient(Socket socket) {
        Thread thread = new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    InputStream is = socket.getInputStream();
                    OutputStream os = socket.getOutputStream();
                    DataOutputStream dos = new DataOutputStream(os);
                    DataInputStream dis = new DataInputStream(is);

                    dos.writeUTF("안녕하세요! 점심 맛있게 드셨나요?!!!");

                    while (true) {
                        String read = dis.readUTF();
                        System.out.println(read);

                        dos.writeUTF(read);
                        // 클라이언트로부터 입력받은 메시지를
                        // 다른 접속중인 모든 클라이언트한테 전달해야한다.

                        if (read.toLowerCase().equals("q")) {
                            socket.close();
                        }
                    }

                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        });
        thread.start();
    } // main의 끝
}
