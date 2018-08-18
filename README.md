# Conveyer

## Quickinstall guide on Manjaro or Arch

* git clone
* pacman -S npm
* npm install -g @angular/cli
* cd Conveyer
* npm install
* ng serve -o
* or `ng serve` and navigate to `http://localhost:4200/`

## Build

* cd Conveyer
* ./build.sh or `ng build --prod --base-href /eve/`
* cp -r dist/eve/ /var/www/vhosts/sw-gaming.org/eve/
