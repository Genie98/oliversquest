draw_self();                         // Draw the Sign Sprites

if (trigger == 1){                   // if the trigger is on
                                      // this section is to draw the black shadow font
    draw_set_alpha(0.7);              // set the font to 30% transparant
    draw_set_color(c_black);          // the font color, black
    draw_set_halign(fa_center);       // the horizontal align, center
    draw_set_valign(fa_bottom);       // the vertical align, bottom
    draw_set_font(fSign);        // font to use, fntDefault
    draw_text (x+1,y-5+1,textToShow); // draw textToShow
// the magic number -5- is how hight your font from the origin of the sprites and
// the x+1 and y+1 is one pixel away to the right and down from the original font
   
                                      // this section to draw the font
    draw_set_alpha(1);                // set the font to 100% visible
    draw_set_color(c_black);          // same as above
    draw_set_halign(fa_center);
    draw_set_valign(fa_bottom);
    draw_set_font(fSign);
    draw_text (x,y-5,textToShow);

    }