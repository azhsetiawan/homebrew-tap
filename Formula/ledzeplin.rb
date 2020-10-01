class Ledzeplin < Formula
  desc "Zeplin multi account switcher"
  homepage "https://github.com/azhsetiawan/ledzeplin"
  url "https://github.com/azhsetiawan/ledzeplin/releases/download/v0.1.0/ledzeplin.tar.gz"
  sha256 "d1940818b8b708159108ae6d7f9f0e5d59bd65abebebfc0b6297dedc4922f5b5"
  license "MIT"

  bottle :unneeded

  def install
    bin.install "ledzeplin"
    bin.install "blackdog.scpt"
    bash_completion.install "completion/ledzeplin.bash" => "ledzeplin"
    zsh_completion.install  "completion/ledzeplin.zsh"  => "_ledzeplin"
  end

  test do
    system "#{bin}/ledzeplin", "help"
  end
end