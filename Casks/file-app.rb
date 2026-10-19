cask "file-app" do
  version "0.1.0"
  sha256 "c120e287235295d45c341c38874b12952dbe3b13cfa47c669df7c88857aad3a9"

  url "https://github.com/AM1010101/file-app-releases/releases/download/v#{version}/file-app-#{version}-macos-arm64.zip"
  name "File App"
  desc "Work with documents, spreadsheets and diagrams in local projects"
  homepage "https://github.com/AM1010101/file-app-releases"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "File App.app"
end
