#ifndef FIRSTDLL_H_
#define FIRSTDLL_H_
#include <iostream>


#if BUILDING_DLL
#define FIRSTDLL __declspec(dllexport)
#else
#define FIRSTDLL __declspec(dllimport)
#endif

void FIRSTDLL hello();

#endif