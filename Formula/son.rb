class Son < Formula
  desc "Developer workspace launcher — open the right repo in the right workspace"
  homepage "https://github.com/abdussamet032/son"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/abdussamet032/son/releases/download/v1.0.0/son_1.0.0_darwin_arm64.tar.gz"
      sha256 "2e8655930d167cf52d6deb2f50caed418b9b9ee5ac5a0b696d4344adceb403f9"
    end

    on_intel do
      url "https://github.com/abdussamet032/son/releases/download/v1.0.0/son_1.0.0_darwin_amd64.tar.gz"
      sha256 "0346dcf6a5fea820d35582bae01dc015de7f3d1080011aa2eddb0b24b705078a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/abdussamet032/son/releases/download/v1.0.0/son_1.0.0_linux_arm64.tar.gz"
      sha256 "a2f8e7bb5235c8653f62554bff2bd434e5caec52f581b384ce6e64aecdcf75ed"
    end

    on_intel do
      url "https://github.com/abdussamet032/son/releases/download/v1.0.0/son_1.0.0_linux_amd64.tar.gz"
      sha256 "b3c3c0e922c436224009a84f2697d383725792d7e0040c3bcef8de53cd35a1c3"
    end
  end

  depends_on "fzf"

  def install
    bin.install "son"
  end

  test do
    assert_match "son 1.0.0", shell_output("#{bin}/son version")
  end
end
