cask "file-app" do
  version "0.1.0"
  sha256 "07e84772af40a80cd1d12b71f8c8ee9db093219d48e620a065e5d5cff65069c8"

  url "https://github.com/AM1010101/file-app-releases/releases/download/v#{version}/file-app-#{version}-macos-arm64.zip"
  name "File App"
  desc "Work with documents, spreadsheets and diagrams in local projects"
  homepage "https://github.com/AM1010101/file-app-releases"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "File App.app"
end
