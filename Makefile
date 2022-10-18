all: compile_dll

compile_dll:
	g++ -c -DBUILD_MY_DLL ./src/firstdll.cpp 
	g++ -shared -o ./lib/firstdll.dll firstdll.o -Wl,--out-implib,./lib/firstdll.a
compile_main:
	g++ -o main main.cpp -L. -lfirstdll
run:
	./main