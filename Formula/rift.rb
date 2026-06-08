class Rift < Formula
  desc "Statically typed language where a function's authority is written in its type"
  homepage "https://github.com/Ankit-0202/rift"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Ankit-0202/rift/releases/download/v0.1.0/rift-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "921922fed1d17009d47e5a9d491220bddac524e7ab48399fe22a070611ccf007"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Ankit-0202/rift/releases/download/v0.1.0/rift-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "44cbbcf8be5b5f653288423e4086474c49a89e92134e40b1f603d5dff9862228"
    end
  end

  def install
    bin.install "rift"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/rift --version")
  end
end
