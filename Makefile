NAME=cmark
DPKG_NAME=$(NAME)-$(VERSION)
RELEASE=0
TMP_DIR=/tmp/$(NAME)
SRC_DIR=$(TMP_DIR)/src
DATA_DIR=$(TMP_DIR)/data
BUILD_DIR=$(TMP_DIR)/build
MAN_DIR=$(TMP_DIR)/man
GENERATOR=Unix Makefiles
MAINTAINER=hackers@qcode.co.uk
REMOTE_USER=debian.qcode.co.uk
REMOTE_HOST=debian.qcode.co.uk
REMOTE_DIR=debian.qcode.co.uk

.PHONY: all

all: check-version package upload clean

check: 
	@cmake --version > /dev/null || (echo "You need cmake to build this program: http://www.cmake.org/download/" && exit 1)

build: check 
	mkdir -p $(BUILD_DIR); \
	cd $(BUILD_DIR); \
	cmake .. -G "$(GENERATOR)"
	@make -C $(BUILD_DIR)

package: check check-version
	# Copy files to pristine temporary directory
	rm -rf $(TMP_DIR)
	mkdir $(TMP_DIR)
	curl --fail -K ~/.curlrc_github -L -o v$(VERSION).tar.gz https://api.github.com/repos/qcode-software/$(NAME)/tarball/v$(VERSION)
	tar --strip-components=1 -xzvf v$(VERSION).tar.gz -C $(TMP_DIR)

	fakeroot checkinstall -D --deldoc --backup=no --install=no --pkgname=$(DPKG_NAME) --pkgversion=$(VERSION) --pkgrelease=$(RELEASE) --pkglicense="PUBLIC" -A all -y --maintainer $(MAINTAINER) --reset-uids=yes --replaces none --conflicts none make install

install: build
	make -C $(BUILD_DIR) install

clean:
	rm -rf $(TEMP_DIR)
	rm -f $(NAME)*_all.deb
	rm -f v$(VERSION).tar.gz

upload: check-version
	scp $(DPKG_NAME)_$(VERSION)-$(RELEASE)_all.deb "$(REMOTE_USER)@$(REMOTE_HOST):$(REMOTE_DIR)/debs"	
	ssh $(REMOTE_USER)@$(REMOTE_HOST) reprepro -b $(REMOTE_DIR) includedeb jessie $(REMOTE_DIR)/debs/$(DPKG_NAME)_$(VERSION)-$(RELEASE)_all.deb

check-version:
ifndef VERSION
    $(error VERSION is undefined. Usage make VERSION=x.x.x)
endif
