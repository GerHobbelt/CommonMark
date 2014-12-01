NAME=cmark
RELEASE=0
TMP_DIR=/tmp/$(DPKG_NAME)
SRC_DIR=$(TMP_DIR)/src
DATA_DIR=$(TMP_DIR)/data
BUILD_DIR=$(TMP_DIR)/build
MAN_DIR=$(TMP_DIR)/man
GENERATOR=Unix Makefiles
MAINTAINER=hackers@qcode.co.uk
REMOTE_USER=qcode
REMOTE_HOST=debian.qcode.co.uk

.PHONY: all

all: check-version build package upload clean

check: 
	@cmake --version > /dev/null || (echo "You need cmake to build this program: http://www.cmake.org/download/" && exit 1)

build: check 
	mkdir -p $(BUILD_DIR); \
	cd $(BUILD_DIR); \
	cmake .. -G "$(GENERATOR)"
	@make -C $(BUILD_DIR)

package: check-version
	# Copy files to pristine temporary directory
	rm -rf $(TMP_DIR)
	mkdir $(TMP_DIR)
	curl --fail -K ~/.curlrc_github -L -o v$(VERSION).tar.gz https://api.github.com/repos/qcode-software/$(NAME)/tarball/v$(VERSION)
	tar --strip-components=1 -xzvf v$(VERSION).tar.gz -C $(TMP_DIR)

	fakeroot checkinstall -D --deldoc --backup=no --install=no --pkgname=$(NAME) --pkgversion=$(VERSION) --pkgrelease=$(RELEASE) --pkglicense="PRIVATE" -A all -y --maintainer $(MAINTAINER) --reset-uids=yes --requires "tcl8.5" --replaces none --conflicts none make install

install: build
	make -C $(BUILD_DIR) install

clean:
	rm -rf $(TEMP_DIR)
	rm -f $(NAME)*_all.deb
	rm -f v$(VERSION).tar.gz

upload: check-version
	scp $(NAME)_$(VERSION)-$(RELEASE)_all.deb "$(REMOTE_USER)@$(REMOTE_HOST):debs"	
	ssh $(REMOTE_USER)@$(REMOTE_HOST) reprepro includedeb squeeze debs/$(NAME)_$(VERSION)-$(RELEASE)_all.deb
	ssh $(REMOTE_USER)@$(REMOTE_HOST) reprepro includedeb wheezy debs/$(NAME)_$(VERSION)-$(RELEASE)_all.deb

check-version:
ifndef VERSION
    $(error VERSION is undefined. Usage make VERSION=x.x.x)
endif