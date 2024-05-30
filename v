#include <bits/stdc++.h>
using namespace std;

//variabel
string name,pass;
bool masuk = false;



void regist(){
    string a,b;
    cout << "nama : "; 
    cin >> a;
    cout << "pass : ";
    cin >> b;
    name = a;
    pass = b;
}

void login(){
    string a,b;
    cout << "nama : "; 
    cin >> a;
    cout << "pass : ";
    cin >> b;

    if(a == name && b == pass){
        cout << "Berhasil !\n";
        masuk = true;
    }
    else{
        cout << "pass/acc salah !\n";
    }

}

void kue(){
    cout << "1. Kue Tart\n";
    cout << "2. Kue Madu\n";
    cout << "3. Kue Butter\n";
}

void greeting_hammer(){
    cout << "\nSelamat datang di Hammer Bakery\n";
    cout << "Silahkan lihat-lihat !\n";
    kue();
}

void greeting(){
    cout << "Hello\n";
    cout << "1. login\n";
    cout << "2. daftar\n";
    cout << "3. exit\n";
    cout << "jawaban : ";
}

int main(){
    bool active = 1;
    char menu;

    while (active){
        greeting();
        cin >> menu;

        switch (menu)
        {
        case '1':
            login();
            break;

        case '2':
            regist();
            break;    

        case '3':
            active = false;
            break;

        default:
            cout << "opsi tidak sesuai!\n";
            break;
        }

        while(masuk){
            char pesan;
            greeting_hammer();
            cout << "mau pesen (y/n) : ";
            cin >> pesan;

            switch (pesan)
            {
            case 'y':
                pesanan();
                break;
            
            case 'n':
                masuk = false;
                break;

            default:
                break;
            }

        }

    }




    return 0;
}
