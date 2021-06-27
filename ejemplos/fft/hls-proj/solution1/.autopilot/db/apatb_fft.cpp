#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_real_in_V_data_V "../tv/cdatafile/c.fft.autotvin_real_in_V_data_V.dat"
#define AUTOTB_TVOUT_real_in_V_data_V "../tv/cdatafile/c.fft.autotvout_real_in_V_data_V.dat"
#define AUTOTB_TVIN_real_in_V_keep_V "../tv/cdatafile/c.fft.autotvin_real_in_V_keep_V.dat"
#define AUTOTB_TVOUT_real_in_V_keep_V "../tv/cdatafile/c.fft.autotvout_real_in_V_keep_V.dat"
#define AUTOTB_TVIN_real_in_V_last_V "../tv/cdatafile/c.fft.autotvin_real_in_V_last_V.dat"
#define AUTOTB_TVOUT_real_in_V_last_V "../tv/cdatafile/c.fft.autotvout_real_in_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_real_in_V_data_V "../tv/stream_size/stream_size_in_real_in_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_real_in_V_data_V "../tv/stream_size/stream_ingress_status_real_in_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_real_in_V_keep_V "../tv/stream_size/stream_size_in_real_in_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_real_in_V_keep_V "../tv/stream_size/stream_ingress_status_real_in_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_real_in_V_last_V "../tv/stream_size/stream_size_in_real_in_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_real_in_V_last_V "../tv/stream_size/stream_ingress_status_real_in_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_imag_in_V_data_V "../tv/cdatafile/c.fft.autotvin_imag_in_V_data_V.dat"
#define AUTOTB_TVOUT_imag_in_V_data_V "../tv/cdatafile/c.fft.autotvout_imag_in_V_data_V.dat"
#define AUTOTB_TVIN_imag_in_V_keep_V "../tv/cdatafile/c.fft.autotvin_imag_in_V_keep_V.dat"
#define AUTOTB_TVOUT_imag_in_V_keep_V "../tv/cdatafile/c.fft.autotvout_imag_in_V_keep_V.dat"
#define AUTOTB_TVIN_imag_in_V_last_V "../tv/cdatafile/c.fft.autotvin_imag_in_V_last_V.dat"
#define AUTOTB_TVOUT_imag_in_V_last_V "../tv/cdatafile/c.fft.autotvout_imag_in_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_imag_in_V_data_V "../tv/stream_size/stream_size_in_imag_in_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_imag_in_V_data_V "../tv/stream_size/stream_ingress_status_imag_in_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_imag_in_V_keep_V "../tv/stream_size/stream_size_in_imag_in_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_imag_in_V_keep_V "../tv/stream_size/stream_ingress_status_imag_in_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_imag_in_V_last_V "../tv/stream_size/stream_size_in_imag_in_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_imag_in_V_last_V "../tv/stream_size/stream_ingress_status_imag_in_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_real_out_V_data_V "../tv/cdatafile/c.fft.autotvin_real_out_V_data_V.dat"
#define AUTOTB_TVOUT_real_out_V_data_V "../tv/cdatafile/c.fft.autotvout_real_out_V_data_V.dat"
#define AUTOTB_TVIN_real_out_V_keep_V "../tv/cdatafile/c.fft.autotvin_real_out_V_keep_V.dat"
#define AUTOTB_TVOUT_real_out_V_keep_V "../tv/cdatafile/c.fft.autotvout_real_out_V_keep_V.dat"
#define AUTOTB_TVIN_real_out_V_last_V "../tv/cdatafile/c.fft.autotvin_real_out_V_last_V.dat"
#define AUTOTB_TVOUT_real_out_V_last_V "../tv/cdatafile/c.fft.autotvout_real_out_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_real_out_V_data_V "../tv/stream_size/stream_size_out_real_out_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_real_out_V_data_V "../tv/stream_size/stream_egress_status_real_out_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_real_out_V_keep_V "../tv/stream_size/stream_size_out_real_out_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_real_out_V_keep_V "../tv/stream_size/stream_egress_status_real_out_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_real_out_V_last_V "../tv/stream_size/stream_size_out_real_out_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_real_out_V_last_V "../tv/stream_size/stream_egress_status_real_out_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_imag_out_V_data_V "../tv/cdatafile/c.fft.autotvin_imag_out_V_data_V.dat"
#define AUTOTB_TVOUT_imag_out_V_data_V "../tv/cdatafile/c.fft.autotvout_imag_out_V_data_V.dat"
#define AUTOTB_TVIN_imag_out_V_keep_V "../tv/cdatafile/c.fft.autotvin_imag_out_V_keep_V.dat"
#define AUTOTB_TVOUT_imag_out_V_keep_V "../tv/cdatafile/c.fft.autotvout_imag_out_V_keep_V.dat"
#define AUTOTB_TVIN_imag_out_V_last_V "../tv/cdatafile/c.fft.autotvin_imag_out_V_last_V.dat"
#define AUTOTB_TVOUT_imag_out_V_last_V "../tv/cdatafile/c.fft.autotvout_imag_out_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_imag_out_V_data_V "../tv/stream_size/stream_size_out_imag_out_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_imag_out_V_data_V "../tv/stream_size/stream_egress_status_imag_out_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_imag_out_V_keep_V "../tv/stream_size/stream_size_out_imag_out_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_imag_out_V_keep_V "../tv/stream_size/stream_egress_status_imag_out_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_imag_out_V_last_V "../tv/stream_size/stream_size_out_imag_out_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_imag_out_V_last_V "../tv/stream_size/stream_egress_status_imag_out_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_size "../tv/cdatafile/c.fft.autotvin_size.dat"
#define AUTOTB_TVOUT_size "../tv/cdatafile/c.fft.autotvout_size.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_real_in_V_data_V "../tv/rtldatafile/rtl.fft.autotvout_real_in_V_data_V.dat"
#define AUTOTB_TVOUT_PC_real_in_V_keep_V "../tv/rtldatafile/rtl.fft.autotvout_real_in_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_real_in_V_last_V "../tv/rtldatafile/rtl.fft.autotvout_real_in_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_imag_in_V_data_V "../tv/rtldatafile/rtl.fft.autotvout_imag_in_V_data_V.dat"
#define AUTOTB_TVOUT_PC_imag_in_V_keep_V "../tv/rtldatafile/rtl.fft.autotvout_imag_in_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_imag_in_V_last_V "../tv/rtldatafile/rtl.fft.autotvout_imag_in_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_real_out_V_data_V "../tv/rtldatafile/rtl.fft.autotvout_real_out_V_data_V.dat"
#define AUTOTB_TVOUT_PC_real_out_V_keep_V "../tv/rtldatafile/rtl.fft.autotvout_real_out_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_real_out_V_last_V "../tv/rtldatafile/rtl.fft.autotvout_real_out_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_imag_out_V_data_V "../tv/rtldatafile/rtl.fft.autotvout_imag_out_V_data_V.dat"
#define AUTOTB_TVOUT_PC_imag_out_V_keep_V "../tv/rtldatafile/rtl.fft.autotvout_imag_out_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_imag_out_V_last_V "../tv/rtldatafile/rtl.fft.autotvout_imag_out_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_size "../tv/rtldatafile/rtl.fft.autotvout_size.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  real_in_V_data_V_depth = 0;
  real_in_V_keep_V_depth = 0;
  real_in_V_last_V_depth = 0;
  imag_in_V_data_V_depth = 0;
  imag_in_V_keep_V_depth = 0;
  imag_in_V_last_V_depth = 0;
  real_out_V_data_V_depth = 0;
  real_out_V_keep_V_depth = 0;
  real_out_V_last_V_depth = 0;
  imag_out_V_data_V_depth = 0;
  imag_out_V_keep_V_depth = 0;
  imag_out_V_last_V_depth = 0;
  size_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{real_in_V_data_V " << real_in_V_data_V_depth << "}\n";
  total_list << "{real_in_V_keep_V " << real_in_V_keep_V_depth << "}\n";
  total_list << "{real_in_V_last_V " << real_in_V_last_V_depth << "}\n";
  total_list << "{imag_in_V_data_V " << imag_in_V_data_V_depth << "}\n";
  total_list << "{imag_in_V_keep_V " << imag_in_V_keep_V_depth << "}\n";
  total_list << "{imag_in_V_last_V " << imag_in_V_last_V_depth << "}\n";
  total_list << "{real_out_V_data_V " << real_out_V_data_V_depth << "}\n";
  total_list << "{real_out_V_keep_V " << real_out_V_keep_V_depth << "}\n";
  total_list << "{real_out_V_last_V " << real_out_V_last_V_depth << "}\n";
  total_list << "{imag_out_V_data_V " << imag_out_V_data_V_depth << "}\n";
  total_list << "{imag_out_V_keep_V " << imag_out_V_keep_V_depth << "}\n";
  total_list << "{imag_out_V_last_V " << imag_out_V_last_V_depth << "}\n";
  total_list << "{size " << size_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
  public:
    int real_in_V_data_V_depth;
    int real_in_V_keep_V_depth;
    int real_in_V_last_V_depth;
    int imag_in_V_data_V_depth;
    int imag_in_V_keep_V_depth;
    int imag_in_V_last_V_depth;
    int real_out_V_data_V_depth;
    int real_out_V_keep_V_depth;
    int real_out_V_last_V_depth;
    int imag_out_V_data_V_depth;
    int imag_out_V_keep_V_depth;
    int imag_out_V_last_V_depth;
    int size_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static void RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool no_x = false;
  bool err = false;

  no_x = false;
  // search and replace 'X' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('X', 0);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
  no_x = false;
  // search and replace 'x' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('x', 2);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
}
struct __cosim_s10__ { char data[16]; };
struct __cosim_s4__ { char data[4]; };
extern "C" void fft_hw_stub(volatile void *, volatile void *, volatile void *, volatile void *, __cosim_s4__);

