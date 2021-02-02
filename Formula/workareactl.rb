class Workareactl < Formula
  desc "workareactl"
  homepage "https://developer.workarea.com/"
  version "1.0.0"

  url "https://github.com/workarea-commerce/homebrew-taps/releases/download/1.0.0/workareactl-1.0.0.tar.gz"
  sha256 "39e5446a503bba0c545df27b9caa49acd7b8167e0b7eacb105eebd99ef7f76c4"

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

    bin.install "workareactl-1.0.0-#{os}-amd64" => "workareactl"
  end
end
