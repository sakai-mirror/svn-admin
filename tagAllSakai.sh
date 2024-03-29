#!/bin/sh
#
# tag modules with tag $1
#

function tag
{
svn ls https://source.sakaiproject.org/svn/$1/tags/$2 &> /dev/null
if [ $? == 1 ]
then
echo tagging $1 $2
svn cp -m "$1 $2 tag" https://source.sakaiproject.org/svn/$1/branches/sakai_2-3-x https://source.sakaiproject.org/svn/$1/tags/$2
else
echo $1 already tagged $2
fi
}

if [ -n "$1" ]; then

tag component $1
tag util $1
tag tool $1
tag authz $1
tag courier $1
tag event $1
tag entity $1
tag velocity $1
tag user $1
tag memory $1
tag db $1
tag email $1
tag alias $1
tag site $1
tag master $1
tag reference $1
tag login $1
tag access $1
tag content $1
tag metaobj $1
tag presence $1
tag calendar $1
tag portal $1
tag jsf $1
tag sections $1
tag gradebook $1
tag course-management $1
tag test-harness $1
tag help $1
tag archive $1
tag rwiki $1
tag search $1
tag site-manage $1
tag announcement $1
tag mailarchive $1
tag chat $1
tag discussion $1
tag message $1
tag web $1
tag osid $1
tag webservices $1
tag assignment $1
tag profile $1
tag dav $1
tag roster $1
tag syllabus $1
tag presentation $1
tag sam $1
tag osp $1
tag jobscheduler $1
tag providers $1
tag textarea $1
tag samples $1
tag msgcntr $1
tag postem $1
tag cluster $1
tag rights $1
tag blog $1
tag linktool $1
tag privacy $1
tag podcasts $1

else

echo Usage: $0 [tagName]

fi

