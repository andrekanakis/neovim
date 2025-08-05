-- lua/plugin-configs.lua

local CONFIG = {}

CONFIG["fzf-lua"] = {
  blines = {
    previewer = false,
  },
}

CONFIG["supermaven-nvim"] = {
  log_level = "off",
  ignore_filetypes = { "markdown" },
}

CONFIG["ruff"] = {
  filetypes = { "python" },
  -- disable hover
  on_attach = function(client, bufnr)
    client.server_capabilities.hoverProvider = false
  end,
}

-- basedpyright only for hover
CONFIG["basedpyright"] = {
  filetypes = { "python" },
  on_attach = function(client, bufnr)
    -- ensure hover stays on
    client.server_capabilities.hoverProvider = true
    -- disable everything else
    client.server_capabilities.definitionProvider = false
    client.server_capabilities.referencesProvider = false
    client.server_capabilities.implementationProvider = false
    client.server_capabilities.documentSymbolProvider = false
    client.server_capabilities.workspaceSymbolProvider = false
    client.server_capabilities.codeActionProvider = false
    client.server_capabilities.codeLensProvider = false
    client.server_capabilities.documentFormattingProvider = false
    client.server_capabilities.documentRangeFormattingProvider = false
    client.server_capabilities.renameProvider = false
    client.server_capabilities.signatureHelpProvider = false
    client.server_capabilities.completionProvider = false
    client.server_capabilities.documentHighlightProvider = false
    client.server_capabilities.foldingRangeProvider = false
    client.server_capabilities.colorProvider = false
    client.server_capabilities.executeCommandProvider = false
    client.server_capabilities.inlayHintProvider = false
  end,
}

return CONFIG
