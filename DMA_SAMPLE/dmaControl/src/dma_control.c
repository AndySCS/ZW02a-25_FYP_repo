#include "xaxidma.h"
#include "xparameters.h"

int main(){
	u32 a[] = {1,2,3,4,5,6,7,8};
	u32 status;

	XAxiDma_Config *myDmaConfig;
	XAxiDma myDma;
	myDmaConfig =  XAxiDma_LookupConfigBaseAddr(XPAR_AXI_DMA_0_BASEADDR);
	status = XAxiDma_CfgInitialize(&myDma, myDmaConfig);
	if(status != XST_SUCCESS){
			print("DMA init failed\n");
			return -1;
	}
	print("DMA init success\n");

	status =  XAxiDma_SimpleTransfer(&myDma, (u32)a, 8*sizeof(u32), XAXIDMA_DMA_TO_DEVICE);
	if(status != XST_SUCCESS){
		print("DMA transfer failed\n");
		return -1;
	}
	print("DMA transfer success\n");
}
