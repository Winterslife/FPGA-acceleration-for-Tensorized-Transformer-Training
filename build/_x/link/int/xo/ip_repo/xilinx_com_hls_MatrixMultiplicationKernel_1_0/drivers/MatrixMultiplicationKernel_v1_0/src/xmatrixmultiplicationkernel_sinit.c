// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xmatrixmultiplicationkernel.h"

extern XMatrixmultiplicationkernel_Config XMatrixmultiplicationkernel_ConfigTable[];

#ifdef SDT
XMatrixmultiplicationkernel_Config *XMatrixmultiplicationkernel_LookupConfig(UINTPTR BaseAddress) {
	XMatrixmultiplicationkernel_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XMatrixmultiplicationkernel_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XMatrixmultiplicationkernel_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XMatrixmultiplicationkernel_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMatrixmultiplicationkernel_Initialize(XMatrixmultiplicationkernel *InstancePtr, UINTPTR BaseAddress) {
	XMatrixmultiplicationkernel_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMatrixmultiplicationkernel_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMatrixmultiplicationkernel_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XMatrixmultiplicationkernel_Config *XMatrixmultiplicationkernel_LookupConfig(u16 DeviceId) {
	XMatrixmultiplicationkernel_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMATRIXMULTIPLICATIONKERNEL_NUM_INSTANCES; Index++) {
		if (XMatrixmultiplicationkernel_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMatrixmultiplicationkernel_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMatrixmultiplicationkernel_Initialize(XMatrixmultiplicationkernel *InstancePtr, u16 DeviceId) {
	XMatrixmultiplicationkernel_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMatrixmultiplicationkernel_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMatrixmultiplicationkernel_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

