# Add all changes to tracked files, ammend the current commit. Optionally push to tracking branch
def amu [
	--push (-p), # force push changes
	--message (-m), # edit the commit message
] {
	git add -u

	if $message != $nothing {
		git commit --amend
	} {
		git commit --amend --no-edit
	}

	if $push != $nothing {
		git push --force
	} {}
}

# Update the supplied to branch to the latest of it's tracking branch
def gup [
	branch: string, # the branch to update to tracking
	] {
	# remove origin/ prefix with substring
	^echo "I'm broken on nu 0.33, don't use me (string interpolation)"
	return
	let tracking = (git rev-parse --symbolic-full-name --abbrev-ref $"($branch)@{u}" | str substring 7,)

	git pull origin $"($tracking):($branch)"
}
