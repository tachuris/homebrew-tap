class Fresnel < Formula
  desc "Personal productivity app for tracking recurring practices and tasks"
  homepage "https://github.com/tachuris/fresnel"
  version "0.0.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.17/fresnel-darwin-arm64"
      sha256 "e69abf00168a5888b4ec06fa433c207a3d84f3f016442d3e62eea492a6e8ee8f"
    end
    on_intel do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.17/fresnel-darwin-x64"
      sha256 "06aaa3a7e82c466e4128865c6f4a1f7c262f5c8707242b878eb6a5fce8235649"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.17/fresnel-linux-arm64"
      sha256 "94cecd6c7c0bccc1d8766fcb5a10d579e01b76b729c106c99c2298df59c1083c"
    end
    on_intel do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.17/fresnel-linux-x64"
      sha256 "990963b2223cf270aa55e647640c235dba5a74a47266691ea7a54b48fb08b4b2"
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
