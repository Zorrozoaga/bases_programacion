#include <assert.h>

//PuentesHashiValidos
void main() {
    int x1, y1, x2, y2;
    int x3, y3, x4, y4;
    int hor1, hor2;
    int distintaOrientacion, cruzan;
    int ptesValidos;

    //Los dos puentes tienen la misma orientación, true
    x1 = 1; y1 = 3;
    x2 = 5; y2 = 3;
    x3 = 1; y3 = 5;
    x4 = 5; y4 = 5;

    hor1 = (y1 == y2);
    hor2 = (y3 == y4);

    distintaOrientacion = (hor1 != hor2);

    cruzan = distintaOrientacion && (
        (hor1 == 1) * ((x1 < x3 && x3 < x2) && (y3 < y1 && y1 < y4)) +
        (hor1 == 0) * ((x3 < x1 && x1 < x4) && (y1 < y3 && y3 < y2))
        );

    ptesValidos = !cruzan;
    assert(ptesValidos);

    //Los dos puentes tienen distinta orientación, pero no se cruzan, true
    x1 = 1; y1 = 3;
    x2 = 5; y2 = 3;
    x3 = 6; y3 = 1;
    x4 = 6; y4 = 6;

    hor1 = (y1 == y2);
    hor2 = (y3 == y4);

    distintaOrientacion = (hor1 != hor2);

    cruzan = distintaOrientacion && (
        (hor1 == 1) * ((x1 < x3 && x3 < x2) && (y3 < y1 && y1 < y4)) +
        (hor1 == 0) * ((x3 < x1 && x1 < x4) && (y1 < y3 && y3 < y2))
        );

    ptesValidos = !cruzan;
    assert(ptesValidos);

    //Los dos puentes se cruzan, false
    x1 = 1; y1 = 3;
    x2 = 5; y2 = 3;
    x3 = 4; y3 = 1;
    x4 = 4; y4 = 6;

    hor1 = (y1 == y2);
    hor2 = (y3 == y4);

    distintaOrientacion = (hor1 != hor2);

    cruzan = distintaOrientacion && (
        (hor1 == 1) * ((x1 < x3 && x3 < x2) && (y3 < y1 && y1 < y4)) +
        (hor1 == 0) * ((x3 < x1 && x1 < x4) && (y1 < y3 && y3 < y2))
        );

    ptesValidos = !cruzan;
    assert(!ptesValidos);
    
}
