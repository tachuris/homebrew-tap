class Fresnel < Formula
  desc "Personal productivity app for tracking recurring practices and tasks"
  homepage "https://github.com/tachuris/fresnel"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.6.2/fresnel-darwin-arm64"
      sha256 "0bf6a8c2c012d279896093d327b2757e8572188d4b6fecaf94871d613e69ca59"
    end
    on_intel do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.6.2/fresnel-darwin-x64"
      sha256 "0afdfec7039a789d34992975cd58cc0a7211e8af0236c4d620f0bc46c85a7cdb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.6.2/fresnel-linux-arm64"
      sha256 "857b7b347a8fbdf7c46593d10d8b8d9ace021dd1651b0ef2893f8c9126f3090e"
    end
    on_intel do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.6.2/fresnel-linux-x64"
      sha256 "311a967fde1b8e9ff4c174b35a061c3f890888126f10fcbeef8a90d150bf036f"
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
