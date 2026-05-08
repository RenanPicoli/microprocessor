#ifndef ASCII_POINTS_H
    #include "ascii_points.h"
#endif


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

    // itera sobre os caracteres c
    for (int register c = 0; c < ASCII_COUNT; c++)
    {
        //count e a quantidade de pixels coloridos para esse char
        uint32_t register count = 0;
        // itera sobre as linhas y do char
        for (int register y = 0; y < FONT_HEIGHT; y++)
        {
            uint32_t register row = font_bitmap[c][y];
            //itera sobre as colunas x do char
            for (int register x = 0; x < FONT_WIDTH; x++)
            {
                if (row & (1 << (7 - x)))// testa se a posicao (x,y) e colorida
                {
                    // acrescenta ao final de glyph_points o ponto (x,y)
                    glyph_points[c][count].x = x;
                    glyph_points[c][count].y = y;
                    count++;
                }
            }
        }
        // atualiza glyphs: numero de pontos seguido de ponteiro para a "lista" de pontos
        glyphs[c].count = count;
        glyphs[c].points = glyph_points[c];
    }
    // atualiza initialized para nao ter de repetir esse processo
    initialized = 1;
}

const Glyph* ascii_get_glyph(char c)
{
    ascii_init();

    if (c < ASCII_FIRST || c > ASCII_LAST)
        return &glyphs[0]; // retorna SPACE

    return &glyphs[c - ASCII_FIRST];
}