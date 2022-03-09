local autopairs_status_ok, aupairs = pcall(require, "nvim-autopairs")
if autopairs_status_ok then
    aupairs.setup({
        disable_filetyppe = { "TelescopePrompt", "vim" },
        check_ts = true,
    })

    -- auto insert on methods ()
    local cmp_aupairs = require("nvim-autopairs.completion.cmp")
    local cmp = require("cmp")
    cmp.event:on("confirm_done", cmp_aupairs.on_confirm_done({ map_char = { tex = ''}}))

    cmp_aupairs.lisp[#cmp_aupairs.lisp+1] = "racket"
end

