{ config }:
{
  tsserver.enable = true;
  tslint.configFile = "tslint.json";
  languageserver = {
    golang = {
      command = "go-langserver";
      filetypes = [ "go" ];
      initializationOptions = {
        gocodeCompletionEnabled = true;
        diagnosticsEnabled = true;
        lintTool = "golint";
      };
    };
  };
  python.pythonPath = "python3";
  rust-analyzer.serverPath = "${config.home.homeDirectory}/.cargo/bin/ra_lsp_server";
}
