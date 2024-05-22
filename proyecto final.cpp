#include <iostream>
#include <fstream>
#include <string>
#include <vector>
using namespace std;

// Definición de la clase Operacion
class Operacion {
protected:
    int valor1;
    int valor2;
    int resultado;

public:
    void cargar1();
    void cargar2();
    void mostrarResultado();
};

// Implementación de los métodos de la clase Operacion
void Operacion::cargar1() {
    cout << "Ingrese primer valor: ";
    cin >> valor1;
}

void Operacion::cargar2() {
    cout << "Ingrese segundo valor: ";
    cin >> valor2;
}

void Operacion::mostrarResultado() {
    cout << "Resultado: " << resultado << endl;
}

// Definición de la clase Suma, hereda de Operacion
class Suma : public Operacion {
public:
    void operar();
};

// Implementación del método operar de la clase Suma
void Suma::operar() {
    resultado = valor1 + valor2;
}

// Definición de la clase Resta, hereda de Operacion
class Resta : public Operacion {
public:
    void operar();
};

// Implementación del método operar de la clase Resta
void Resta::operar() {
    resultado = valor1 - valor2;
}

// Definición de la clase Plato
class Plato {
private:
    string nombre;
    float precio;

public:
    Plato(string nombre, float precio) : nombre(nombre), precio(precio) {}

    string getNombre() {
        return nombre;
    }

    float getPrecio() {
        return precio;
    }
};

// Definición de la clase Pedido
class Pedido {
private:
    vector<Plato> platos;
    float total;

public:
    Pedido() : total(0.0) {}

    void agregarPlato(Plato plato) {
        platos.push_back(plato);
        total += plato.getPrecio();
    }

    void mostrarPedido() {
        cout << "Pedido:" << endl;
        for (Plato plato : platos) {
            cout << "- " << plato.getNombre() << " Q" << plato.getPrecio() << endl;
        }
        cout << "Total: Q" << total << endl;
    }
};

// Definición de la clase Calculadora
class Calculadora {
private:
    float numero1;
    float numero2;

public:
    Calculadora(float num1, float num2) : numero1(num1), numero2(num2) {}

    float sumar() {
        return numero1 + numero2;
    }

    float restar() {
        return numero1 - numero2;
    }

    float multiplicar() {
        return numero1 * numero2;
    }

    float dividir() {
        if (numero2 != 0)
            return numero1 / numero2;
        else {
            cout << "¡Error! No se puede dividir por cero." << endl;
            return 0;
        }
    }
};

// Clase base Poligono
class Poligono {
public:
    virtual float calcularArea() = 0; // Método virtual puro
};

// Clase derivada Rectangulo
class Rectangulo : public Poligono {
private:
    float base;
    float altura;

public:
    Rectangulo(float b, float a) : base(b), altura(a) {}

    float calcularArea() override {
        return base * altura;
    }
};

// Clase derivada Triangulo
class Triangulo : public Poligono {
private:
    float base;
    float altura;

public:
    Triangulo(float b, float a) : base(b), altura(a) {}

    float calcularArea() override {
        return (base * altura) / 2;
    }
};

// Función para imprimir el área de un Poligono
void imprimirArea(Poligono* figura) {
    cout << "El area de la figura es: " << figura->calcularArea() << endl;
}

// Función para mostrar el menú de opciones
void mostrarMenu() {
    cout << "Menu de opciones:" << endl;
    cout << "1. Sumar" << endl;
    cout << "2. Restar" << endl;
    cout << "3. Calcular area de figuras" << endl;
    cout << "4. Realizar pedido" << endl;
    cout << "5. Manipular archivos" << endl;
    cout << "6. Salir" << endl;
    cout << "Ingrese su eleccion: ";
}

// Función para manipular archivos
void manipularArchivos() {
    {
        ofstream crearao("ejemploarchivo.txt", ios::binary);
        if (crearao.fail()) {
            cerr << "> Error creando el archivo." << endl;
            return;
        }
        crearao.close();
    }
    {
        string tto;
        cout << "Ingrese el texto que desea escribir en el archivo..." << endl << "> ";
        cin.ignore(); // Para ignorar el carácter de nueva línea pendiente
        getline(cin, tto);
        ofstream wtao("ejemploarchivo.txt", ios::binary);
        if (!wtao) {
            cerr << "> Error abriendo el archivo" << endl;
            return;
        }
        const char* buffer = tto.c_str();
        size_t size = tto.size();
        wtao.write(buffer, size);
        if (wtao.fail()) {
            cerr << "> Error escribiendo en el archivo." << endl;
        } else {
            cout << "> Texto escrito en el archivo" << endl;
        }
        wtao.close();
    }
    {
        ifstream rdao("ejemploarchivo.txt", ios::binary);
        if (!rdao) {
            cerr << "> Error abriendo el archivo" << endl;
            return;
        }
        rdao.seekg(0, ios::end);
        streampos fileSize = rdao.tellg();
        rdao.seekg(0, ios::beg);
        char* tto2 = new char[fileSize];
        rdao.read(tto2, fileSize);
        if (rdao.fail()) {
            cerr << "> No se puede leer el archivo" << endl;
        } else {
            cout << "Texto leido en el archivo: " << tto2 << endl;
        }
        delete[] tto2;
        rdao.close();
    }
}

int main() {
    int opcion;
    bool salir = false;

    while (!salir) {
        mostrarMenu();
        cin >> opcion;

        switch (opcion) {
            case 1: {
                Suma suma;
                suma.cargar1();
                suma.cargar2();
                suma.operar();
                suma.mostrarResultado();
                break;
            }
            case 2: {
                Resta resta;
                resta.cargar1();
                resta.cargar2();
                resta.operar();
                resta.mostrarResultado();
                break;
            }
            case 3: {
                Poligono* figura;
                Rectangulo rect(5, 10);
                Triangulo tri(4, 6);
                figura = &rect;
                imprimirArea(figura);
                figura = &tri;
                imprimirArea(figura);
                break;
            }
            case 4: {
                Plato plato1("Pizza", 8.5);
                Plato plato2("Ensalada", 5.0);
                Plato plato3("Hamburguesa", 7.0);
                Pedido pedido;
                pedido.agregarPlato(plato1);
                pedido.agregarPlato(plato2);
                pedido.agregarPlato(plato3);
                pedido.mostrarPedido();
                break;
            }
            case 5:
                manipularArchivos();
                break;
            case 6:
                salir = true;
                cout << "Saliendo del programa..." << endl;
                break;
            default:
                cout << "Opción no valida, por favor intente de nuevo." << endl;
                break;
        }
        cout << endl; // Espacio entre iteraciones
    }

    return 0;
}

