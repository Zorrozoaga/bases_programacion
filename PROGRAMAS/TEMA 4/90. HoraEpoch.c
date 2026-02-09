#include <assert.h>

//HoraEpoch
void main() {
    int h, min, sg, d, mes, anno;
    int esBisiesto, bisiestos, diasMes, dias, horaepoch;

    //01-01-1970 a las 00:00:00
    h = 0; min = 0; sg = 0;
    d = 1; mes = 1; anno = 1970;

    diasMes =
        31 * (mes == 2) +
        (31 + 28) * (mes == 3) +
        (31 + 28 + 31) * (mes == 4) +
        (31 + 28 + 31 + 30) * (mes == 5) +
        (31 + 28 + 31 + 30 + 31) * (mes == 6) +
        (31 + 28 + 31 + 30 + 31 + 30) * (mes == 7) +
        (31 + 28 + 31 + 30 + 31 + 30 + 31) * (mes == 8) +
        (31 + 28 + 31 + 30 + 31 + 30 + 31 + 31) * (mes == 9) +
        (31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + 30) * (mes == 10) +
        (31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + 31) * (mes == 11) +
        (31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + 31 + 30) * (mes == 12);

    esBisiesto =
        ((anno % 4 == 0 && !(anno % 100 == 0)) || (anno % 400 == 0)) * 1;

    dias = diasMes + d + esBisiesto * (mes > 2);

    bisiestos =
        (anno - 1970) / 4
        - (anno - 1970) / 100
        + (anno - 1970) / 400;

    dias = (anno - 1970) * 365 + bisiestos + (dias - 1);

    horaepoch = dias * 24 * 3600 + h * 3600 + min * 60 + sg;

   assert(horaepoch==0);

    //09-02-2026 a las 19:39:46
    h = 19; min = 39; sg = 46;
    d = 9; mes = 2; anno = 2026;

    diasMes =
        31 * (mes == 2) +
        (31 + 28) * (mes == 3) +
        (31 + 28 + 31) * (mes == 4) +
        (31 + 28 + 31 + 30) * (mes == 5) +
        (31 + 28 + 31 + 30 + 31) * (mes == 6) +
        (31 + 28 + 31 + 30 + 31 + 30) * (mes == 7) +
        (31 + 28 + 31 + 30 + 31 + 30 + 31) * (mes == 8) +
        (31 + 28 + 31 + 30 + 31 + 30 + 31 + 31) * (mes == 9) +
        (31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + 30) * (mes == 10) +
        (31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + 31) * (mes == 11) +
        (31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + 31 + 30) * (mes == 12);

    esBisiesto =
        ((anno % 4 == 0 && !(anno % 100 == 0)) || (anno % 400 == 0)) * 1;

    dias = diasMes + d + esBisiesto * (mes > 2);

    bisiestos =
        (anno - 1970) / 4
        - (anno - 1970) / 100
        + (anno - 1970) / 400;

    dias = (anno - 1970) * 365 + bisiestos + (dias - 1);

    horaepoch = dias * 24 * 3600 + h * 3600 + min * 60 + sg;

    assert(horaepoch==1770665986);
}
