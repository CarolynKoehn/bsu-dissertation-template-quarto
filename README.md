
# BSU Dissertation Quarto Template

Disclaimer: This template is not yet ready for use.

## Creating a New Article

To create a new article using this format:

```bash
quarto use template CarolynKoehn/bsu-dissertation
```

This will create a new directory with an example document that uses this format.

## Using with an Existing Document

To add this format to an existing document:

```bash
quarto add CarolynKoehn/bsu-dissertation
```

Then, add the format to your document options:

```yaml
format:
  bsu-dissertation-pdf: default
```    

## Options

*TODO*: If your format has options that can be set via document metadata, describe them.

## Example

Here is the source code for a minimal sample document: [template.qmd](template.qmd).

<!-- pdftools::pdf_convert('template.pdf',pages = 1) 
![[template.qmd](template.qmd)](template_1.png) -->

## License
This modifies the Boise State Computer Science Department Thesis and Dissertation Template, available at https://github.com/BoiseState/thesis-dissertation-template.
The original template is licensed under the [MIT License](https://opensource.org/license/MIT):

Copyright (c) 2019 Boise State University

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

## References

T. Kenny, Christopher. 2023. “Creating Quarto Journal Article Templates.” July 1, 2023. https://christopherkenny/posts/2023-07-01-creating-quarto-journal-articles.

