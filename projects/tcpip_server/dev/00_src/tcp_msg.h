#include <stdint.h>
#ifndef TCP_MSG_H
#define TCP_MSG_H

//// TCP/IP Server Error Codes ////
typedef enum ERROR_CODES_e
{
    ERROR_NONE = 0x00,
    ERROR_INVALID_MSG_TYPE = 0x01,
    ERROR_INVALID_OBJECT_ID = 0x02,
    ERROR_INVALID_VALUE = 0x03,
    ERROR_INVALID_IDENTIFIER = 0x04,
    ERROR_INVALID_MSG_LENGTH = 0x05
}
ERROR_CODES_t;


//// TCP/IP Server Msg Types //// 

//-------------------------------
//******* MSG_ACK *******
//-------------------------------
#define MSG_ACK 0x01
typedef struct MSG_ACK_s 
{
    uint8_t msgType;
    uint16_t identifier;
}
MSG_ACK_t;

//-------------------------------
//******* MSG_ERROR *******
//-------------------------------
#define MSG_ERROR 0x02
typedef struct MSG_ERROR_s
{
    uint8_t msgType;
    uint16_t identifier;
    uint8_t errorCode;
}
MSG_ERROR_t;

//-------------------------------
//******* MSG_GET_OBJECT *******
//-------------------------------
#define MSG_GET_OBJECT 0x04
typedef struct MSG_GET_OBJECT_s
{
    uint8_t MsgType;
    uint16_t Identifier;
    uint8_t ObjectID;
}
MSG_GET_OBJECT_t;


//-------------------------------
//******* MSG_SET_OBJECT *******
//-------------------------------
#define MSG_SET_OBJECT 0x05
typedef struct MSG_SET_OBJECT_s
{
    uint8_t MsgType;
    uint16_t Identifier;
    uint8_t ObjectID;
    uint8_t Value;
}
MSG_SET_OBJECT_t;

//-------------------------------
#endif // TCP_MSG_H