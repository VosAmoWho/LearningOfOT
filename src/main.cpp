
#include "emp-ot/client.h"
#include <iostream>

using namespace std;

int main(int argc, char **argv) {
    int port, party;
    parse_party_and_port(argv, 2, &party, &port);
    if (party == ALICE) {
        NetIO *io = new NetIO(nullptr, port);
        client_demo<NetIO, OTNP>(io, 2);
        delete io;
    } else {
        parse_party_and_port(argv, 2, &party, &port);
        NetIO *io = new NetIO("127.0.0.1", port);
        server_demo<NetIO, OTNP>(io, 2);
        delete io;
    }
}
