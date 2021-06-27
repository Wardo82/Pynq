#include "fft.h"

void packComplex(hls::stream<complex> &dst,
				 hls::stream<custom_number> &real,
				 hls::stream<custom_number> &imag,
                 hls::stream<bool> &eos) {
  // Converting qdma_axis<DWIDTH, 0, 0, 0> type stream to complex stream
  do {
	custom_number r = real.read();
	custom_number i = imag.read();
    complex a_temp(r.get_data(), i.get_data());
    dst << a_temp;
    if (r.get_last()) {
      eos << true;
      //eos[1] << true;
      break;
    }
    eos << false;
    //eos[1] << false;
  } while (true);
}

void unpackComplex(hls::stream<custom_number> &real,
				   hls::stream<custom_number> &imag,
				   hls::stream<complex> &dst,
				   hls::stream<bool> &eos) {
	bool t_last;
	custom_number r_out;
	custom_number i_out;
	complex tmp_complex;
	do {
		eos >> t_last;

		dst >> tmp_complex;
		r_out.set_data(ap_int<DWIDTH>(tmp_complex.real));
		r_out.set_keep(-1);
		i_out.set_data(ap_int<DWIDTH>(tmp_complex.imag));
		i_out.set_keep(-1);

		r_out.set_last(t_last);
		i_out.set_last(t_last);

		real.write(r_out);
		imag.write(i_out);
		if (t_last)
			break;

	} while (true);
}

void fft(hls::stream< custom_number > &real_in, hls::stream< custom_number > &imag_in,
		 hls::stream< custom_number > &real_out,hls::stream< custom_number > &imag_out,
		 ap_int<32> size) {
	#pragma HLS INTERFACE axis port=real_in //bundle=input
	#pragma HLS INTERFACE axis port=imag_in //bundle=input
    #pragma HLS INTERFACE axis port=real_out //bundle=output
	#pragma HLS INTERFACE axis port=imag_out //bundle=output
	#pragma HLS INTERFACE s_axilite port=size
	#pragma HLS INTERFACE ap_ctrl_none port=return

#pragma HLS dataflow
	hls::stream<complex> complex_stream("complex");
	hls::stream<bool> eos;

#pragma HLS STREAM variable=eos depth=64

    packComplex(complex_stream, real_in, imag_in, eos);
	// pkt.data *= size;
    unpackComplex(real_out, imag_out, complex_stream, eos);

}
