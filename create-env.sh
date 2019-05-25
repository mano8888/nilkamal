#!/bin/bash
cont_count=$1
echo "creating $cont_count containers.."
sleep 2;
for i in `seq $cont_count`
do
	echo "=============================="
    echo "Creating www.chair$i container.."
    sleep 1
   sudo docker run --name www.chair$i -d -it --rm mano8888/nil  /bin/bash
    echo "www.chair$i container has been created!"
	echo "=============================="
done
