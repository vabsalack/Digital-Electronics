////////////////////////////////////////////////////////////////////////////////
//   ____  ____  
//  /   /\/   /  
// /___/  \  /   
// \   \   \/    
//  \   \        Copyright (c) 2003-2004 Xilinx, Inc.
//  /   /        All Right Reserved. 
// /___/   /\   
// \   \  /  \  
//  \___\/\___\ 
////////////////////////////////////////////////////////////////////////////////

#ifndef H_workMmutiple__twobit__addition__tb__v_H
#define H_workMmutiple__twobit__addition__tb__v_H

#ifdef _MSC_VER
#pragma warning(disable: 4355)
#endif

#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif

class workMmutiple__twobit__addition__tb__v : public HSim__s5{
public: 
    workMmutiple__twobit__addition__tb__v(const char *instname);
    ~workMmutiple__twobit__addition__tb__v();
    void setDefparam();
    void constructObject();
    void moduleInstantiate(HSimConfigDecl *cfg);
    void connectSigs();
    void reset();
    virtual void archImplement();
    void paramAssign();
    HSim__s1 us[2];
    HSim__s3 uv[2];
    HSimVlogParam up[1];
};

#endif
