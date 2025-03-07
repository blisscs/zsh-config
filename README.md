## Usage

1. Install ohmyzsh with the below command then follow the remaining steps.
```sh
sh -c "$(curl -fsSL https://install.ohmyz.sh/)"
```
2. Remove or backup `$HOME/.zshrc`.
3. Create a static link from `./.zshrc` to the `$HOME/.zshrc`
4. Create `$HOME/.exportsrc` to host any exports. The exportsrc file may looks like
```
export POOL_SIZE=20
```
