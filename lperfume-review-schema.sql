create table if not exists public.lperfume_review_submissions (
 id uuid primary key default gen_random_uuid(),
 customer_name text not null,
 location text not null default 'Lagos, Nigeria',
 rating integer not null check (rating between 1 and 5),
 review_text text not null,
 status text not null default 'pending' check (status in ('pending','approved','rejected')),
 created_at timestamptz not null default now()
);
alter table public.lperfume_review_submissions enable row level security;
create policy "Public can submit reviews" on public.lperfume_review_submissions for insert to public with check (true);
create policy "Reffime admin manages review submissions" on public.lperfume_review_submissions for all to authenticated using (auth.jwt()->>'email' = 'dovay.business@gmail.com') with check (auth.jwt()->>'email' = 'dovay.business@gmail.com');
