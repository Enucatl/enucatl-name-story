type SiteConfig = {
  addPassthroughCopy(mapping: Record<string, string>): void;
};

export default function (eleventyConfig: SiteConfig) {
  eleventyConfig.addPassthroughCopy({ "src/img": "img" });
  eleventyConfig.addPassthroughCopy({ "src/css": "css" });

  return {
    dir: {
      input: "src",
      includes: "_includes",
      data: "_data",
      output: "_site",
    },
    templateFormats: ["njk", "md", "html", "css", "svg", "jpg"],
    markdownTemplateEngine: "njk",
  };
}
