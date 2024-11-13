// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XMATRIXMULTIPLICATIONKERNEL_H
#define XMATRIXMULTIPLICATIONKERNEL_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xmatrixmultiplicationkernel_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
} XMatrixmultiplicationkernel_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XMatrixmultiplicationkernel;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMatrixmultiplicationkernel_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMatrixmultiplicationkernel_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMatrixmultiplicationkernel_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMatrixmultiplicationkernel_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XMatrixmultiplicationkernel_Initialize(XMatrixmultiplicationkernel *InstancePtr, UINTPTR BaseAddress);
XMatrixmultiplicationkernel_Config* XMatrixmultiplicationkernel_LookupConfig(UINTPTR BaseAddress);
#else
int XMatrixmultiplicationkernel_Initialize(XMatrixmultiplicationkernel *InstancePtr, u16 DeviceId);
XMatrixmultiplicationkernel_Config* XMatrixmultiplicationkernel_LookupConfig(u16 DeviceId);
#endif
int XMatrixmultiplicationkernel_CfgInitialize(XMatrixmultiplicationkernel *InstancePtr, XMatrixmultiplicationkernel_Config *ConfigPtr);
#else
int XMatrixmultiplicationkernel_Initialize(XMatrixmultiplicationkernel *InstancePtr, const char* InstanceName);
int XMatrixmultiplicationkernel_Release(XMatrixmultiplicationkernel *InstancePtr);
#endif

void XMatrixmultiplicationkernel_Start(XMatrixmultiplicationkernel *InstancePtr);
u32 XMatrixmultiplicationkernel_IsDone(XMatrixmultiplicationkernel *InstancePtr);
u32 XMatrixmultiplicationkernel_IsIdle(XMatrixmultiplicationkernel *InstancePtr);
u32 XMatrixmultiplicationkernel_IsReady(XMatrixmultiplicationkernel *InstancePtr);
void XMatrixmultiplicationkernel_Continue(XMatrixmultiplicationkernel *InstancePtr);
void XMatrixmultiplicationkernel_EnableAutoRestart(XMatrixmultiplicationkernel *InstancePtr);
void XMatrixmultiplicationkernel_DisableAutoRestart(XMatrixmultiplicationkernel *InstancePtr);

void XMatrixmultiplicationkernel_Set_a(XMatrixmultiplicationkernel *InstancePtr, u64 Data);
u64 XMatrixmultiplicationkernel_Get_a(XMatrixmultiplicationkernel *InstancePtr);
void XMatrixmultiplicationkernel_Set_b(XMatrixmultiplicationkernel *InstancePtr, u64 Data);
u64 XMatrixmultiplicationkernel_Get_b(XMatrixmultiplicationkernel *InstancePtr);
void XMatrixmultiplicationkernel_Set_c(XMatrixmultiplicationkernel *InstancePtr, u64 Data);
u64 XMatrixmultiplicationkernel_Get_c(XMatrixmultiplicationkernel *InstancePtr);
void XMatrixmultiplicationkernel_Set_size_n(XMatrixmultiplicationkernel *InstancePtr, u32 Data);
u32 XMatrixmultiplicationkernel_Get_size_n(XMatrixmultiplicationkernel *InstancePtr);
void XMatrixmultiplicationkernel_Set_size_k(XMatrixmultiplicationkernel *InstancePtr, u32 Data);
u32 XMatrixmultiplicationkernel_Get_size_k(XMatrixmultiplicationkernel *InstancePtr);
void XMatrixmultiplicationkernel_Set_size_m(XMatrixmultiplicationkernel *InstancePtr, u32 Data);
u32 XMatrixmultiplicationkernel_Get_size_m(XMatrixmultiplicationkernel *InstancePtr);

void XMatrixmultiplicationkernel_InterruptGlobalEnable(XMatrixmultiplicationkernel *InstancePtr);
void XMatrixmultiplicationkernel_InterruptGlobalDisable(XMatrixmultiplicationkernel *InstancePtr);
void XMatrixmultiplicationkernel_InterruptEnable(XMatrixmultiplicationkernel *InstancePtr, u32 Mask);
void XMatrixmultiplicationkernel_InterruptDisable(XMatrixmultiplicationkernel *InstancePtr, u32 Mask);
void XMatrixmultiplicationkernel_InterruptClear(XMatrixmultiplicationkernel *InstancePtr, u32 Mask);
u32 XMatrixmultiplicationkernel_InterruptGetEnabled(XMatrixmultiplicationkernel *InstancePtr);
u32 XMatrixmultiplicationkernel_InterruptGetStatus(XMatrixmultiplicationkernel *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
