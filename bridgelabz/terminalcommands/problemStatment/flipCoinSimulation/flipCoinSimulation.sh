declear -A flipValue
isFlip=0;
isHead=0;
isTail=1;
H=0;
T=0;
#read -p "Enter how many times you want to flip the coin : " flipCoinTimes
flipCoinTimes=42;
while  [[ isFlip -lt flipCoinTimes ]]
do
	flipCoin=$(( RANDOM%2 ))
	case $flipCoin in
        	$isHead)
                	result=Heads
			((H++))
                	;;
        	$isTail)
                	result=Tails
			((T++))
                	;;
	esac
	flipValue[$result]=$flipCoin
	echo $result
	isFlip=$(( $isFlip + 1 ))
done

echo "${flipValue[@]}"
echo "Heads win $H Times"
echo "Tails win $T Times"
