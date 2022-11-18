local Popup = require("nui.popup")
local event = require("nui.utils.autocmd").event

local M = {}
local yoshi = {
    "             /＼  ／ヽ",
    "            {／￣￣￣ヽ!",
    "            ∠＿＿╋＿＿ｊ",
    " :w ヨシ!   / (.)八(.)  ヽ",
    "           ｛=/(人_)=|´￣)｀ヽ",
    "            ＼ { {_,ﾉ ﾉ   //~ `",
    "        ⊂￣ヽ_＞―――‐''’,〈   (＿)",
    "         `ヘ(＿ ィ r―‐γ   !",
    "              _,ﾉ j   |   |",
    "            ｛   ｛    ﾉ  /＼",
    "             ＼ス￣￣￣lしｲ＼ ＼",
    "            (￣ ）     j /   ＼_j＼",
    "             ￣￣     ( ｀ヽ   ＼__)",
    "                       ＼__ﾉ",
}

M.popup = Popup({
    focusable = false,
    border = {
        style = "rounded",
    },
    relative = "cursor",
    position = {
        row = -10,
        col = 10,
    },
    size = {
        width = 49,
        height = 14,
    },
})
function M.show()
    M.popup:mount()
    vim.fn.timer_start(2000, function()
        M.popup:unmount()
    end)

    vim.api.nvim_buf_set_lines(M.popup.bufnr, 0, 1, false, yoshi)
end

return M
