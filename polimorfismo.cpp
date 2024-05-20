#include <iostream>
using namespace std;

// Clase base Poligono
class Poligono {
public:
    // Método virtual puro para calcular el área
    virtual float calcularArea() = 0;
};

// Clase derivada Rectangulo
class Rectangulo : public Poligono {
private:
    float base;
    float altura;

public:
    Rectangulo(float b, float a) : base(b), altura(a) {}

    // Implementación de la función virtual calcularArea para Rectangulo
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

    // Implementación de la función virtual calcularArea para Triangulo
    float calcularArea() override {
        return (base * altura) / 2;
    }
};

// Función para imprimir el área de un Poligono
void imprimirArea(Poligono* figura) {
    cout << "El área de la figura es: " << figura->calcularArea() << endl;
}

int main() {
    // Crear objetos de tipo Rectangulo y Triangulo
    Rectangulo rect(5, 10);
    Triangulo tri(4, 6);

    // Llamar a la función imprimirArea con diferentes objetos
    imprimirArea(&rect);
    imprimirArea(&tri);

    return 0;
}

