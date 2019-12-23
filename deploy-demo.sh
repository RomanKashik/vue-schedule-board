#!/bin/bash

cd demo && cnpm install  \
&& npm run build \
&& rm -rf /tmp/dist && mv -f dist /tmp/dist \
&& cd .. \
&& git checkout gh-pages \
&& rm -rf ./* \
&& mv -f  /tmp/dist/* ./ \
&& git add . && git commit -m "update demo page" && git push origin gh-pages
