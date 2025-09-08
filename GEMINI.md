# Gemini Code Assistant Context

## Project Overview

This project is the official documentation for Bazzite, a custom Fedora Atomic Desktop image focused on gaming. The documentation is built using MkDocs, a static site generator for project documentation. The source files are written in Markdown.

The project uses a variety of MkDocs plugins to enhance the documentation, including:
- `i18n` for internationalization
- `search` for full-text search
- `macros` for using macros in Markdown
- `glightbox` for image lightboxes
- `git-revision-date-localized` to show when a page was last updated
- `git-committers` to show the authors of a page
- `bazzite-social` for social media cards
- `tags` for content tagging

The documentation is structured with a navigation bar defined in `mkdocs.yml` and the content is located in the `src/` directory.

## Building and Running

This project uses `just` as a command runner. The main commands are defined in the `Justfile`.

- **Install dependencies:**
  ```bash
  just install_dependencies
  ```
  or
  ```bash
  bash utils/install-deps.sh
  ```

- **Run the development server:**
  ```bash
  just mkdocs serve
  ```
  This will start a local development server with live reloading, allowing you to preview your changes as you make them.

- **Build the documentation:**
  ```bash
  just mkdocs build
  ```
  This will generate the static HTML site in the `book/` directory.

- **Clean the cache:**
  ```bash
  just mkdocs_clean
  ```

## Tests

Use `just mkdocs serve &` to start the web server and use curl to check the webpages.

## Internationalization

Translations of a page are set in the same directory as the original file, with the language code appended to the filename (e.g., `index.es.md` for Spanish). The language code should be in lowercase and separated from the filename by a dot (`.`).

Links within a page should be prepended by the language code followed by a slash (`/`). For example, a link to the Spanish version of the home page would be `/es/`. This does not apply to resource links such as images or CSS files.

## Development Conventions

- **File Naming:** Do not use spaces in filenames. Use underscores `_` instead.
- **Internal Links:** Use relative or absolute paths for internal links, not full URLs.
- **Headers:** Avoid using h1 headers (`#`) in pages. Use h2 headers (`##`) instead. If you must use a h1 header, use it only once per page for the title.
- **Contributions:** The `README.md` file contains detailed instructions for contributing to the documentation, including how to add new pages, images, and translations.
- **Translations:** To translate a page, create a copy of the file with the language code appended to the filename (e.g., `index.es.md` for Spanish). Then, add the language to the `languages` section in `mkdocs.yml`.
- **Admonitions:** Use admonitions to highlight important information. The content must be indented by four spaces.
  Example:
  ```markdown
  !!! note "This is a note"

      This is the content of the note.
      It can have multiple lines.
  ```
  Supported types include `note`, `tip`, `warning`, `danger`, and more. For a full list of types and advanced usage, see the [MkDocs Material documentation](https://squidfunk.github.io/mkdocs-material/reference/admonitions/).