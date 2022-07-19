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

#ifndef H_workMmultiple__twobit__addition_H
#define H_workMmultiple__twobit__addition_H

#ifdef _MSC_VER
#pragma warning(disable: 4355)
#endif

#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif

class workMmultiple__twobit__addition : public HSim__s5{
public: 
    workMmultiple__twobit__addition(const char *instname);
    ~workMmultiple__twobit__addition();
    void setDefparam();
    void constructObject();
    void moduleInstantiate(HSimConfigDecl *cfg);
    void connectSigs();
    void reset();
    virtual void archImplement();
    void genModuleInstantiate(HSimConfigDecl *cfg);
    void genParamAssign();
    void genSetDefparam();
    void genParamValue(HSimConfigDecl *cfg);
    class cu0 : public HSim__s6 {
    public:
        cu0(workMmultiple__twobit__addition* arch);
        ~cu0();
        void constructObject();
        void moduleInstantiate(HSimConfigDecl *cfg);
        void setDefparam();
        void archImplement();
        void connectSigs();
        workMmultiple__twobit__addition* Arch;
        HSim::ValueS u1[1];
        cu0* u0;
    };
    cu0* u0;
    HSim__s1 us[4];
    HSimVlogParam up[1];
};

#endif
