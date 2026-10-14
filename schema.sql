-- Spinning Plates: one row per person per document (state, journal, today, practice).
-- Row level security means each signed-in person can only ever read or write their own rows.
create table if not exists public.docs (
  user_id uuid not null default auth.uid() references auth.users on delete cascade,
  key text not null,
  data jsonb not null,
  updated_at timestamptz not null default now(),
  primary key (user_id, key)
);
alter table public.docs enable row level security;
drop policy if exists "Own data only" on public.docs;
create policy "Own data only" on public.docs for all
  using (auth.uid() = user_id) with check (auth.uid() = user_id);
