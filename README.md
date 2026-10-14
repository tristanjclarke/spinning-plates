# Spinning Plates

A calm daily planner built on ACT. Plan the day, spin the plates that matter on purpose, put some down, and pause when it gets loud.

Live: https://tristanjclarke.github.io/spinning-plates/

## How it works

- Static site on GitHub Pages. No build step: `index.html` is the whole app.
- Data lives in Supabase. Each person signs up with email and password and only ever sees their own data (row level security on the `docs` table).
- Works offline. Changes are kept on the device and synced when back online.
- Install it: open the link on your phone, then Share → Add to Home Screen (iPhone) or menu → Install app (Android/Chrome).

## Set up your own copy

1. Create a Supabase project. In SQL Editor, run `schema.sql`.
2. In Authentication → URL Configuration, set the Site URL (and a Redirect URL) to your Pages address.
3. Put the Project URL and anon public key in `config.js`. The anon key is safe to publish; row level security does the protecting.
4. Enable GitHub Pages for the repo (branch `main`, folder `/`).

## Files

| File | What it is |
| --- | --- |
| `index.html` | The app |
| `config.js` | Supabase URL and anon key |
| `supabase.js` | Supabase client (v2.45.4, vendored) |
| `sw.js` | Offline cache |
| `manifest.webmanifest`, `icons/` | Install as an app |
| `schema.sql` | Database table and privacy policy |
