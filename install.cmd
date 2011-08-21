
git submodule sync
git submodule update

@echo Moving your _vimrc out of the way
move %USERPROFILE%\_vimrc %USERPROFILE%\_vimrc

copy _vimrc %USERPROFILE%\_vimrc

@echo Moving your _gvimrc out of the way
move %USERPROFILE%\_gvimrc %USERPROFILE%\_gvimrc

copy _gvimrc %USERPROFILE%\_gvimrc
