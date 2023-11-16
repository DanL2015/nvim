return {
    "chadcat7/prism",
    events = {"UIEnter"},
    config = function()
        require("prism"):setup({
            currentTheme = "onedarker",
            reset = false,
        })
    end
}
