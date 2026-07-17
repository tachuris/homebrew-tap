class Fresnel < Formula
  desc "Personal productivity app for tracking recurring practices and tasks"
  homepage "https://github.com/tachuris/fresnel"
  version "0.0.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.23/fresnel-darwin-arm64"
      sha256 "1ebcea27b4c852ce6a919b793d549cff4ab6ad0bfa91229143ced069a1c477e5"
    end
    on_intel do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.23/fresnel-darwin-x64"
      sha256 "2c5e2ca670bcb8898a97eb20c24b325b39f9638779cab3c3e00eeed54455521b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.23/fresnel-linux-arm64"
      sha256 "72da8780f762d88067190cfa5f98bd64383dd5dbef00436eef5cb32cf45a8d72"
    end
    on_intel do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.23/fresnel-linux-x64"
      sha256 "02e678da3622dbf6d98d83eb9307eb4fc7424db70cdde85741bfc19e4ffd8e32"
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
