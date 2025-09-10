{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    # Ruby 3.4.5
    ruby_3_4
    
    # Bundler
    bundler
    
    # PostgreSQL client
    postgresql
    
    # Node.js for frontend assets
    nodejs
    
    # Development tools
    git
    curl
    wget
    
    # Image processing dependencies
    imagemagick
    vips
    
    # YAML library for psych gem
    libyaml
    
    # Redis
    redis
  ];

  shellHook = ''
    # Set up Ruby environment
    export GEM_HOME="$PWD/.gems"
    export GEM_PATH="$GEM_HOME:$GEM_PATH"
    export PATH="$GEM_HOME/bin:$PATH"
    
    # Set up bundler
    export BUNDLE_PATH="$PWD/.bundle"
    export BUNDLE_BIN="$PWD/.bundle/bin"
    export PATH="$BUNDLE_BIN:$PATH"
    
    # PostgreSQL
    export PGHOST=localhost
    export PGPORT=5432
    
    # Redis
    export REDIS_URL=redis://localhost:6379/0
    
    echo "Ruby environment loaded:"
    echo "  Ruby version: $(ruby --version)"
    echo "  Bundler version: $(bundle --version)"
    echo "  Gem home: $GEM_HOME"
    echo "  Bundle path: $BUNDLE_PATH"
  '';
}
