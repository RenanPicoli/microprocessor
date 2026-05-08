#ifndef ASCII_POINTS_H
    #define ASCII_POINTS_H
#endif

#ifndef STDINT_H
    #include "stdint.h"
#endif

#define FONT_WIDTH   8
#define FONT_HEIGHT 12
#define ASCII_FIRST  32
#define ASCII_LAST  126
#define ASCII_COUNT (ASCII_LAST - ASCII_FIRST + 1)


/* Fonte bitmap 8x12 (apenas alguns caracteres exemplo) */
/* Cada caractere tem 12 bytes (1 byte por linha) */
static const uint32_t font_bitmap[ASCII_COUNT][FONT_HEIGHT] = {
    /* SPACE (32) */
    [0] = {
        0x00,0x00,0x00,0x00,0x00,0x00,
        0x00,0x00,0x00,0x00,0x00,0x00
    },

    /* '!' (33) */
    // [1] = {
    //     0x18,0x18,0x18,0x18,0x18,0x18,
    //     0x18,0x00,0x18,0x18,0x00,0x00
    // },

    /* 'A' (65) */
    [65 - ASCII_FIRST] = {
        0x18,
        0x24,
        0x24,
        0x42,
        0x42,
        0x7E,
        0x42,
        0x42,
        0x42,
        0x00,
        0x00,
        0x00
    },
};

typedef struct {
    uint32_t x;
    uint32_t y;
} Point;

typedef struct {
    uint32_t count;
    const Point *points;
} Glyph;

/* Retorna o glyph de um caractere ASCII */
const Glyph* ascii_get_glyph(char c);