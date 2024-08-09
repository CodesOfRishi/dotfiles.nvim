-- ┏╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍┓
-- ╏ Comment-Box's command nomenclature                                                              ╏
-- ╏                                                                                                 ╏
-- ╏ CBxy(box|line)[n]                                                                               ╏
-- ╏                                                                                                 ╏
-- ╏ -> `CB` is for "Comment-Box".                                                                   ╏
-- ╏ -> `x` is for the position of the box or line (`l`: left, `c`: center, `r`: right).             ╏
-- ╏ -> `y` is for the text justification (`l`: left, `c`: center, `r`: right). For the box, it can  ╏
-- ╏ be `a` ("adapted"): the size of the box will be adapted to the size of the text (up to          ╏
-- ╏ `box_width`).                                                                                   ╏
-- ╏ -> `box` or `line` to choose if it applies to a box or a line.                                  ╏
-- ╏ -> `[n]` (optional) to apply a style from the catalog.                                          ╏
-- ┗╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍┛

return {
	"LudoPinelli/comment-box.nvim",
	opts = {
		box_width = 100,
	},
}
