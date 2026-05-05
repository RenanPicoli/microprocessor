#ifndef ASCII_POINTS_H
    #include "ascii_points.h"
#endif

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

#define MAX_POINTS (FONT_WIDTH * FONT_HEIGHT)

// Point glyph_points[ASCII_COUNT][MAX_POINTS];
Point (*const glyph_points_ptr)[ASCII_COUNT][MAX_POINTS] = (Point (*)[ASCII_COUNT][MAX_POINTS] )(0x3000000 << 2);
// para não precisar desreferenciar, facilitando o uso
#define glyph_points (*glyph_points_ptr)

// static Glyph glyphs[ASCII_COUNT];
Glyph (*const glyphs_ptr)[ASCII_COUNT] = (Glyph (*)[ASCII_COUNT] ) (0x2800000 << 2);
// para não precisar desreferenciar, facilitando o uso
#define glyphs (*glyphs_ptr)

static uint32_t initialized = 0;

static void ascii_init(void)
{
    if (initialized) return;

    for (int register c = 0; c < ASCII_COUNT; c++)
    {
        uint32_t register count = 0;

        for (int register y = 0; y < FONT_HEIGHT; y++)
        {
            uint32_t register row = font_bitmap[c][y];

            for (int register x = 0; x < FONT_WIDTH; x++)
            {
                if (row & (1 << (7 - x)))
                {
                    glyph_points[c][count].x = x;
                    glyph_points[c][count].y = y;
                    count++;
                }
            }
        }

        glyphs[c].count = count;
        glyphs[c].points = glyph_points[c];
    }

    initialized = 1;
}

const Glyph* ascii_get_glyph(char c)
{
    ascii_init();

    if (c < ASCII_FIRST || c > ASCII_LAST)
        return &glyphs[0]; // retorna SPACE

    return &glyphs[c - ASCII_FIRST];
}