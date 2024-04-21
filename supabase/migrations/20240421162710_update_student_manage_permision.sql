alter table "public"."student_manage_permission" drop constraint "public_student_manage_permission_teamId_fkey";

alter table "public"."student_manage_permission" drop constraint "study_promotion_manager_permission_pkey";

drop index if exists "public"."study_promotion_manager_permission_pkey";

alter table "public"."student_manage_permission" drop column "allowRead";

alter table "public"."student_manage_permission" drop column "allowWrite";

alter table "public"."student_manage_permission" drop column "id";

alter table "public"."student_manage_permission" drop column "teamId";

alter table "public"."student_manage_permission" drop column "userId";

alter table "public"."student_manage_permission" add column "allow_read" text[];

alter table "public"."student_manage_permission" add column "allow_write" text[];

alter table "public"."student_manage_permission" add column "team_id" uuid not null;

CREATE UNIQUE INDEX student_manage_permission_pkey ON public.student_manage_permission USING btree (team_id);

alter table "public"."student_manage_permission" add constraint "student_manage_permission_pkey" PRIMARY KEY using index "student_manage_permission_pkey";

alter table "public"."student_manage_permission" add constraint "public_student_manage_permission_teamId_fkey" FOREIGN KEY (team_id) REFERENCES study_promotion_team(id) not valid;

alter table "public"."student_manage_permission" validate constraint "public_student_manage_permission_teamId_fkey";


