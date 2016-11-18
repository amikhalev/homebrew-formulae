class Kcov < Formula
  desc "Code coverage tool for compiled programs, Python and Bash"
  homepage "http://simonkagstrom.github.com/kcov/index.html"
  head "https://github.com/SimonKagstrom/kcov.git"

  depends_on "cmake" => :build

  def install
    system "cmake", ".", *std_cmake_args, "-DSPECIFY_RPATH=1"
    system "make", "install"
  end

  test do
    system "#{bin}/kcov"
  end
end
