#ifndef _FFT_H
#define _FFT_H

#include "ap_axi_sdata.h"  // In order to use qdma_axis
#include "hls_stream.h"  // In order to use hls:stream

constexpr unsigned int DWIDTH = 64;
using custom_number = qdma_axis<DWIDTH, 0, 0, 0>;
using complex_pkt = qdma_axis<DWIDTH, 0, 0, 0>;

// Tipo de dato customizado (Custom Data Type) para numeros complejos con elementos real (real)
// e imaginario (imaj). Es recomendable que las estructuras sean multiplos de 32 bits para usar
// el  flujo de datos (stream) eficientemente.
struct complex {
	double real = 0;
	double imag = 0;

	complex() = default;

    complex(ap_int<128> d) {
    	real = d.range(63, 0);
    	imag = d.range(127, 64);
    }

    complex(ap_int<64> r, ap_int<64> i){
    	real = r;
    	imag = i;
    }

};

#endif
