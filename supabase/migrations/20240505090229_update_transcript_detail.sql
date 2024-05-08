alter table "public"."transcript_detail" drop column "bonus";

alter table "public"."transcript_detail" add column "number_of_bonus_books" smallint;

alter table "public"."transcript_detail" add column "seed_soul_reason" text;


