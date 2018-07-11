#include <iostream>
#include <cstdlib>
#include <fstream>
#include <string>

using namespace std;

int main()
{

        ifstream archivo_entrada("pi.dat");;
        string linea;

        int contador = 0;
        int max;

        cout << "Escribe una linea: ";
        cin >> max;

        while(getline(archivo_entrada, linea)) {

                if(max == contador) {
                        cout << linea << endl;
                }

                contador++;
        }

        return EXIT_SUCCESS;
}