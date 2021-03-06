DEST = xex/
SRC = src/
BINS = xex/coarse_vscroll_dlist.xex \
	xex/coarse_no_scroll_dlist.xex \
	xex/coarse_scroll_down.xex \
	xex/coarse_scroll_up.xex \
	xex/coarse_scroll_left.xex \
	xex/coarse_scroll_right.xex \
	xex/coarse_scroll_2d.xex \
	xex/fine_vscroll_dlist.xex \
	xex/fine_vscroll_4.xex \
	xex/fine_vscroll_better_dlist.xex \
	xex/fine_scroll_down.xex \
	xex/fine_scroll_up.xex \
	xex/memory_layout_hscroll.xex \
	xex/fine_hscroll_dlist.xex \
	xex/fine_hscroll_6.xex \
	xex/fine_scroll_left.xex \
	xex/fine_scroll_right.xex \
	xex/fine_scroll_right_wide.xex \
	xex/fine_scroll_right_wide_dli.xex \
	xex/fine_scroll_2d_dlist.xex \
	xex/fine_scroll_2d_joystick.xex \
	xex/no_scrolling_dlist.xex \
	xex/vertical_scrolling_dlist.xex

# undefine this to get extra debugging files during assembly
# DEBUG_FILES = -L$<.var -g$<.lst

.PHONY: png
.SUFFIXES: .s .xex

# FIXME: why can't I get suffix rules to work?
# %.xex: %.s
# 	atasm -mae -Isrc -o$@ -L$<.var -g$<.lst $<
# .s.xex:
# 	atasm -mae -Isrc -o$@ $(DEBUG_FILES) $<

all: $(BINS)

xex/coarse_no_scroll_dlist.xex: src/coarse_no_scroll_dlist.s src/util_font.s src/util_scroll.s src/font_data_antic4.s
	atasm -mae -Isrc -o$@ $(DEBUG_FILES) $<

xex/coarse_scroll_down.xex: src/coarse_scroll_down.s src/util_font.s src/util_scroll.s src/font_data_antic4.s
	atasm -mae -Isrc -o$@ $(DEBUG_FILES) $<

xex/coarse_scroll_up.xex: src/coarse_scroll_up.s src/util_font.s src/util_scroll.s src/font_data_antic4.s
	atasm -mae -Isrc -o$@ $(DEBUG_FILES) $<

xex/coarse_scroll_left.xex: src/coarse_scroll_left.s src/util_font.s src/util_scroll.s src/font_data_antic4.s
	atasm -mae -Isrc -o$@ $(DEBUG_FILES) $<

xex/coarse_scroll_right.xex: src/coarse_scroll_right.s src/util_font.s src/util_scroll.s src/font_data_antic4.s
	atasm -mae -Isrc -o$@ $(DEBUG_FILES) $<

xex/coarse_scroll_2d.xex: src/coarse_scroll_2d.s src/util_font.s src/util_scroll.s src/font_data_antic4.s
	atasm -mae -Isrc -o$@ $(DEBUG_FILES) $<

xex/fine_vscroll_dlist.xex: src/fine_vscroll_dlist.s src/util_font.s src/util_scroll.s src/font_data_antic4.s
	atasm -mae -Isrc -o$@ $(DEBUG_FILES) $<

xex/fine_vscroll_4.xex: src/fine_vscroll_4.s src/util_font.s src/util_scroll.s src/font_data_antic4.s
	atasm -mae -Isrc -o$@ $(DEBUG_FILES) $<

xex/fine_vscroll_better_dlist.xex: src/fine_vscroll_better_dlist.s src/util_font.s src/util_scroll.s src/font_data_antic4.s
	atasm -mae -Isrc -o$@ $(DEBUG_FILES) $<

xex/fine_scroll_down.xex: src/fine_scroll_down.s src/util_font.s src/util_scroll.s src/font_data_antic4.s
	atasm -mae -Isrc -o$@ $(DEBUG_FILES) $<

xex/fine_scroll_up.xex: src/fine_scroll_up.s src/util_font.s src/util_scroll.s src/font_data_antic4.s
	atasm -mae -Isrc -o$@ $(DEBUG_FILES) $<

xex/memory_layout_hscroll.xex: src/memory_layout_hscroll.s src/util_font.s src/util_scroll.s src/font_data_antic4.s
	atasm -mae -Isrc -o$@ $(DEBUG_FILES) $<

xex/fine_hscroll_dlist.xex: src/fine_hscroll_dlist.s src/util_font.s src/util_scroll.s src/font_data_antic4.s
	atasm -mae -Isrc -o$@ $(DEBUG_FILES) $<

xex/fine_hscroll_6.xex: src/fine_hscroll_6.s src/util_font.s src/util_scroll.s src/font_data_antic4.s
	atasm -mae -Isrc -o$@ $(DEBUG_FILES) $<

xex/fine_scroll_left.xex: src/fine_scroll_left.s src/util_font.s src/util_scroll.s src/font_data_antic4.s
	atasm -mae -Isrc -o$@ $(DEBUG_FILES) $<

xex/fine_scroll_right.xex: src/fine_scroll_right.s src/util_font.s src/util_scroll.s src/font_data_antic4.s
	atasm -mae -Isrc -o$@ $(DEBUG_FILES) $<

xex/fine_scroll_right_wide.xex: src/fine_scroll_right_wide.s src/util_font.s src/util_scroll.s src/font_data_antic4.s
	atasm -mae -Isrc -o$@ $(DEBUG_FILES) $<

xex/fine_scroll_right_wide_dli.xex: src/fine_scroll_right_wide_dli.s src/util_font.s src/util_scroll.s src/font_data_antic4.s
	atasm -mae -Isrc -o$@ $(DEBUG_FILES) $<

xex/fine_scroll_2d_dlist.xex: src/fine_scroll_2d_dlist.s src/util_font.s src/util_scroll.s src/font_data_antic4.s
	atasm -mae -Isrc -o$@ $(DEBUG_FILES) $<

xex/fine_scroll_2d_joystick.xex: src/fine_scroll_2d_joystick.s src/util_font.s src/util_scroll.s src/font_data_antic4.s
	atasm -mae -Isrc -o$@ $(DEBUG_FILES) $<

xex/coarse_vscroll_dlist.xex: src/coarse_vscroll_dlist.s src/util_font.s src/util_scroll.s src/font_data_antic4.s
	atasm -mae -Isrc -o$@ $(DEBUG_FILES) $<

xex/no_scrolling_dlist.xex: src/no_scrolling_dlist.s src/util_font.s src/util_scroll.s src/font_data_antic4.s
	atasm -mae -Isrc -o$@ $(DEBUG_FILES) $<

xex/vertical_scrolling_dlist.xex: src/vertical_scrolling_dlist.s src/util_font.s src/util_scroll.s src/font_data_antic4.s
	atasm -mae -Isrc -o$@ $(DEBUG_FILES) $<

png:
	optipng *.png

clean:
	rm -f $(BINS) src/*.lst src/*.var
