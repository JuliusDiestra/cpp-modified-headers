# cpp-modified-headers
Modified header files to use with OmniCppComplete and ctags

## How the modified header files were created?

```bash
# Copy real header files
cp -R /usr/include/c++ .
# Replace namespace std _GLIBCXX_VISIBILITY(default) by namespace std in all header files
cd c++/$GCC_VERSION
find . -type f | xargs sed -i 's/namespace std _GLIBCXX_VISIBILITY(default)/namespace std/'
# Create ctags
cd ../..
ctags -f gcc_${GCC_VERSION}_tags -R --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++ -I _GLIBCXX_NOEXCEPT c++/$GCC_VERSION

```

