if [ -h ~/.profile ]; then
    echo ".profile exists..."
fi
if [ -h ~/.profile-real ] || [ -e ~/.profile-real ]; then
    echo ".profile-real exists..."
fi

