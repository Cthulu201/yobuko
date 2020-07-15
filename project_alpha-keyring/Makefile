V=20200715

PREFIX = /usr/local

install:
	install -dm755 $(DESTDIR)$(PREFIX)/share/pacman/keyrings/
	install -m0644 project_alpha{.gpg,-trusted,-revoked} $(DESTDIR)$(PREFIX)/share/pacman/keyrings/

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/share/pacman/keyrings/project_alpha{.gpg,-trusted,-revoked}
	rmdir -p --ignore-fail-on-non-empty $(DESTDIR)$(PREFIX)/share/pacman/keyrings/

dist:
	git archive --format=tar --prefix=project_alpha-keyring-$(V)/ $(V) | gzip -9 > project_alpha-keyring-$(V).tar.gz
	gpg --detach-sign --use-agent project_alpha-keyring-$(V).tar.gz

.PHONY: install uninstall dist
