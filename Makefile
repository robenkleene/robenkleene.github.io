.PHONY: serve serve_drafts serve_drafts_limit

serve:
	bundle exec jekyll serve --watch

serve_drafts:
	bundle exec jekyll serve --watch --drafts

serve_drafts_limit:
	bundle exec jekyll serve --watch --drafts --limit_posts 5
