

.PHONY: docs
docs:
	@echo "Building docs..."
	@mdbook build docs
	@echo "Done."

.PHONY: docs-serve
docs-serve:
	@echo "Serving docs..."
	@mdbook serve --open docs
	@echo "Done."

.PHONY: docs-clean
docs-clean:
	@echo "Cleaning docs..."
	@rm -rf docs/book
	@echo "Done."

freeze:
	@echo "Freezing requirements for Python..."
	@pip freeze > requirements.txt
	@echo "Done."