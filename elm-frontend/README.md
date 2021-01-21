# Magnus Berntz Eriksen, in Elm

## Installation

```sh
$ git clone git@github.com:simonh1000/elm-webpack-starter.git new-project
$ cd new-project
$ npm install
```

## Developing

```sh
$ npm start
or
$ npm start --nodebug
```

## Production

```sh
npm run prod
```

## Static assets

Just add to `src/assets/` and the production build copies them to `/dist`

## Testing

```sh
npm test
```

## ES6

This starter includes [Babel](https://babeljs.io/) so you can directly use ES6 code.

## How it works

`npm run dev` maps to `webpack-dev-server --hot --colors --port 3000` where

  - `--hot` Enable webpack's Hot Module Replacement feature
  - `--port 3000` - use port 3000 instead of default 8000
  - inline (default) a script will be inserted in your bundle to take care of reloading, and build messages will appear in the browser console.
  - `--colors` should show the colours created in the original Elm errors, but does not (To Fix)
  
One alternative is to run `npx webpack-dev-server --hot --colors --host=0.0.0.0 --port 3000` which will enable your dev server to be reached from other computers on your local network

## Credits

Based on https://github.com/simonh1000/elm-webpack-starter
