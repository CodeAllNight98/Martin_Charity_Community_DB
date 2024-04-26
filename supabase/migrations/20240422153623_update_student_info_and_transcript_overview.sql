alter table "public"."student_info" drop constraint "public_student_info_teamId_fkey";

alter table "public"."transcript_overview" drop constraint "public_transcript_overview_teamId_fkey";

alter table "public"."student_info" drop column "teamId";

alter table "public"."student_info" add column "team_id" uuid;

alter table "public"."transcript_overview" drop column "teamId";

alter table "public"."transcript_overview" add column "team_id" uuid;

alter table "public"."student_info" add constraint "public_student_info_teamId_fkey" FOREIGN KEY (team_id) REFERENCES study_promotion_team(id) not valid;

alter table "public"."student_info" validate constraint "public_student_info_teamId_fkey";

alter table "public"."transcript_overview" add constraint "public_transcript_overview_teamId_fkey" FOREIGN KEY (team_id) REFERENCES study_promotion_team(id) not valid;

alter table "public"."transcript_overview" validate constraint "public_transcript_overview_teamId_fkey";


