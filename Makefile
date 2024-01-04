bin = "JYMacrosMacros"

build:
	swift build -c release --disable-sandbox
	cp ".build/release/JYMacrosMacros" "./macros/JYMacrosMacros"
clean:
	rm -rf .build
.PHONY: build clean