extern "C" void apatb_fft_hw(volatile void * __xlx_apatb_param_real_in, volatile void * __xlx_apatb_param_imag_in, volatile void * __xlx_apatb_param_real_out, volatile void * __xlx_apatb_param_imag_out, __cosim_s4__ __xlx_apatb_param_size) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;long __xlx_apatb_param_real_in_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_real_in_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_real_in_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_real_in_stream_buf_final_size; ++i)((hls::stream<__cosim_s10__>*)__xlx_apatb_param_real_in)->read();
long __xlx_apatb_param_imag_in_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_imag_in_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_imag_in_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_imag_in_stream_buf_final_size; ++i)((hls::stream<__cosim_s10__>*)__xlx_apatb_param_imag_in)->read();
{sc_bv<128> xlx_stream_real_out_pc_buffer;
unsigned xlx_stream_real_out_size;

          std::vector<sc_bv<128> > real_out_V_data_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_real_out_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<128> > real_out_V_data_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "real_out");
  
            // push token into output port buffer
            if (AESL_token != "") {
              real_out_V_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_real_out_size=real_out_V_data_V_pc_buffer.size();
real_out_V_data_V_pc_buffer_Copy=real_out_V_data_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<128> > real_out_V_keep_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_real_out_V_keep_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<128> > real_out_V_keep_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "real_out");
  
            // push token into output port buffer
            if (AESL_token != "") {
              real_out_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_real_out_size=real_out_V_keep_V_pc_buffer.size();
real_out_V_keep_V_pc_buffer_Copy=real_out_V_keep_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<128> > real_out_V_last_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_real_out_V_last_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<128> > real_out_V_last_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "real_out");
  
            // push token into output port buffer
            if (AESL_token != "") {
              real_out_V_last_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_real_out_size=real_out_V_last_V_pc_buffer.size();
real_out_V_last_V_pc_buffer_Copy=real_out_V_last_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (int j = 0, e = xlx_stream_real_out_size; j != e; ++j) {
xlx_stream_real_out_pc_buffer.range(63, 0) = real_out_V_data_V_pc_buffer_Copy[j];
xlx_stream_real_out_pc_buffer.range(71, 64) = real_out_V_keep_V_pc_buffer_Copy[j];
xlx_stream_real_out_pc_buffer.range(127, 72) = real_out_V_last_V_pc_buffer_Copy[j];
__cosim_s10__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0*2+0] = xlx_stream_real_out_pc_buffer.range(63,0).to_int64();
((long long*)&xlx_stream_elt)[0*2+1] = xlx_stream_real_out_pc_buffer.range(127,64).to_int64();
((hls::stream<__cosim_s10__>*)__xlx_apatb_param_real_out)->write(xlx_stream_elt);
}}{sc_bv<128> xlx_stream_imag_out_pc_buffer;
unsigned xlx_stream_imag_out_size;

          std::vector<sc_bv<128> > imag_out_V_data_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_imag_out_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<128> > imag_out_V_data_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "imag_out");
  
            // push token into output port buffer
            if (AESL_token != "") {
              imag_out_V_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_imag_out_size=imag_out_V_data_V_pc_buffer.size();
imag_out_V_data_V_pc_buffer_Copy=imag_out_V_data_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<128> > imag_out_V_keep_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_imag_out_V_keep_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<128> > imag_out_V_keep_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "imag_out");
  
            // push token into output port buffer
            if (AESL_token != "") {
              imag_out_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_imag_out_size=imag_out_V_keep_V_pc_buffer.size();
imag_out_V_keep_V_pc_buffer_Copy=imag_out_V_keep_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<128> > imag_out_V_last_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_imag_out_V_last_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<128> > imag_out_V_last_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "imag_out");
  
            // push token into output port buffer
            if (AESL_token != "") {
              imag_out_V_last_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_imag_out_size=imag_out_V_last_V_pc_buffer.size();
imag_out_V_last_V_pc_buffer_Copy=imag_out_V_last_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (int j = 0, e = xlx_stream_imag_out_size; j != e; ++j) {
xlx_stream_imag_out_pc_buffer.range(63, 0) = imag_out_V_data_V_pc_buffer_Copy[j];
xlx_stream_imag_out_pc_buffer.range(71, 64) = imag_out_V_keep_V_pc_buffer_Copy[j];
xlx_stream_imag_out_pc_buffer.range(127, 72) = imag_out_V_last_V_pc_buffer_Copy[j];
__cosim_s10__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0*2+0] = xlx_stream_imag_out_pc_buffer.range(63,0).to_int64();
((long long*)&xlx_stream_elt)[0*2+1] = xlx_stream_imag_out_pc_buffer.range(127,64).to_int64();
((hls::stream<__cosim_s10__>*)__xlx_apatb_param_imag_out)->write(xlx_stream_elt);
}}
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static AESL_FILE_HANDLER aesl_fh;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
//real_in
aesl_fh.touch(AUTOTB_TVIN_real_in_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_real_in_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_real_in_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_real_in_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_real_in_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_real_in_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_real_in_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_real_in_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_real_in_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_real_in_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_real_in_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_real_in_V_last_V);
//imag_in
aesl_fh.touch(AUTOTB_TVIN_imag_in_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_imag_in_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_imag_in_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_imag_in_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_imag_in_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_imag_in_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_imag_in_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_imag_in_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_imag_in_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_imag_in_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_imag_in_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_imag_in_V_last_V);
//real_out
aesl_fh.touch(AUTOTB_TVIN_real_out_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_real_out_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_real_out_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_real_out_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_real_out_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_real_out_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_real_out_V_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_real_out_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_real_out_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_real_out_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_real_out_V_last_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_real_out_V_last_V);
//imag_out
aesl_fh.touch(AUTOTB_TVIN_imag_out_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_imag_out_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_imag_out_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_imag_out_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_imag_out_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_imag_out_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_imag_out_V_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_imag_out_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_imag_out_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_imag_out_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_imag_out_V_last_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_imag_out_V_last_V);
//size
aesl_fh.touch(AUTOTB_TVIN_size);
aesl_fh.touch(AUTOTB_TVOUT_size);
CodeState = DUMP_INPUTS;
std::vector<__cosim_s10__> __xlx_apatb_param_real_in_stream_buf;
{
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_real_in)->empty())
    __xlx_apatb_param_real_in_stream_buf.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_real_in)->read());
  for (int i = 0; i < __xlx_apatb_param_real_in_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_real_in)->write(__xlx_apatb_param_real_in_stream_buf[i]);
  }
