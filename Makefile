GITHUB_PAGES_BRANCH=master
GITHUB_REPO_SLUG=fischcheng/fischcheng.github.io
GITHUB_REMOTE_NAME=origin
GITHUB_COMMIT_MSG=$(shell git --no-pager log --format=%s -n 1)


travis: publish
        git config --global user.name "fischcheng - Travis"
        git config --global user.email fischcheng@gmail.com
        ghp-import -n -r $(GITHUB_REMOTE_NAME) -b $(GITHUB_PAGES_BRANCH) -m "$(GITHUB_COMMIT_MSG)" $(OUTPUTDIR)
        @git push -fq https://${GH_TOKEN}@github.com/$(GITHUB_REPO_SLUG).git $(GITHUB_PAGES_BRANCH):$(GITHUB_PAGES_BRANCH) > /dev/null

