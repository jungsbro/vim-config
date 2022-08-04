# **vim-config**
<br><br>


# **FolderTree**
```python
# ==============================================================================
.vim/                   # vim-plugin
    autoload/
    view/
# ==============================================================================
.vimrc                  # vim-config with plugin
# ------------------------------------------------------------------------------
.vimrc_simple           # vim-config without plugin
# ------------------------------------------------------------------------------
README.md               #
# ==============================================================================
```
---
<br><br>



# **Installation**
1. Install vim
```bash
# ==============================================================================
vim                     # vim tiny (not used)
vim-gtk                 # vim full
git                     # for vundle.vim
ctags                   # 소스코드내 함수,변수가 선언된곳으로 이동 / 특정 심벌을 찾을때 사용
xclip, xsel             # vim에서 선택한 text 클립보드로 복사
# ==============================================================================
```

```bash
sudo apt install -y vim-gtk git ctags xclip xsel
```
<br>


2. Clone vim-config
```bash
mkdir ~/github/;
```

```bash
git clone https://github.com/jungsbro/vim-config.git ~/github/vim-config
```
<br>


3. Copy vim-config to home
```bash
cp -rf ~/github/vim-config/{.vim/,.vimrc,.vimrc_simple} ~
```
<br>

4. Install vim-plugins
```bash
vim
```

```bash
:PlugInstall
```
```# plugin설치후, 글자가 깨지면 powerline지원하는 Font(D2Coding) 설치```
<br>


---
<br><br>
