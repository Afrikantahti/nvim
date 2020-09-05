#git checkout master
git pull git@github.com:ChristianChiarulli/nvim.git

# https://www.chrisatmachine.com/Git/01-Merging-Upstream-Repo-Fork/
git fetch upstream
git checkout master
git merge upstream/master
