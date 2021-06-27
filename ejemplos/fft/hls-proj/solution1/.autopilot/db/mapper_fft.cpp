#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
unsigned int ap_apatb_real_in_V_cap_bc;
static AESL_RUNTIME_BC __xlx_real_in_V_size_Reader("../tv/stream_size/stream_size_in_real_in_V.dat");
unsigned int ap_apatb_imag_in_V_cap_bc;
static AESL_RUNTIME_BC __xlx_imag_in_V_size_Reader("../tv/stream_size/stream_size_in_imag_in_V.dat");
unsigned int ap_apatb_real_out_V_cap_bc;
static AESL_RUNTIME_BC __xlx_real_out_V_size_Reader("../tv/stream_size/stream_size_out_real_out_V.dat");
unsigned int ap_apatb_imag_out_V_cap_bc;
static AESL_RUNTIME_BC __xlx_imag_out_V_size_Reader("../tv/stream_size/stream_size_out_imag_out_V.dat");
struct __cosim_s10__ { char data[16]; };
struct __cosim_s4__ { char data[4]; };
extern "C" void fft(__cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s4__);
extern "C" void apatb_fft_hw(volatile void * __xlx_apatb_param_real_in, volatile void * __xlx_apatb_param_imag_in, volatile void * __xlx_apatb_param_real_out, volatile void * __xlx_apatb_param_imag_out, __cosim_s4__ __xlx_apatb_param_size) {
  // collect __xlx_real_in_tmp_vec
  unsigned __xlx_real_in_V_tmp_Count = 0;
  unsigned __xlx_real_in_V_read_Size = __xlx_real_in_V_size_Reader.read_size();
  vector<__cosim_s10__> __xlx_real_in_tmp_vec;
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_real_in)->empty() && __xlx_real_in_V_tmp_Count < __xlx_real_in_V_read_Size) {
    __xlx_real_in_tmp_vec.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_real_in)->read());
    __xlx_real_in_V_tmp_Count++;
  }
  ap_apatb_real_in_V_cap_bc = __xlx_real_in_tmp_vec.size();
  // store input buffer
  __cosim_s10__* __xlx_real_in_input_buffer= new __cosim_s10__[__xlx_real_in_tmp_vec.size()];
  for (int i = 0; i < __xlx_real_in_tmp_vec.size(); ++i) {
    __xlx_real_in_input_buffer[i] = __xlx_real_in_tmp_vec[i];
  }
  // collect __xlx_imag_in_tmp_vec
  unsigned __xlx_imag_in_V_tmp_Count = 0;
  unsigned __xlx_imag_in_V_read_Size = __xlx_imag_in_V_size_Reader.read_size();
  vector<__cosim_s10__> __xlx_imag_in_tmp_vec;
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_imag_in)->empty() && __xlx_imag_in_V_tmp_Count < __xlx_imag_in_V_read_Size) {
    __xlx_imag_in_tmp_vec.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_imag_in)->read());
    __xlx_imag_in_V_tmp_Count++;
  }
  ap_apatb_imag_in_V_cap_bc = __xlx_imag_in_tmp_vec.size();
  // store input buffer
  __cosim_s10__* __xlx_imag_in_input_buffer= new __cosim_s10__[__xlx_imag_in_tmp_vec.size()];
  for (int i = 0; i < __xlx_imag_in_tmp_vec.size(); ++i) {
    __xlx_imag_in_input_buffer[i] = __xlx_imag_in_tmp_vec[i];
  }
  //Create input buffer for real_out
  ap_apatb_real_out_V_cap_bc = __xlx_real_out_V_size_Reader.read_size();
  __cosim_s10__* __xlx_real_out_input_buffer= new __cosim_s10__[ap_apatb_real_out_V_cap_bc];
  //Create input buffer for imag_out
  ap_apatb_imag_out_V_cap_bc = __xlx_imag_out_V_size_Reader.read_size();
  __cosim_s10__* __xlx_imag_out_input_buffer= new __cosim_s10__[ap_apatb_imag_out_V_cap_bc];
  // DUT call
  fft(__xlx_real_in_input_buffer, __xlx_imag_in_input_buffer, __xlx_real_out_input_buffer, __xlx_imag_out_input_buffer, __xlx_apatb_param_size);
  for (unsigned i = 0; i <ap_apatb_real_out_V_cap_bc; ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_real_out)->write(__xlx_real_out_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_imag_out_V_cap_bc; ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_imag_out)->write(__xlx_imag_out_input_buffer[i]);
}
