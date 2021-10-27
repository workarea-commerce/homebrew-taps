class Workareactl < Formula
  desc "workareactl"
  homepage "https://developer.workarea.com/"
  version "1.2.2"

  url "https://github.com/workarea-commerce/homebrew-taps/releases/download/1.2.2/workareactl-1.2.2.tar.gz"
  sha256 "4f7da40c20c4ac27edbb0aec0d817966443b8b7e9dcfb5721a6c6c238809974e"

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

    bin.install "workareactl-1.2.2-#{os}-amd64" => "workareactl"
  end
end
