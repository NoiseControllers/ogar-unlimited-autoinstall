# ogar-unlimited-autoinstall
Ogar-Unlimited Autoinstaller Script. 

Distro : Ubuntu 14.04 LTS

1. Copy Repo.
   
   $ **`cd ~/`**
   
   $ **`apt-get install git -y`**
   
   $ **`git clone https://github.com/NoiseControllers/ogar-unlimited-autoinstall.git`**
   
2. Install NodeJS & Ogar-unlimited.

   $ **`cd ~/`**

   $ **`cd ogar-unlimited-autoinstall/`**
   
   $ **`chmod +x *`**
   
   $ **`./inode.sh`**
   
   $ **`./create.sh gamefolder 89 98`**
   
3. Start Server
   
   $ **`screen`**

   $ **`cd /home/gamefolder/Ogar-unlimited/src`**
   
   $ **`node index.js`**
   
4. You can close Putty, Or Terminal, To Get Game console Back Wrote.
   
   $ **`screen -r`**

5. Want to host client in your server ? First Install Apache2 Then Create One Virtualhost.

    $ **`sh ap.sh`** 
    
    $ **`sh client.sh mydomain.com`**
    
    $ Or **`sh client.sh my.subdomain.net`**
    
    ap.sh Will Install Apache And Php Modules, Don't Run It Anymore Just One Time. After This To Host More Domains
    In Your Server Just Run **`sh client.sh domainname.al/com/net/tk/ml/`** Or Whatever.

![](http://image.prntscr.com/image/ee485c4f68b44c4b832f5875ebbe7bf4.png)

~

![](http://image.prntscr.com/image/0bb0615b49dc4dc0bea618edd7f39059.png)
