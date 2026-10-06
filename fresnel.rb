class Fresnel < Formula
  desc "Personal productivity app for tracking recurring practices and tasks"
  homepage "https://github.com/tachuris/fresnel"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.6.1/fresnel-darwin-arm64"
      sha256 "e4f7cfb333fc3a22f8ca0316a442ca83f35f2ea41b9ccedb0816671ec623f5c1"
    end
    on_intel do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.6.1/fresnel-darwin-x64"
      sha256 "713bba7f884c5d8fc86a514dc3a08ddd30bfe9b14959ca5d70b013be07cb1a80"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.6.1/fresnel-linux-arm64"
      sha256 "eb4d331eadd5d637be4e410385598054699d14977feaf1fbac427c8de7061f6e"
    end
    on_intel do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.6.1/fresnel-linux-x64"
      sha256 "c697f013d3c3010d119ba804cc3f6d10ac12081b79c4bbd167b132f5d9829d03"
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
