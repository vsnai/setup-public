### git workflow (init)
```
git clone repo

git checkout -b paylink

echo "init" > paylink.md
git add .
git commit -m "Initialize paylink"
git push --set-upstream origin paylink
```

### git workflow (Priyanka's scenario)
```
git clone repo

git checkout paylink
git checkout -b SP-11922

echo "Schema mod 1" > schema.sql

git add .
git commit -m "[#SP-11922] Do schema mod"

git checkout paylink
git rebase SP-11922
git push
```

### git workflow (Mohana's scenario)
```
git clone repo

git checkout paylink
git checkout -b SP-11921

echo "Schema mod 2" > schema.sql

git add .
git commit -m "[#SP-11921] Do schema mod 2"

git checkout paylink
git rebase SP-11921
git push
```

### git (updating 'paylink' from 'master')
```
git clone repo

git checkout paylink
git rebase master
git rebase origin/paylink
git push
```
