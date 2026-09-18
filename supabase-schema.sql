-- L-Perfume / Essence Luxe shared Supabase state
create table if not exists public.lperfume_state (
  id text primary key default 'main',
  settings jsonb not null default '{}'::jsonb,
  products jsonb not null default '[]'::jsonb,
  reviews jsonb not null default '[]'::jsonb,
  collections jsonb not null default '[]'::jsonb,
  updated_at timestamptz not null default now()
);
alter table public.lperfume_state enable row level security;
create policy "Public can read lperfume state" on public.lperfume_state for select using (true);
create policy "Reffime admin manages lperfume state" on public.lperfume_state for all to authenticated using (auth.jwt()->>'email' = 'dovay.business@gmail.com') with check (auth.jwt()->>'email' = 'dovay.business@gmail.com');
