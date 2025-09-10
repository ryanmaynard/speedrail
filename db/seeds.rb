# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

raise StandardError, "DO NOT RUN THIS IN PRODUCTION" if Rails.env.production?

require 'seed_support/rewardful'

SeedSupport::Rewardful.run

# Create example blog post with all text formatting options
unless BlogPost.exists?(slug: 'example-blog-post-with-all-text-formatting')
  blog_post = BlogPost.create!(
    title: "Example Blog Post: All Text Formatting Options",
    slug: "example-blog-post-with-all-text-formatting",
    description: "A comprehensive example showcasing all available text formatting options in our blog system.",
    draft: false
  )
  
  # Rich text content with all formatting options
  blog_post.body = <<~HTML
    <div class="trix-content">
      <h1>Welcome to Our Blog System!</h1>
      
      <p>This is a comprehensive example of all the text formatting options available in our blog system. Let's explore each one:</p>
      
      <h2>Headings</h2>
      <p>We support multiple heading levels:</p>
      <h1>Heading 1 - Main Title</h1>
      <h2>Heading 2 - Section Title</h2>
      <h3>Heading 3 - Subsection</h3>
      <h4>Heading 4 - Minor Heading</h4>
      
      <h2>Text Formatting</h2>
      <p>Here are all the text formatting options:</p>
      <p><strong>Bold text</strong> - for emphasis</p>
      <p><em>Italic text</em> - for subtle emphasis</p>
      <p><u>Underlined text</u> - for links or highlights</p>
      <p><s>Strikethrough text</s> - for corrections</p>
      <p><mark>Highlighted text</mark> - for important notes</p>
      
      <h2>Lists</h2>
      <p>We support both ordered and unordered lists:</p>
      
      <h3>Unordered List:</h3>
      <ul>
        <li>First item</li>
        <li>Second item</li>
        <li>Third item with <strong>bold text</strong></li>
        <li>Fourth item with <em>italic text</em></li>
      </ul>
      
      <h3>Ordered List:</h3>
      <ol>
        <li>Step one</li>
        <li>Step two</li>
        <li>Step three</li>
        <li>Final step</li>
      </ol>
      
      <h2>Code and Technical Content</h2>
      <p>For technical content, we support:</p>
      <p>Inline <code>code snippets</code> for short commands</p>
      
      <pre><code># Block code example
def hello_world
  puts "Hello, World!"
end

hello_world</code></pre>
      
      <h2>Links and References</h2>
      <p>You can create links to external resources:</p>
      <p>Visit our <a href="https://example.com">main website</a> for more information.</p>
      <p>Or check out our <a href="/blog">blog index</a> for more posts.</p>
      
      <h2>Quotes and Blockquotes</h2>
      <p>For highlighting important quotes or testimonials:</p>
      <blockquote>
        <p>"This is an example of a blockquote. It's perfect for highlighting important quotes, testimonials, or key insights from your content."</p>
      </blockquote>
      
      <h2>Tables</h2>
      <p>We support tables for structured data:</p>
      <table>
        <thead>
          <tr>
            <th>Feature</th>
            <th>Status</th>
            <th>Description</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>Rich Text Editor</td>
            <td>✅ Active</td>
            <td>Full formatting support</td>
          </tr>
          <tr>
            <td>Image Uploads</td>
            <td>✅ Active</td>
            <td>Cover images and inline images</td>
          </tr>
          <tr>
            <td>SEO Optimization</td>
            <td>✅ Active</td>
            <td>Meta descriptions and slugs</td>
          </tr>
        </tbody>
      </table>
      
      <h2>Images</h2>
      <p>You can embed images in your posts:</p>
      <figure class="attachment attachment--preview attachment--jpg">
        <img src="https://images.unsplash.com/photo-1556740758-90de374c12ad?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80" alt="Example image">
        <figcaption>This is an example image with a caption</figcaption>
      </figure>
      
      <h2>Conclusion</h2>
      <p>This blog post demonstrates all the available formatting options in our system. You can use any combination of these elements to create rich, engaging content for your readers.</p>
      
      <p>Happy writing! 🚀</p>
    </div>
  HTML
  
  puts "Created example blog post: #{blog_post.title}"
end
