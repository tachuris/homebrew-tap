class Fresnel < Formula
  desc "Personal productivity app for tracking recurring practices and tasks"
  homepage "https://github.com/tachuris/fresnel"
  version "0.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.5/fresnel-darwin-arm64"
      sha256 "da180ed2c41c2f6eaed78ba1246e5a22aa619d942075c9ed22109c8d0920f7fd"
    end
    on_intel do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.5/fresnel-darwin-x64"
      sha256 "e0aa06ad8fe4c8c99a69ff6f2f13224d24d9c9cf2cc225ad81f5add6fdf58fa6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.5/fresnel-linux-arm64"
      sha256 "b576f6707413b09b9036b5de83e61969b6a5b22c5bdf64475dc6c5646da937f0"
    end
    on_intel do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.5/fresnel-linux-x64"
      sha256 "32caedbef985b16f670f7033a116e8870a3e67d4e994a2ff61bc33a3498f9b80"
    end
  end

  def install
    bin.install Dir["fresnel-*"].first => "fresnel"
    bin.install_symlink bin/"fresnel" => "fr"
  end

  test do
    assert_match "fresnel v#{version}", shell_output("#{bin}/fresnel --version")
    assert_match "fresnel v#{version}", shell_output("#{bin}/fr --version")
  end
end
