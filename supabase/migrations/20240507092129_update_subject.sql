drop policy "select" on "public"."subject";

create policy "allow_select"
on "public"."subject"
as permissive
for select
to authenticated
using (true);


create policy "allow_insert"
on "public"."subject"
as permissive
FOR INSERT 
TO authenticated 
WITH CHECK (true);
