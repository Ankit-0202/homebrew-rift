class Rift < Formula
  desc "Statically typed, capability-aware language for configuration and automation"
  homepage "https://github.com/Ankit-0202/rift"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Ankit-0202/rift/releases/download/v0.1.0/rift-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "332c684a701c04be40fd878e675d0819a6fc12422be13668508b9f3711dc8203"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Ankit-0202/rift/releases/download/v0.1.0/rift-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "96ad37ba6b7fe5cda8d26cc11b4403e93523ef192c228f7c605be16ef2b66a97"
    end
  end

  def install
    bin.install "rift"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/rift --version")
  end
end
