//function prototypes
void print_7segs(int n);
void write_w(int addr,int n);

//constants
#define FILTER_COEFFS_BASE_ADDR				0x00
#define FILTER_XN_BASE_ADDR						0x08
#define CACHE_BASE_ADDR 							0x10
#define INNER_PRODUCT_BASE_ADDR				0x20
#define VMAC_BASE_ADDR 								0x40
#define I2C_BASE_ADDR 								0x60
#define I2S_BASE_ADDR 								0x68
#define FILTER_OUTPUT_BASE_ADDR 			0x70
#define DESIRED_RESPONSE_BASE_ADDR 		0x71
#define FILTER_CTRL_STATUS_BASE_ADDR	0x72
#define CONVERTED_OUTPUT_BASE_ADDR		0x73
#define DISPLAY_7SEGS_BASE_ADDR				0x74
#define IRQ_CTRL_BASE_ADDR						0x80
#define INSTRUCTION_MEMORY_BASE_ADDR	0x100
#define PROGRAM_STACK_BASE_ADDR				0x200
