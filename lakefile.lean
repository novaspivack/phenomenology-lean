import Lake
open Lake DSL

package «phenomenology-lean» where
  -- Paper 74: The Formal Structure of Phenomenology
  -- Qualia, Manifestation, and Selector-Access Regimes

-- Sentience (Paper 73) — O-SIAM operational boundary
require «sentience-lean» from git
  "https://github.com/novaspivack/sentience-lean.git" @ "main"

-- Reflexive closure (Papers 61–63) — Alpha, GhostCollapse, LedgerGround for necessary-ground bridge
require «reflexive-closure-lean» from git
  "https://github.com/novaspivack/reflexive-closure-lean.git" @ "main"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.29.1"

@[default_target]
lean_lib «Phenomenology» where
  globs := #[.submodules `Phenomenology]
