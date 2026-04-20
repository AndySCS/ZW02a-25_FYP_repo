#include <stdlib.h>
#include "xil_types.h"
#include "xuartps.h"
#include "xparameters.h"
#include "sleep.h"

#define inputSize 8*783
/*total 50112 bit data need assign
 * C3C0 in hex
 * 115200 band rate
 * */
#define headerSize 1080
/*need confirm the imagine come in any header*/

int main(){
	u8 *inputData;
	u32 receivedBytes = 0;
	u32 totalReceivedBytes = 0;
	u32 transmittedBytes = 0;
	u32 totaltransmittedBytes = 0;
	u32 status;
	XUartPs_Config *myUartConfig;
	XUartPs myUart;

	inputData = malloc(sizeof(u8)*(inputSize));
	myUartConfig = XUartPs_LookupConfig(XPAR_PS7_UART_1_DEVICE_ID);
	status = XUartPs_CfgInitialize(&myUart, myUartConfig, myUartConfig->BaseAddress);
	if(status != XST_SUCCESS)
		print("Uart init failed... \n\r");
	status = XUartPs_SetBaudRate(&myUart, 115200);
	if(status != XST_SUCCESS)
			print("Baudrate init failed... \n\r");
	//Data transfer from computer to DDR
	while(totalReceivedBytes < inputSize){
		receivedBytes = XUartPs_Recv(&myUart, (u8*)&inputData[totalReceivedBytes], 100);
		totalReceivedBytes += receivedBytes;
	}

	//Debug test
	//for(int i; i<10; i++)
	//	xil_printf("%0x", inputData[i]);
	//Send data
	while(totaltransmittedBytes < inputSize){
			transmittedBytes = XUartPs_Send(&myUart, (u8*)&inputData[totaltransmittedBytes], 1);
			totaltransmittedBytes += transmittedBytes;
			usleep(2000);
		}


}
