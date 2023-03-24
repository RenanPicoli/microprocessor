//function prototypes
void print_7segs(int n);
void write_w(int addr,int n);
int  read_w(int addr);
void write_multiple(int src_addr,int dst_addr,int l);
void write_vector(int src_addr,int dst_addr);

int  dot_product(int A_ptr,int B_ptr,int l);
void multiply_add(int A_ptr,int B_ptr,int lambda);

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