long __xlx_apatb_param_real_in_stream_buf_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_real_in)->size();
std::vector<__cosim_s10__> __xlx_apatb_param_imag_in_stream_buf;
{
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_imag_in)->empty())
    __xlx_apatb_param_imag_in_stream_buf.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_imag_in)->read());
  for (int i = 0; i < __xlx_apatb_param_imag_in_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_imag_in)->write(__xlx_apatb_param_imag_in_stream_buf[i]);
  }
long __xlx_apatb_param_imag_in_stream_buf_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_imag_in)->size();
std::vector<__cosim_s10__> __xlx_apatb_param_real_out_stream_buf;
long __xlx_apatb_param_real_out_stream_buf_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_real_out)->size();
std::vector<__cosim_s10__> __xlx_apatb_param_imag_out_stream_buf;
long __xlx_apatb_param_imag_out_stream_buf_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_imag_out)->size();
// print size Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_size, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_size);
    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_size, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.size_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_size, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
fft_hw_stub(__xlx_apatb_param_real_in, __xlx_apatb_param_imag_in, __xlx_apatb_param_real_out, __xlx_apatb_param_imag_out, __xlx_apatb_param_size);
CodeState = DUMP_OUTPUTS;
long __xlx_apatb_param_real_in_stream_buf_final_size = __xlx_apatb_param_real_in_stream_buf_size - ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_real_in)->size();

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_real_in_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_real_in_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_real_in_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_real_in_stream_buf_final_size; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_real_in_stream_buf[j])[0*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_real_in_stream_buf[j])[0*2+1];
sc_bv<64> __xlx_tmp_0_lv = __xlx_tmp_lv.range(63, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_real_in_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_1_lv = __xlx_tmp_lv.range(71, 64);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_real_in_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<56> __xlx_tmp_2_lv = __xlx_tmp_lv.range(127, 72);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_real_in_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_real_in_stream_buf_final_size, &tcl_file.real_in_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_real_in_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_real_in_stream_buf_final_size, &tcl_file.real_in_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_real_in_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_real_in_stream_buf_final_size, &tcl_file.real_in_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_real_in_V_last_V, __xlx_sprintf_buffer.data());

