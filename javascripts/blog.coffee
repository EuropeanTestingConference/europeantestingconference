

alternateLink = (blogEntry) ->
  link for link in blogEntry.link when link.rel == 'alternate'
  return link

populateLatestBlog = ( latestBlog ) ->
  element = $('#blog-latest')
  addTitleToElement element.find('h3'), latestBlog
  addBodyToElement element.find('section'), latestBlog
  addFooterToBlog element.find('footer'), latestBlog

addTitleToElement = (element, latestBlog) ->
  blogEntry = alternateLink latestBlog
  h3element = document.createElement 'a'
  $(h3element).attr('href', blogEntry.href)
  $(h3element).attr('target', '_blank')
  $(h3element).text blogEntry.title
  element.append h3element

addBodyToElement = ( element, blogEntry ) ->
  content = blogEntry.content.$t
  excerpt =  content.
                replace(/<a[^>]+><(img|div)[^>]*\/?><\/a>/ig, "").
                replace(/<br[^>]*\/?>/ig, "\n").
                replace(/<(img|div)[^>]*\/?>/ig, "").
         #       replace(/(<([^>]+)>)/ig,"").
                substr(0, 500)

  blog_paragraphs =  excerpt.split '\n'
  
  for item in blog_paragraphs
    do =>
      if item != ""
        element.append "<p>#{item}</p>"

  element.append "<p><a target='_blank'  href='#{ alternateLink(blogEntry).href }'>... read more</a></p>"

addFooterToBlog = (element, blogEntry) ->
  published_on = blogEntry.published.$t.substr 0, 10
  element.append "<span class='published-on' >Published on #{ published_on } </span>"


populateRestLinks = ( blogEntries ) ->
  ulElement = $('#blog-rest')
  console.log blogEntries
  for i in [1..6]
    do =>
      console.log blogEntries.entry.length
      if i <= blogEntries.entry.length
        addLinkTo ulElement, ( blogEntries.entry[i]) 

addLinkTo = ( element, blogEntry ) ->
  linkToBlog  = alternateLink blogEntry
  liElement = document.createElement 'li'
  $(liElement).append "<a target='_blank'  href='#{ linkToBlog.href}'>#{ linkToBlog.title }</a><span class='published-on' >published on: #{ blogEntry.published.$t.substr( 0, 10)}</span>"
  element.append liElement

populateBlogs = ( jsonData ) ->
  latestBlog = jsonData.feed.entry[0]
  $('#blog-container').removeClass 'hidden'
  populateLatestBlog latestBlog

  populateRestLinks jsonData.feed

$ ->
  link = $('#blog-container').data( 'resource' )
  
  options = {
    url: "#{link}&callback=?"
    type: 'GET'
    success: populateBlogs
    
  }
  $.getJSON options.url, options.success



