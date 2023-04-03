#ifndef BSP_H
#define BSP_H

//constants

//peripheral base addresses
#define FILTER_COEFFS_BASE_ADDR			0x00
#define FILTER_XN_BASE_ADDR				0x08
#define CACHE_BASE_ADDR 				0x10
#define INNER_PRODUCT_BASE_ADDR			0x20
#define VMAC_BASE_ADDR 					0x40
#define I2C_BASE_ADDR 					0x60
#define I2S_BASE_ADDR 					0x68
#define FILTER_OUTPUT_BASE_ADDR 		0x70
#define DESIRED_RESPONSE_BASE_ADDR 		0x71
#define FILTER_CTRL_STATUS_BASE_ADDR	0x72
#define CONVERTED_OUTPUT_BASE_ADDR		0x73
#define DISPLAY_7SEGS_BASE_ADDR			0x74
#define IRQ_CTRL_BASE_ADDR				0x80
#define INSTRUCTION_MEMORY_BASE_ADDR	0x100
#define PROGRAM_STACK_BASE_ADDR			0x200

//peripheral offsets
#define FILTER_COEFFS_OFFSET			0x00
#define FILTER_XN_OFFSET				0x00
#define CACHE_OFFSET 					0x00
#define INNER_PRODUCT_A_OFFSET			0x00
#define INNER_PRODUCT_B_OFFSET			0x08
#define INNER_PRODUCT_RESULT_OFFSET		0x10
#define VMAC_A_OFFSET					0x00
#define VMAC_B_OFFSET					0x08
#define VMAC_LAMBDA_OFFSET				0x10
#define I2C_CR_OFFSET 					0x00
#define I2C_DR_OFFSET 					0x01
#define I2C_IRQ_CTRL_OFFSET 			0x04
#define I2S_CR_OFFSET 					0x00
#define I2S_DR_OFFSET 					0x01
#define I2S_SR_OFFSET 					0x02
#define I2S_IRQ_CTRL_OFFSET 			0x04
#define FILTER_OUTPUT_OFFSET 			0x00
#define DESIRED_RESPONSE_OFFSET  		0x00
#define FILTER_CTRL_STATUS_OFFSET 		0x00
#define CONVERTED_OUTPUT_OFFSET 		0x00
#define DISPLAY_7SEGS_OFFSET 			0x00
#define IRQ_CTRL_IRQ_PEND_OFFSET		0x00
#define IRQ_CTRL_IRQ_ACTIVE_OFFSET		0x01
#define IRQ_CTRL_IRQ_STARTED_OFFSET		0x02
#define IRQ_CTRL_IRQ_STATUS_OFFSET		0x03
#define IRQ_CTRL_IRQ_CURR_OUT_OFFSET	0x04
#define IRQ_CTRL_VECTOR_OFFSET			0x20
#define IRQ_CTRL_PRIORITIES_OFFSET		0x40
#define INSTRUCTION_MEMORY_OFFSET			0x00
#define PROGRAM_STACK_OFFSET				0x00

//I2C support
typedef struct{
    int num_words;
    int direction;
    
}I2C_Init_typedef;

#define I2C_WORDS_1 0<<8
#define I2C_WORDS_2 1<<8
#define I2C_WORDS_3 2<<8
#define I2C_WORDS_4 3<<8

#define I2C_DIRECTION_READ  0
#define I2C_DIRECTION_WRITE 1

#define I2C_EN 1<<10

//I2S support
typedef struct{
    int num_frames;
    int data_size;
    int lr_fifo_select;
}I2S_Init_typedef;

#define I2S_FIFO_SEL_LEFT   0<<7
#define I2S_FIFO_SEL_RIGHT  1<<7

#define I2S_DATA_SIZE_4BIT  0<<4
#define I2S_DATA_SIZE_8BIT  1<<4
#define I2S_DATA_SIZE_12BIT 2<<4
#define I2S_DATA_SIZE_16BIT 3<<4
#define I2S_DATA_SIZE_20BIT 4<<4
#define I2S_DATA_SIZE_24BIT 5<<4
#define I2S_DATA_SIZE_28BIT 6<<4
#define I2S_DATA_SIZE_32BIT 7<<4

#define I2S_NUM_FRAMES_INFINITE   0<<1
#define I2S_NUM_FRAMES_1   1<<1
#define I2S_NUM_FRAMES_2   2<<1
#define I2S_NUM_FRAMES_3   3<<1
#define I2S_NUM_FRAMES_4   4<<1
#define I2S_NUM_FRAMES_5   5<<1
#define I2S_NUM_FRAMES_6   6<<1
#define I2S_NUM_FRAMES_7   7<<1

#define I2S_EN 1<<0

//function prototypes
void print_7segs(int n);
void write_w(int addr,int n);
int  read_w(int addr);
void write_multiple(int src_addr,int dst_addr,int l);
void write_vector(int src_addr,int dst_addr);

int  dot_product(int A_ptr,int B_ptr,int l);
void multiply_add(int A_ptr,int B_ptr,int lambda);

//A is a matrix mxn
//v is a vector (nx1)
//dst_addr is the address for storing the resulting vector (mx1)
void linear_transformation(int A_ptr,int m,int v_ptr,int n,int dst_addr);
void filter_control(int cmd);

void I2C_Init(I2C_Init_typedef* i2c_init);
void I2C_Transmit(int addr,int data);

void I2S_Init(I2S_Init_typedef* i2sinit);
void I2S_Transmit(int addr,int data);

#endif
