# Enucatl: a new Aztec god

The site is built with [Eleventy](https://www.11ty.dev/), Nunjucks layouts and
includes, Markdown page content, and JSON translation data. The Italian pages
are at the site root; English pages are under `/en/`.

## Development

Requires Node.js 20 or newer.

```sh
npm ci
npm start
```

Open <http://localhost:8080/>. Build the static site into `_site/` with
`npm run build`. Eleventy configuration lives in `eleventy.config.ts`; its
types are checked with `npx tsc --noEmit`.

## Publish

`npm run deploy` builds the site and publishes `_site/` to the `gh-pages`
branch. To run this automatically before each push, link the repository hook:

```sh
ln -s ../../pre-push .git/hooks/pre-push
```
