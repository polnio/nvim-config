return {
  "kylechui/nvim-surround",
  event = "VeryLazy",
  config = true,
  keys = {
    { "ir", "i[", mode = "o" },
    { "ar", "a[", mode = "o" },
    { "ia", "i<", mode = "o" },
    { "aa", "a<", mode = "o" },
  }
}
