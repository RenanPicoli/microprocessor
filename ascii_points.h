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