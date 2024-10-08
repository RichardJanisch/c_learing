///// libs /////

///// includes ///// 

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <time.h>
#include <sys/time.h>
#include <pthread.h>
#include <signal.h> 
#include <errno.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <sys/resource.h>
#include <pcap.h>
#include <netinet/in.h>
#include <ifaddrs.h>
#include <netdb.h>


#ifndef NI_MAXHOST
#define NI_MAXHOST 1025
#endif

#include "/home/testus/repos/c_learing/get_started/dev/30_dep/libvinvimini/include/vincimini_common.h"
#include "/home/testus/repos/c_learing/get_started/dev/30_dep/libvinvimini/include/vincimini_json.h"
#include "/home/testus/repos/c_learing/get_started/dev/30_dep/libvinvimini/include/vincimini_btree.h"
#include "/home/testus/repos/c_learing/get_started/dev/30_dep/libvinvimini/include/vincimini_list.h"

///// defines ///// 

#ifndef nullptr
    #define nullptr NULL
#endif

#ifndef SOCKET
typedef int SOCKET;
#endif

#ifndef INVALID_SOCKET
    #define INVALID_SOCKET	(-1)
#endif

#define SEC_TO_UNIX_EPOCH 11644473600LL#

//

//// typedefs / structs ////

typedef struct NetworkInterfaceEntry_s
{
    char name[256];
    char ip_address[16];
} 
NetworkInterfaceEntry_t;

typedef struct NetworkInterface_s
{
    NetwIntEntry_tp *entries;
    size_t entry_count;
    size_t entry_capacity;
} 
NetworkInterface_t;

typedef void *NetwInt_tp;
typedef void *NetwIntEntry_tp;

///// global vars /////

///// static vars /////
   
//// prototypes ////

NetwInt_tp NetworkInterface_init(void);
void NetworkInterface_cleanup(NetwInt_tp pNetInt);
NetwIntEntry_tp NetworkInterface_initEntry(void);

///// functions /////

int main() 
{
    NetwInt_tp *pNetInt;
    pNetInt = NetworkInterface_init();

    if (pNetInt == nullptr) 
    {
        return -1;
    }
    
    return 0;
}

// public functions

NetwInt_tp NetworkInterface_init(void)
{
    NetwInt_tp pNetInt;

    pNetInt = (NetwInt_tp) calloc(1, sizeof(NetworkInterface_t));

    if (pNetInt == nullptr)
    {
        return nullptr;
    }

    return pNetInt;
}

void NetworkInterface_cleanup(NetwInt_tp pNetInt)
{
    if (pNetInt == nullptr)
    {
        return;
    }

    free(pNetInt);
    return;
}

// private functions

NetwIntEntry_tp NetworkInterface_initEntry(void)
{
    NetworkInterfaceEntry_t *entry = (NetworkInterfaceEntry_t *) calloc(1, sizeof(NetworkInterfaceEntry_t));
    
    if (entry == nullptr)
    {
        return nullptr;
    }

    struct ifaddrs *ifaddr, *ifa;
    int family, s;
    char host[NI_MAXHOST];

    if (getifaddrs(&ifaddr) == -1) 
    {
        free(entry);
        return nullptr;
    }

    for (ifa = ifaddr; ifa != NULL; ifa = ifa->ifa_next) 
    {
        if (ifa->ifa_addr == NULL)
            continue;

        family = ifa->ifa_addr->sa_family;

        if (family == AF_INET) 
        {
            s = getnameinfo(ifa->ifa_addr, sizeof(struct sockaddr_in),
                            host, NI_MAXHOST, NULL, 0, NI_NUMERICHOST);
            if (s != 0) 
            {
                freeifaddrs(ifaddr);
                free(entry);
                return nullptr;
            }

            strncpy(entry->name, ifa->ifa_name, sizeof(entry->name) - 1);
            strncpy(entry->ip_address, host, sizeof(entry->ip_address) - 1);
            break;
        }
    }

    freeifaddrs(ifaddr);
    return (NetwIntEntry_tp) entry;
}
