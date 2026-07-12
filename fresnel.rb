class Fresnel < Formula
  desc "Personal productivity app for tracking recurring practices and tasks"
  homepage "https://github.com/tachuris/fresnel"
  version "0.0.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.15/fresnel-darwin-arm64"
      sha256 "83976dd2212d06701b488c6074df052d421001827689bf4c03c9ae7e0d532adc"
    end
    on_intel do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.15/fresnel-darwin-x64"
      sha256 "00fcd5d91c66a554a019eaec87d7953c048523a85941fd359c791d7bdfc1a781"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.15/fresnel-linux-arm64"
      sha256 "40bbcb28764279f71639e0ffda55ddedcb4abc2af346b0f022a7eb3b80395f50"
    end
    on_intel do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.15/fresnel-linux-x64"
      sha256 "a6c32642649ef20f1321065d7b19414031cb86bd5cb96cba94c22e00d9a84c24"
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
