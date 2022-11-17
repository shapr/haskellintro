{s}: rec
{
  ghcidScript = s "dev" "ghcid --command 'cabal new-repl lib:haskellintro' --allow-eval --warnings";
  allScripts = [ghcidScript];
}
