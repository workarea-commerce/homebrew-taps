class Workareactl < Formula
  desc "workareactl"
  homepage "https://developer.workarea.com/"
  version "1.1.0"

  url "https://github.com/workarea-commerce/homebrew-taps/releases/download/1.1.0/workareactl-1.1.0.tar.gz"
  sha256 "428a08b1c71d1fa31e6db52fd62588848105899ad9cc759565795af9ca283999"

  bottle :unneeded

  def install
    host_os = RbConfig::CONFIG["host_os"]
    os =
      if (/darwin/ =~ host_os) != nil
        "darwin"
      elsif (/cygwin|mswin|mingw|bccwin|wince|emx/ =~ host_os) != nil
        "windows"
      elsif (/linux/ =~ host_os) != nil
        "linux"
      else
        abort("unkown os. only darwin, linux and windows are supported")
      end

    bin.install "workareactl-1.1.0-#{os}-amd64" => "workareactl"
  end
end
