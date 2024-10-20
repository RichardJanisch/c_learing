#include <stdint.h>


//// TCP/IP Server Error Codes ////



//// TCP/IP Server Msg Types //// 

//-------------------------------
//******* MSG_ACK *******
//-------------------------------
#define MSG_ACK 0x01
typedef struct msg_ack_s 
{
    uint8_t msgType;
    uint16_t identifier;
}
msg_ack_t;

//-------------------------------
//******* MSG_ERROR *******
//-------------------------------
#define MSG_ERROR 0x02
typedef struct msg_error_s
{
    uint8_t msgType;
    uint16_t identifier;
    uint8_t errorCode;
}
msg_error_t;

//-------------------------------
//******* MSG_GET_OBJECT *******
//-------------------------------
#define MSG_GET_OBJECT 0x04
typedef struct msg_get_object_s
{
    uint8_t MsgType;
    uint16_t Identifier;
    uint8_t ObjectID;
}
msg_get_object_t;


//-------------------------------
//******* MSG_SET_OBJECT *******
//-------------------------------
#define MSG_SET_OBJECT 0x05
typedef struct msg_set_object_s
{
    uint8_t MsgType;
    uint16_t Identifier;
    uint8_t ObjectID;
    uint8_t Value;
}
msg_set_object_t;