// dump stream ingress status to file

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_real_in_V_data_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_real_in_stream_buf_final_size > 0) {
  long real_in_V_data_V_stream_ingress_size = __xlx_apatb_param_real_in_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", real_in_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_real_in_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_real_in_stream_buf_final_size; j != e; j++) {
    real_in_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", real_in_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_real_in_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long real_in_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", real_in_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_real_in_V_data_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_real_in_V_data_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_real_in_V_keep_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_real_in_stream_buf_final_size > 0) {
  long real_in_V_keep_V_stream_ingress_size = __xlx_apatb_param_real_in_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", real_in_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_real_in_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_real_in_stream_buf_final_size; j != e; j++) {
    real_in_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", real_in_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_real_in_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long real_in_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", real_in_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_real_in_V_keep_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_real_in_V_keep_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_real_in_V_last_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_real_in_stream_buf_final_size > 0) {
  long real_in_V_last_V_stream_ingress_size = __xlx_apatb_param_real_in_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", real_in_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_real_in_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_real_in_stream_buf_final_size; j != e; j++) {
    real_in_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", real_in_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_real_in_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long real_in_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", real_in_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_real_in_V_last_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_real_in_V_last_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_real_in_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_real_in_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_real_in_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_real_in_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_real_in_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_real_in_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_real_in_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_real_in_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_real_in_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_real_in_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_real_in_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_real_in_V_last_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_imag_in_stream_buf_final_size = __xlx_apatb_param_imag_in_stream_buf_size - ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_imag_in)->size();

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_imag_in_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_imag_in_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_imag_in_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_imag_in_stream_buf_final_size; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_imag_in_stream_buf[j])[0*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_imag_in_stream_buf[j])[0*2+1];
sc_bv<64> __xlx_tmp_0_lv = __xlx_tmp_lv.range(63, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_imag_in_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_1_lv = __xlx_tmp_lv.range(71, 64);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_imag_in_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<56> __xlx_tmp_2_lv = __xlx_tmp_lv.range(127, 72);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_imag_in_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_imag_in_stream_buf_final_size, &tcl_file.imag_in_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_imag_in_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_imag_in_stream_buf_final_size, &tcl_file.imag_in_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_imag_in_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_imag_in_stream_buf_final_size, &tcl_file.imag_in_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_imag_in_V_last_V, __xlx_sprintf_buffer.data());

