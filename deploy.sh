eval "$(ssh-agent -s)"
chmod 600 id_rsa
ssh-add id_rsa

git config --global push.default matching 
git remote add deploy ssh://root@$IP$PORT$DEPLOY_DIR
git push deploy master

ssh root@$IP -p $PORT <<EOF
	echo "test3" >> test3.txt
	ls /root/BLDB-test > dockerps.txt
	cd /root/BLDB-test
        docker build -t "bldb-test" .
	docker run -d --name "bldb-test" -p 9000:9000 bldb-test
	docker ps -a > dockerps.txt
EOF

