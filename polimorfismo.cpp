#include <iostream>
using namespace std;

// Clase base Poligono
class Poligono {
public:
    // M�todo virtual puro para calcular el �rea
    virtual float calcularArea() = 0;
};

// Clase derivada Rectangulo
class Rectangulo : public Poligono {
private:
    float base;
    float altura;

public:
    Rectangulo(float b, float a) : base(b), altura(a) {}

    // Implementaci�n de la funci�n virtual calcularArea para Rectangulo
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

    // Implementaci�n de la funci�n virtual calcularArea para Triangulo
    float calcularArea() override {
        return (base * altura) / 2;
    }
};

// Funci�n para imprimir el �rea de un Poligono
void imprimirArea(Poligono* figura) {
    cout << "El �rea de la figura es: " << figura->calcularArea() << endl;
}

int main() {
    // Crear objetos de tipo Rectangulo y Triangulo
    Rectangulo rect(5, 10);
    Triangulo tri(4, 6);

    // Llamar a la funci�n imprimirArea con diferentes objetos
    imprimirArea(&rect);
    imprimirArea(&tri);

    return 0;
}

