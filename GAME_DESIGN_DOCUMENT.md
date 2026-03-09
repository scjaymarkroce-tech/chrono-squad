# 📋 GAME DESIGN DOCUMENT — "Chrono Squad" (Working Title)

---

## 1. **GAME OVERVIEW**

- **Genre:** Roguelike Character Collection Turn-Based Battler
- **Platform:** PC (fullscreen pixel art)
- **Core Loop:** Build a team → Enter a dungeon → Encounter random rooms (battle, reward, event) → Defeat bosses → Earn resources → Recruit/unlock more characters → Repeat

---

## 2. **GOALS & PLAYER MOTIVATION**

- Collect new and rare characters (gacha/random recruit system)
- Progress further with each run (roguelike structure)
- Learn enemy patterns and create teams with great synergy
- Unlock permanent upgrades so every run feels rewarding
- Master speedy combat and plan around turn order
- Discover fun combos and optimize for further runs

---

## 3. **CORE SYSTEMS**

### 3.1. **CHARACTERS (Playable Units)**
- **Roster Size:** 7-15 (possible expansion later)
- **Stats:** HP, Attack, Defense, Speed, Element
- **Element Types:** Fire, Water, Nature, Void 
- **Abilities:** Each character has:
  - 1x Basic Skill (no cost, can be used any turn)
  - 1x Special/Burst Skill (requires energy or cooldown, more powerful)
  - 1x Passive/Synergy (buffs team or exploits enemy weakness)
  - 1x Stat Growth per duplicate pull (duplicates strengthen the character in gacha)

- **Rarity:** Characters rolled from the gacha have tiers; higher rarity is harder to get, but all are viable. 4 stars and 5 stars

---

### 3.2. **ENEMIES**
- **Types:** 7-8 elemental archetypes (Can already be  found on Enemy_Types.md)
- **Stats:** HP, Attack, Defense, Speed, Element
- **Unique Patterns:** Each enemy has telegraphed attack rhythms/abilities the player can learn and counter.
- **Mini-Bosses & Boss:** Each run ends with a major boss using unique patterns and synergies.

---

### 3.3. **COMBAT**
- **Battle Format:** 3 (player) vs 2-3 (enemy) battles
- **Turn Order:** Based on stat "Speed" (fastest acts first)
- **Core Mechanics:**
  - Each character/enemy takes a turn per round in order
  - Can attack, use skill, buff, debuff, or use item
  - Party synergy matters (Water + Fire = Vaporize Raction)
  - Passive buffs and elemental strengths/weaknesses add strategic depth
- **Victory:** All enemies defeated
- **Defeat:** All player characters knocked out

---

### 3.4. **DUNGEON STRUCTURE (PROGRESSION)**
- **Run Format:** Sequential room progression (about 10-15 rooms per run)
- **Room Types:**
  - **Combat Room:** Fight with random enemy group (60% of rooms)
  - **Reward Room:** Choose one reward (heal, gold, temp buff, stat boost)
  - **Event Room:** Random event (merchant/shop, trap, blessing, swap character, lore flavor, etc.)
  - **Campfire/Rest:** Recover partial HP, reset cooldowns, occasional short banter
  - **Boss Room:** Unique, always last room

- **Randomization:** Enemy types/compositions, room layouts, event rooms/boss types shuffle each run for replay value

---

### 3.5. **GACHA & COLLECTION**
- **Currency:** Earned primarily through completing dungeon runs (Called: Solaris)
- **Pulls:** Player uses currency to recruit (pull) new characters, with random rarity and duplicates
- **Duplicates:** Increase star levels (stat bonuses) or unlock visual skins (cosmetics)
- **Team Builder:** Player selects 3 characters out of their collection each run

---

### 3.6. **PROGRESSION & PERMANENT UPGRADES**
- **XP, Gold, and Gacha Currency** earned per run (regardless of outcome)
- **Meta-upgrades:** Permanent upgrades (e.g. +3% starting HP, extra revive, initial gold, unlock a starter character, etc.)
- **Unlocks:** New characters, new event rooms, or additional boss types

---

### 3.7. **UI/UX**
- **Fullscreen main menu**: Character collection, gacha pulls, team builder, upgrades
- **Dungeon screen:** Current team, room history, anticipated next room, quick buttons for team/quit
- **Battle screen:** Clear character icons, elemental colors, current buffs/debuffs, queue for actions (shows "Who's next")
- **End-of-run screen:** Rewards breakdown and recap

---

## 4. **MECHANICS (BALANCE PRINCIPLES)**

- **Enemy Composition:** Each run uses a fixed pool of 2-3 major enemy types so player can plan, but other types can appear in low numbers for surprise/versatility.
- **Element Balance:** No enemy type is unbeatable; every run can be completed with careful planning, not perfect luck.
- **Speed Impact:** Faster units can act/move before enemies; buffs/debuffs may influence speed and turn order.
- **Synergy Bonuses:** Bringing certain elements or combos grants small buffs (ex. Using Two Water Element = 30% more health)
- **Reward Scaling:** Farther progress = better rewards; boss always gives major loot
- **Permanent Progress:** Player never leaves empty-handed, even in defeat; all runs yield some progress/tokens

---

## 5. **FEATURES TO CONSIDER LATER (NOT MVP)**

- Endless Mode: Infinite rooms until defeat for leaderboard play
- Weekly challenge dungeons (fixed rules or pre-selected teams)
- Cosmetic skins for characters/alt unlocks
- Daily random events
- Advanced synergy trees/unique passive unlocks

---

## 6. **ART, AUDIO, AND TECHNICAL**

### 6.1. **ART STYLE**
- Pixel art (-64x64 sprites)
- Fullscreen support for retro-modern feel
- Each character has idle, attack, special, and hit animations
- Dungeon backgrounds change by "floor"/stage/room type

### 6.2. **AUDIO**
- Short SFX for attacks, skills, loot, menu, pulls
- Music loops for dungeon, boss, main menu, end screen
- Audio feedback for rewards and upgrades

### 6.3. **TECH STACK**
- Engine: Godot (v4.6+)
- Language: GDScript or C# (your choice)
- Source control: Git & GitHub

---

## 7. **WHY IT WILL BE FUN & REPLAYABLE**

- Constant sense of progress and new rewards
- Strategic team-building: discover broken combos and synergies
- Surprising runs: every session is fresh and challenging
- Gacha economy: excitement with every new or duplicate pull
- Growth over time: "losing" still gets you closer to victory
- Pixel art style: classic, but stylish and modern

---

## 8. **MVP SCOPING (for 486 hours)**

- 12 characters at launch, each with 2 unique skills and a passive
- 8 enemy types (including 2 bosses)
- At least 3-4 room/event types (Battle, Rest, Reward, Shop)
- Gacha pool and currency with duplicates system
- Basic progression upgrades
- 1 dungeon theme with minor room variations

---

## 9. **EXAMPLE PROGRESSION FLOW**

1. MAIN MENU: Pull gacha → Build team
2. SELECT TEAM: Choose any 3 unlocked characters
3. ENTER DUNGEON: 12 rooms total
    - Room 1: Battle
    - Room 2: Heal
    - Room 3: Trap Event
    - Room 4: Battle
    - Room 5: Reward Choice
    - Room 6: Shop
    - Room 7: Battle
    - Room 8: Mini-Boss (harder enemy)
    - Room 9: Rest
    - Room 10: Battle
    - Room 11: Mystery Event
    - Room 12: Final Boss
4. END RUN: Gain rewards based on progress
5. RETURN TO MENU: Spend upgrades, pull from gacha, retry with new strategy

---
