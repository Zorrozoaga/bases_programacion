#include <assert.h>

//TiempoTranscurridoEnSexagesimal
void main() {
    //VAR
    int h1 = 16, m1 = 24, s1 = 32;
    int h2 = 18, m2 = 3,  s2 = 11;
    int hr, mr, sr;
    int llevadaS, llevadaM;

    //BEGIN
    llevadaS = (s2 < s1) * 1;
    sr = (s2 + 60 * llevadaS) - s1;
    m2 = m2 - llevadaS;
    llevadaM = (m2 < m1) * 1;
    mr = (m2 + 60 * llevadaM) - m1;
    h2 = h2 - llevadaM;
    hr = h2 - h1;

    assert(hr == 1 && mr == 38 && sr == 39);

    //END
}
