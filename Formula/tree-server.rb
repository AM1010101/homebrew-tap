class TreeServer < Formula
  desc "Browse and edit a local folder tree in your browser"
  homepage "https://github.com/AM1010101/file-app-releases"
  # Prebuilt, platform-independent runtime: server, built assets and locked
  # production dependencies. Homebrew supplies Node.
  url "https://github.com/AM1010101/file-app-releases/releases/download/v0.2.0/tree-server-0.2.0-runtime.tar.gz"
  sha256 "b87a97ad3151429f825d1e887c79244f2e93c98ac7853e7c25b1e603f1724957"
  license "PolyForm-Small-Business-1.0.0"

  head do
    url "https://github.com/AM1010101/tree-server.git", branch: "main"
  end

  depends_on "node"

  def install
    if build.head?
      # Build vendor/ and the view extensions, then keep only runtime files.
      system "npm", "ci", "--no-audit", "--no-fund"
      system "scripts/stage-server-runtime.sh", buildpath/"runtime"
      cd("runtime") { libexec.install Dir["*"] }
    else
      libexec.install Dir["*"]
    end
    (bin/"tree-server").write_env_script libexec/"server.js",
      PATH: "#{Formula["node"].opt_bin}:$PATH"
  end

  test do
    assert_match(/\d+\.\d+\.\d+/, shell_output("#{bin}/tree-server --version"))
  end
end
