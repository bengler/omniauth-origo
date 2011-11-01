#OmniAuth 1.0 Origo (OAuth 2) strategy

This gem is designed to work with the in-beta OmniAuth 1.0 library.

It will not be officially released on RubyGems.org until OmniAuth 1.0 is released.

## How to include in your Gemfile

```
gem 'omniauth-origo', '~> 1.0.0.rc2', :git => 'https://github.com/origo/omniauth-origo.git'

```

## Todo
Make strategy support HTTPS when bug in origo/SiteController#check_master_session redirect is fixed.
It will give an error in Safari browsers as it mixes http and https in the oAuth float.

##Author
Per-Kristian Nordnes <pk@origo.no>, November 2011

##License

Copyright (C) 2011 by Origogruppen AS.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
