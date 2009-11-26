augr class
au!
au bufread,filereadpost *.class silent %!jad -noctor -ff -i -p "%"
au bufread,filereadpost *.class set readonly
au bufread,filereadpost *.class set ft=java
au bufread,filereadpost *.class normal gg=G
au bufread,filereadpost *.class set nomodified
augr END

