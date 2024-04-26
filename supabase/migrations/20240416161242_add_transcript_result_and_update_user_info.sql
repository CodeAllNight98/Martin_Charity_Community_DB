create table "public"."study_promotion_role" (
    "id" text not null,
    "label" text not null
);


alter table "public"."study_promotion_role" enable row level security;

create table "public"."transcript_result" (
    "id" text not null,
    "label" text not null
);


alter table "public"."transcript_result" enable row level security;

alter table "public"."transcript_status" add column "label" text;

alter table "public"."user_info" add column "study_promotion_role" text[];

CREATE UNIQUE INDEX study_promotion_role_pkey ON public.study_promotion_role USING btree (id);

CREATE UNIQUE INDEX transcript_result_pkey ON public.transcript_result USING btree (id);

alter table "public"."study_promotion_role" add constraint "study_promotion_role_pkey" PRIMARY KEY using index "study_promotion_role_pkey";

alter table "public"."transcript_result" add constraint "transcript_result_pkey" PRIMARY KEY using index "transcript_result_pkey";

grant delete on table "public"."study_promotion_role" to "anon";

grant insert on table "public"."study_promotion_role" to "anon";

grant references on table "public"."study_promotion_role" to "anon";

grant select on table "public"."study_promotion_role" to "anon";

grant trigger on table "public"."study_promotion_role" to "anon";

grant truncate on table "public"."study_promotion_role" to "anon";

grant update on table "public"."study_promotion_role" to "anon";

grant delete on table "public"."study_promotion_role" to "authenticated";

grant insert on table "public"."study_promotion_role" to "authenticated";

grant references on table "public"."study_promotion_role" to "authenticated";

grant select on table "public"."study_promotion_role" to "authenticated";

grant trigger on table "public"."study_promotion_role" to "authenticated";

grant truncate on table "public"."study_promotion_role" to "authenticated";

grant update on table "public"."study_promotion_role" to "authenticated";

grant delete on table "public"."study_promotion_role" to "service_role";

grant insert on table "public"."study_promotion_role" to "service_role";

grant references on table "public"."study_promotion_role" to "service_role";

grant select on table "public"."study_promotion_role" to "service_role";

grant trigger on table "public"."study_promotion_role" to "service_role";

grant truncate on table "public"."study_promotion_role" to "service_role";

grant update on table "public"."study_promotion_role" to "service_role";

grant delete on table "public"."transcript_result" to "anon";

grant insert on table "public"."transcript_result" to "anon";

grant references on table "public"."transcript_result" to "anon";

grant select on table "public"."transcript_result" to "anon";

grant trigger on table "public"."transcript_result" to "anon";

grant truncate on table "public"."transcript_result" to "anon";

grant update on table "public"."transcript_result" to "anon";

grant delete on table "public"."transcript_result" to "authenticated";

grant insert on table "public"."transcript_result" to "authenticated";

grant references on table "public"."transcript_result" to "authenticated";

grant select on table "public"."transcript_result" to "authenticated";

grant trigger on table "public"."transcript_result" to "authenticated";

grant truncate on table "public"."transcript_result" to "authenticated";

grant update on table "public"."transcript_result" to "authenticated";

grant delete on table "public"."transcript_result" to "service_role";

grant insert on table "public"."transcript_result" to "service_role";

grant references on table "public"."transcript_result" to "service_role";

grant select on table "public"."transcript_result" to "service_role";

grant trigger on table "public"."transcript_result" to "service_role";

grant truncate on table "public"."transcript_result" to "service_role";

grant update on table "public"."transcript_result" to "service_role";


