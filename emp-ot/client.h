//
// Created by AmoWho Vos on 2019-04-01.
//
#include "emp-ot/emp-ot.h"
#include <emp-tool/emp-tool.h>
#include <iostream>

using namespace emp;

template<typename IO, template<typename> class T>
void client_demo(IO *io, int length) {
    block *data0 = new block[length];
    block *data1 = new block[length];

    data0[0] = makeBlock(1, 123);
    data0[1] = makeBlock(2, 456);

    data1[0] = makeBlock(3, 987);
    data1[1] = makeBlock(4, 654);

    io->sync();
    T<IO> *ot = new T<IO>(io);
    ot->send(data0, data1, length);
    io->flush();
}

template<typename IO, template<typename> class T>
void server_demo(IO *io, int length) {

    block *r = new block[length];
    bool *b = new bool[length];
    b[0] = true;
    b[1] = true;

    io->sync();

    T<IO> *ot = new T<IO>(io);
    ot->recv(r, b, length);
    io->flush();

    for (int i = 0; i < length; ++i) {
        printf("b[i] = %d\n",b[i]);
        if (b[i]) {
            printf("<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< \n");
            int *p = (int *) &r[i];
            printf("the result is %d\n", p[0]);
        } else {
            printf(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>   \n");
            int *p = (int *) &r[i];
            printf("the result is %d\n", p[0]);
        }
    }
}

