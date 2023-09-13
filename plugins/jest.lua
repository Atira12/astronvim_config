return {
  {
    "David-Kunz/jester",
    event = 'BufEnter *.{ts,tsx}',
    opts = function(_, opts)
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
      })
      require('jester').setup({
        cmd = 'npm run test -- -t "$result" $file --runInBand --detectOpenHandles'
      })
    end
  },
}
