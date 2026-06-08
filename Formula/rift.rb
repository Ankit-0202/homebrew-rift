class Rift < Formula
  desc "Statically typed language where a function's authority is written in its type"
  homepage "https://github.com/Ankit-0202/rift"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Ankit-0202/rift/releases/download/v0.1.0/rift-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "55260c745ad2255a86c44f3d80e37140171d299f823715bdfcf4cf62b6dc741a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Ankit-0202/rift/releases/download/v0.1.0/rift-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "92833c95bdaf1ffc08ff1e54646b7c3a4bfe1acfdc66714767cfd6c584cefe1b"
    end
  end

  def install
    bin.install "rift"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/rift --version")
  end
end
