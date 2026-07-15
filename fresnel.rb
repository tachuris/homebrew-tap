class Fresnel < Formula
  desc "Personal productivity app for tracking recurring practices and tasks"
  homepage "https://github.com/tachuris/fresnel"
  version "0.0.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.20/fresnel-darwin-arm64"
      sha256 "c65ae569387ef2c183fd8938c3c386f1695a82e51377fa7f8c86ce33f762415c"
    end
    on_intel do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.20/fresnel-darwin-x64"
      sha256 "b4b9dfca9736f197c58b00191db110b756dfe3163a369a0fbbc72e56d63dd284"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.20/fresnel-linux-arm64"
      sha256 "3f26d86d3e2c2ec30f13c9a5844e14502fffe28a167bf690c7e04e6e61c92951"
    end
    on_intel do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.20/fresnel-linux-x64"
      sha256 "5ee3b99a952853919bc8c3b7406910feaea932c7a85680cc4bee3961d3d6c81f"
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
