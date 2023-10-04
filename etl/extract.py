import urllib.request
import feedparser

def extract():
    url_base = "http://export.arxiv.org/api/query?"
    query = 'search_query=all:electron&start=0&max_results=1'

    url = url_base + query
    data = urllib.request.urlopen(url)
    feed = feedparser.parse(data)
    return feed

if __name__ == '__main__':
    feed = extract()

