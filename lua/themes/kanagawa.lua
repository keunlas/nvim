-- https://github.com/rebelot/kanagawa.nvim
-- kanagawa kanagawa-wave kanagawa-dragon kanagawa-lotus
return {
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    cond = true,
    opts = {
      -- lotus wave dragon
      background = {
        dark = "dragon",
        light = "lotus"
      },
    },
  }
}