// dump stream ingress status to file

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_imag_in_V_data_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_imag_in_stream_buf_final_size > 0) {
  long imag_in_V_data_V_stream_ingress_size = __xlx_apatb_param_imag_in_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", imag_in_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_imag_in_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_imag_in_stream_buf_final_size; j != e; j++) {
    imag_in_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", imag_in_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_imag_in_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long imag_in_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", imag_in_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_imag_in_V_data_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_imag_in_V_data_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_imag_in_V_keep_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_imag_in_stream_buf_final_size > 0) {
  long imag_in_V_keep_V_stream_ingress_size = __xlx_apatb_param_imag_in_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", imag_in_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_imag_in_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_imag_in_stream_buf_final_size; j != e; j++) {
    imag_in_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", imag_in_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_imag_in_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long imag_in_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", imag_in_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_imag_in_V_keep_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_imag_in_V_keep_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_imag_in_V_last_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_imag_in_stream_buf_final_size > 0) {
  long imag_in_V_last_V_stream_ingress_size = __xlx_apatb_param_imag_in_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", imag_in_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_imag_in_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_imag_in_stream_buf_final_size; j != e; j++) {
    imag_in_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", imag_in_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_imag_in_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long imag_in_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", imag_in_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_imag_in_V_last_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_imag_in_V_last_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_imag_in_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_imag_in_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_imag_in_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_imag_in_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_imag_in_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_imag_in_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_imag_in_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_imag_in_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_imag_in_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_imag_in_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_imag_in_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_imag_in_V_last_V, __xlx_sprintf_buffer.data());
}
//********************** dump C output stream *******************
long __xlx_apatb_param_real_out_stream_buf_final_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_real_out)->size() - __xlx_apatb_param_real_out_stream_buf_size;
{
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_real_out)->empty())
    __xlx_apatb_param_real_out_stream_buf.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_real_out)->read());
  for (int i = 0; i < __xlx_apatb_param_real_out_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_real_out)->write(__xlx_apatb_param_real_out_stream_buf[i]);
  }

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_real_out_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_real_out_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_real_out_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_real_out_stream_buf_final_size; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_real_out_stream_buf[__xlx_apatb_param_real_out_stream_buf_size+j])[0*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_real_out_stream_buf[__xlx_apatb_param_real_out_stream_buf_size+j])[0*2+1];
sc_bv<64> __xlx_tmp_0_lv = __xlx_tmp_lv.range(63, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_real_out_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_1_lv = __xlx_tmp_lv.range(71, 64);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_real_out_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<56> __xlx_tmp_2_lv = __xlx_tmp_lv.range(127, 72);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_real_out_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_real_out_stream_buf_final_size, &tcl_file.real_out_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_real_out_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_real_out_stream_buf_final_size, &tcl_file.real_out_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_real_out_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_real_out_stream_buf_final_size, &tcl_file.real_out_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_real_out_V_last_V, __xlx_sprintf_buffer.data());
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_real_out_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_real_out_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_real_out_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_real_out_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_real_out_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_real_out_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_real_out_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_real_out_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_real_out_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_real_out_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_real_out_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_real_out_V_last_V, __xlx_sprintf_buffer.data());
}
//********************** dump C output stream *******************
long __xlx_apatb_param_imag_out_stream_buf_final_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_imag_out)->size() - __xlx_apatb_param_imag_out_stream_buf_size;
{
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_imag_out)->empty())
    __xlx_apatb_param_imag_out_stream_buf.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_imag_out)->read());
  for (int i = 0; i < __xlx_apatb_param_imag_out_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_imag_out)->write(__xlx_apatb_param_imag_out_stream_buf[i]);
  }

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_imag_out_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_imag_out_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_imag_out_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_imag_out_stream_buf_final_size; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_imag_out_stream_buf[__xlx_apatb_param_imag_out_stream_buf_size+j])[0*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_imag_out_stream_buf[__xlx_apatb_param_imag_out_stream_buf_size+j])[0*2+1];
sc_bv<64> __xlx_tmp_0_lv = __xlx_tmp_lv.range(63, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_imag_out_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_1_lv = __xlx_tmp_lv.range(71, 64);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_imag_out_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<56> __xlx_tmp_2_lv = __xlx_tmp_lv.range(127, 72);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_imag_out_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_imag_out_stream_buf_final_size, &tcl_file.imag_out_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_imag_out_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_imag_out_stream_buf_final_size, &tcl_file.imag_out_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_imag_out_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_imag_out_stream_buf_final_size, &tcl_file.imag_out_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_imag_out_V_last_V, __xlx_sprintf_buffer.data());
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_imag_out_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_imag_out_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_imag_out_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_imag_out_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_imag_out_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_imag_out_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_imag_out_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_imag_out_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_imag_out_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_imag_out_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_imag_out_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_imag_out_V_last_V, __xlx_sprintf_buffer.data());
}CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
