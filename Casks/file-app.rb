cask "file-app" do
  version "0.2.0"
  sha256 "d4c3013980acfc025ac8582512f2227a1d950738e098553843604a117c0a1764"

  url "https://github.com/AM1010101/file-app-releases/releases/download/v#{version}/file-app-#{version}-macos-arm64.zip"
  name "File App"
  desc "Work with documents, spreadsheets and diagrams in local projects"
  homepage "https://github.com/AM1010101/file-app-releases"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "File App.app"
end
