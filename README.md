[![Ask DeepWiki](https://deepwiki.com/badge.svg)](https://deepwiki.com/bazzite-org/docs.bazzite.gg)

# Contributing to Bazzite MkDocs documentation

- [Contributing to Bazzite MkDocs documentation](#contributing-to-bazzite-mkdocs-documentation)
  - [Introduction](#introduction)
  - [Documentation Guidelines](#documentation-guidelines)
    - [1. Internal links](#1-internal-links)
    - [2. Avoid using h1 headers (`#`) in pages](#2-avoid-using-h1-headers--in-pages)
  - [What is MkDocs](#what-is-mkdocs)
  - [Setup MkDocs tooling](#setup-mkdocs-tooling)
    - [1. Create the markdown file where we will store our document.](#1-create-the-markdown-file-where-we-will-store-our-document)
    - [2. Set a proper page name](#2-set-a-proper-page-name)
  - [How to add images to embeds](#how-to-add-images-to-embeds)
  - [Translate documentation](#translate-documentation)

## Introduction

This is a guide that will show you how to write documentation.

## Documentation Guidelines

### 1. Internal links

Do not utilize absolute urls pointing to internal pages in the documentation (https://docs.bazzite.gg).

Instead:

- Use relative paths
  - `./index.md`
  - `../Handheld_and_HTPC_edition/Steam_Gaming_Mode.md`
- Use absolute paths\*
  - `/General/Installation_Guide/Installing_Bazzite_for_Handheld_PCs.md`

<small>\* Absolute paths are relative to the `docs_dir` declared in [mkdocs.yml](./mkdocs.yml). In this case, `src/`.</small>

### 2. Avoid using h1 headers (`#`) in pages

Instead, use h2 headers (`##`).

If you really need to, use `#` only and exclusively for page titles, and only once per page.

## What is MkDocs

> _MkDocs is a fast, simple and downright gorgeous static site generator that's geared towards building project documentation. Documentation source files are written in Markdown, and configured with a single YAML configuration file._
>
> Source ~ https://www.mkdocs.org/

**TL;DR**: It's a fancy tool that allows us to create a documentation website with basic [Markdown](https://commonmark.org/help/).

The essential part that can't be missing in a mdBook is the `mkdocs.yml` file.

`mkdocs.yml` acts as our main configuration file. One of its main tasks is to configure the **Table of Contents** and to configure translation files.

## Setup MkDocs tooling

> ⚠️ WARNING ⚠️
>
> This step is **required** in order to setup previews of the resulting MkDocs

To install our dependencies, run this:

```sh
bash utils/install-deps.sh
```

<details>
<summary>
<big>Dependencies list</big><br>
<sup>Ignore if using install-deps.sh</sup>
</summary>

- [uv](https://docs.astral.sh/uv/) (can be installed with Homebrew)
- [Just](https://just.systems/man/en/) (preinstalled in all [Universal Blue](https://universal-blue.org/) images)

</details>

To run the MkDocs dev-server to preview the Bazzite documentation, run this:

```sh
just mkdocs serve
```

You will need other tools as well, like:

- A markdown compatible code editor (ex.: **Visual Studio Code**)
- **git** (comes preinstalled in most Linux distributions)

### 1. Create the markdown file where we will store our document.

> ⚠️ WARNING
>
> Just remember, ⚠️**DO NOT USE SPACES IN THE FILE NAME**⚠️. Is really important, spaces in filenames is going to bit us later in a future.
> Instead, use underscores `_`

### 2. Set a proper page name

You can add more explicit page titles (used by the browser tab names) by using YAML metadata.

Adding this at the start of the markdown file would change the tab name to "Hello world":

```yaml
---
title: "Hello world"
---
```

## How to add images to embeds

<small>Reference: [#34](https://github.com/KyleGospo/docs.bazzite.gg/pull/34#issue-2600324288)</small>

Attach the necesary parameters to the markdown page, in the yaml metadata

```yaml
---
# Simple
# Uses a default blend setting with purple and crops
preview: ../img/distrobox.png
description: |
  Distrobox is ...
---
```

or

```yaml
---
# Expanded
preview:
  src: ../img/distrobox.png
  alpha: 150 # from 0 (invisible) to 255 (fully visible)
  contain: True # For images with transparent sides only, center the image without cropping
description: |
  Distrobox is ...
---
```

We can use the first image found in a page as a fallback.
Set `use_image_from_page` to `true` in `mkdocs.yml`:

```yaml
plugins:
  - bazzite-social:
      use_image_from_page: true # Use first image found in a page as fallback
```

## Credit Yourself!

While it is **not required**, you could add your Github username to the top of the page like this:

```
---
authors:
  - "@yournamehere"
---
```

Some pages already include an authors section already.  **Do not add credits to the main index pages!**

## Translate documentation

Translating documentation is as straightfoward as can be.
Lets say we want to translate `Homebrew.md` to Spanish. All what you would have to do is make a copy of the file with the name `Homebrew.es.md` and start translating.

Perhaps you can't see your translation with `just mkdocs serve`.
Chances are we need to configure MkDocs to do so.

Open `mkdocs.yml`, look for the field `languages`, should look something like this:

```yaml
languages:
   - locale: en
      default: true
      name: English
      build: true
```

Add your language, in our case is Spanish:

```yaml
languages:
   - locale: en
      default: true
      name: English
      build: true
   - locale: es
      name: Spanish
      build: true
```

MkDocs should show a language selector in the top bar.
