// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xmatrixmultiplicationkernel.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMatrixmultiplicationkernel_CfgInitialize(XMatrixmultiplicationkernel *InstancePtr, XMatrixmultiplicationkernel_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMatrixmultiplicationkernel_Start(XMatrixmultiplicationkernel *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatrixmultiplicationkernel_ReadReg(InstancePtr->Control_BaseAddress, XMATRIXMULTIPLICATIONKERNEL_CONTROL_ADDR_AP_CTRL) & 0x80;
    XMatrixmultiplicationkernel_WriteReg(InstancePtr->Control_BaseAddress, XMATRIXMULTIPLICATIONKERNEL_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMatrixmultiplicationkernel_IsDone(XMatrixmultiplicationkernel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatrixmultiplicationkernel_ReadReg(InstancePtr->Control_BaseAddress, XMATRIXMULTIPLICATIONKERNEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMatrixmultiplicationkernel_IsIdle(XMatrixmultiplicationkernel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatrixmultiplicationkernel_ReadReg(InstancePtr->Control_BaseAddress, XMATRIXMULTIPLICATIONKERNEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMatrixmultiplicationkernel_IsReady(XMatrixmultiplicationkernel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatrixmultiplicationkernel_ReadReg(InstancePtr->Control_BaseAddress, XMATRIXMULTIPLICATIONKERNEL_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMatrixmultiplicationkernel_Continue(XMatrixmultiplicationkernel *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatrixmultiplicationkernel_ReadReg(InstancePtr->Control_BaseAddress, XMATRIXMULTIPLICATIONKERNEL_CONTROL_ADDR_AP_CTRL) & 0x80;
    XMatrixmultiplicationkernel_WriteReg(InstancePtr->Control_BaseAddress, XMATRIXMULTIPLICATIONKERNEL_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XMatrixmultiplicationkernel_EnableAutoRestart(XMatrixmultiplicationkernel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatrixmultiplicationkernel_WriteReg(InstancePtr->Control_BaseAddress, XMATRIXMULTIPLICATIONKERNEL_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XMatrixmultiplicationkernel_DisableAutoRestart(XMatrixmultiplicationkernel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatrixmultiplicationkernel_WriteReg(InstancePtr->Control_BaseAddress, XMATRIXMULTIPLICATIONKERNEL_CONTROL_ADDR_AP_CTRL, 0);
}

void XMatrixmultiplicationkernel_Set_a(XMatrixmultiplicationkernel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatrixmultiplicationkernel_WriteReg(InstancePtr->Control_BaseAddress, XMATRIXMULTIPLICATIONKERNEL_CONTROL_ADDR_A_DATA, (u32)(Data));
    XMatrixmultiplicationkernel_WriteReg(InstancePtr->Control_BaseAddress, XMATRIXMULTIPLICATIONKERNEL_CONTROL_ADDR_A_DATA + 4, (u32)(Data >> 32));
}

u64 XMatrixmultiplicationkernel_Get_a(XMatrixmultiplicationkernel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatrixmultiplicationkernel_ReadReg(InstancePtr->Control_BaseAddress, XMATRIXMULTIPLICATIONKERNEL_CONTROL_ADDR_A_DATA);
    Data += (u64)XMatrixmultiplicationkernel_ReadReg(InstancePtr->Control_BaseAddress, XMATRIXMULTIPLICATIONKERNEL_CONTROL_ADDR_A_DATA + 4) << 32;
    return Data;
}

void XMatrixmultiplicationkernel_Set_b(XMatrixmultiplicationkernel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatrixmultiplicationkernel_WriteReg(InstancePtr->Control_BaseAddress, XMATRIXMULTIPLICATIONKERNEL_CONTROL_ADDR_B_DATA, (u32)(Data));
    XMatrixmultiplicationkernel_WriteReg(InstancePtr->Control_BaseAddress, XMATRIXMULTIPLICATIONKERNEL_CONTROL_ADDR_B_DATA + 4, (u32)(Data >> 32));
}

u64 XMatrixmultiplicationkernel_Get_b(XMatrixmultiplicationkernel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatrixmultiplicationkernel_ReadReg(InstancePtr->Control_BaseAddress, XMATRIXMULTIPLICATIONKERNEL_CONTROL_ADDR_B_DATA);
    Data += (u64)XMatrixmultiplicationkernel_ReadReg(InstancePtr->Control_BaseAddress, XMATRIXMULTIPLICATIONKERNEL_CONTROL_ADDR_B_DATA + 4) << 32;
    return Data;
}

void XMatrixmultiplicationkernel_Set_c(XMatrixmultiplicationkernel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatrixmultiplicationkernel_WriteReg(InstancePtr->Control_BaseAddress, XMATRIXMULTIPLICATIONKERNEL_CONTROL_ADDR_C_DATA, (u32)(Data));
    XMatrixmultiplicationkernel_WriteReg(InstancePtr->Control_BaseAddress, XMATRIXMULTIPLICATIONKERNEL_CONTROL_ADDR_C_DATA + 4, (u32)(Data >> 32));
}

u64 XMatrixmultiplicationkernel_Get_c(XMatrixmultiplicationkernel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatrixmultiplicationkernel_ReadReg(InstancePtr->Control_BaseAddress, XMATRIXMULTIPLICATIONKERNEL_CONTROL_ADDR_C_DATA);
    Data += (u64)XMatrixmultiplicationkernel_ReadReg(InstancePtr->Control_BaseAddress, XMATRIXMULTIPLICATIONKERNEL_CONTROL_ADDR_C_DATA + 4) << 32;
    return Data;
}

void XMatrixmultiplicationkernel_Set_size_n(XMatrixmultiplicationkernel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatrixmultiplicationkernel_WriteReg(InstancePtr->Control_BaseAddress, XMATRIXMULTIPLICATIONKERNEL_CONTROL_ADDR_SIZE_N_DATA, Data);
}

u32 XMatrixmultiplicationkernel_Get_size_n(XMatrixmultiplicationkernel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatrixmultiplicationkernel_ReadReg(InstancePtr->Control_BaseAddress, XMATRIXMULTIPLICATIONKERNEL_CONTROL_ADDR_SIZE_N_DATA);
    return Data;
}

void XMatrixmultiplicationkernel_Set_size_k(XMatrixmultiplicationkernel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatrixmultiplicationkernel_WriteReg(InstancePtr->Control_BaseAddress, XMATRIXMULTIPLICATIONKERNEL_CONTROL_ADDR_SIZE_K_DATA, Data);
}

u32 XMatrixmultiplicationkernel_Get_size_k(XMatrixmultiplicationkernel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatrixmultiplicationkernel_ReadReg(InstancePtr->Control_BaseAddress, XMATRIXMULTIPLICATIONKERNEL_CONTROL_ADDR_SIZE_K_DATA);
    return Data;
}

void XMatrixmultiplicationkernel_Set_size_m(XMatrixmultiplicationkernel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatrixmultiplicationkernel_WriteReg(InstancePtr->Control_BaseAddress, XMATRIXMULTIPLICATIONKERNEL_CONTROL_ADDR_SIZE_M_DATA, Data);
}

u32 XMatrixmultiplicationkernel_Get_size_m(XMatrixmultiplicationkernel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatrixmultiplicationkernel_ReadReg(InstancePtr->Control_BaseAddress, XMATRIXMULTIPLICATIONKERNEL_CONTROL_ADDR_SIZE_M_DATA);
    return Data;
}

void XMatrixmultiplicationkernel_InterruptGlobalEnable(XMatrixmultiplicationkernel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatrixmultiplicationkernel_WriteReg(InstancePtr->Control_BaseAddress, XMATRIXMULTIPLICATIONKERNEL_CONTROL_ADDR_GIE, 1);
}

void XMatrixmultiplicationkernel_InterruptGlobalDisable(XMatrixmultiplicationkernel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatrixmultiplicationkernel_WriteReg(InstancePtr->Control_BaseAddress, XMATRIXMULTIPLICATIONKERNEL_CONTROL_ADDR_GIE, 0);
}

void XMatrixmultiplicationkernel_InterruptEnable(XMatrixmultiplicationkernel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMatrixmultiplicationkernel_ReadReg(InstancePtr->Control_BaseAddress, XMATRIXMULTIPLICATIONKERNEL_CONTROL_ADDR_IER);
    XMatrixmultiplicationkernel_WriteReg(InstancePtr->Control_BaseAddress, XMATRIXMULTIPLICATIONKERNEL_CONTROL_ADDR_IER, Register | Mask);
}

void XMatrixmultiplicationkernel_InterruptDisable(XMatrixmultiplicationkernel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMatrixmultiplicationkernel_ReadReg(InstancePtr->Control_BaseAddress, XMATRIXMULTIPLICATIONKERNEL_CONTROL_ADDR_IER);
    XMatrixmultiplicationkernel_WriteReg(InstancePtr->Control_BaseAddress, XMATRIXMULTIPLICATIONKERNEL_CONTROL_ADDR_IER, Register & (~Mask));
}

void XMatrixmultiplicationkernel_InterruptClear(XMatrixmultiplicationkernel *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatrixmultiplicationkernel_WriteReg(InstancePtr->Control_BaseAddress, XMATRIXMULTIPLICATIONKERNEL_CONTROL_ADDR_ISR, Mask);
}

u32 XMatrixmultiplicationkernel_InterruptGetEnabled(XMatrixmultiplicationkernel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMatrixmultiplicationkernel_ReadReg(InstancePtr->Control_BaseAddress, XMATRIXMULTIPLICATIONKERNEL_CONTROL_ADDR_IER);
}

u32 XMatrixmultiplicationkernel_InterruptGetStatus(XMatrixmultiplicationkernel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMatrixmultiplicationkernel_ReadReg(InstancePtr->Control_BaseAddress, XMATRIXMULTIPLICATIONKERNEL_CONTROL_ADDR_ISR);
}

