import Lake
open Lake DSL

package «phenomenology-lean» where
  -- Paper 73: The Formal Structure of Phenomenology
  -- Qualia, Manifestation, and Selector-Access Regimes

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.29.0-rc3"

-- Sentience (Paper 72) — O-SIAM operational boundary
require «sentience-lean» from "../sentience-lean"

@[default_target]
lean_lib «Phenomenology» where
  globs := #[.submodules `Phenomenology]
