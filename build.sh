#!/bin/bash
ng build --prod --base-href /eve/
echo "now copy dist/eve/ to /var/www/vhosts/sw-gaming.org/eve"
