VERSION=1.1.5
TAG=pam-redhat-$(VERSION)

nothing:

tag:
	git tag $(TAG)

force-tag:
	git tag --force $(TAG)

dist:
	@rm -f $(TAG).tar.xz
	git archive --format=tar --prefix=$(TAG)/ $(TAG) | xz > $(TAG).tar.xz
	@echo "The archive is in $(TAG).tar.xz"
