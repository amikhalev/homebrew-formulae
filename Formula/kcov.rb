class Kcov < Formula
  desc "Code coverage tool for compiled programs, Python and Bash"
  homepage "http://simonkagstrom.github.com/kcov/index.html"

  head "https://github.com/SimonKagstrom/kcov.git"
  stable do
    url "https://github.com/SimonKagstrom/kcov/archive/v31.tar.gz"
    sha256 "0f36a46ada2dcdc297f2a4deed1f910b8f3fac801eb22f4d4c8f7abfcada3f91"
  end

  depends_on "cmake" => :build
  depends_on "python" => :build

  def install
    system "cmake", ".", *std_cmake_args, "-DSPECIFY_RPATH=1"
    system "make", "install"
  end

  test do
    system "#{bin}/kcov"
  end
end
