while true
do
	sleep 5
	time=$(date +%R | rev | cut -c 4- | rev)
	if [ $time -gt 16 ]
    	then
        	echo \
		"
# Static table lookup for hostnames.
# See hosts(5) for details.

127.0.0.1      facebook.com
127.0.0.1      www.facebook.com

#127.0.0.1      youtube.com
#127.0.0.1      www.youtube.com
#127.0.0.1      google.com
#127.0.0.1      animeisgay.com
#127.0.0.1      discord.com
#127.0.0.1	twitter.com
#127.0.0.1      www.twitter.com
		" > /etc/hosts
	else
		echo \
                "
# Static table lookup for hostnames.
# See hosts(5) for details.

127.0.0.1      facebook.com
127.0.0.1      www.facebook.com

127.0.0.1      youtube.com
127.0.0.1      www.youtube.com
127.0.0.1      animeisgay.com
127.0.0.1      discord.com
127.0.0.1      twitter.com
127.0.0.1      www.twitter.com
                " > /etc/hosts
	fi
done
