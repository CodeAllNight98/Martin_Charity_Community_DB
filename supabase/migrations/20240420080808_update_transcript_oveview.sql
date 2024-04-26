alter table "public"."transcript_overview" add column "approve_from_team_manager" jsonb;

alter table "public"."transcript_overview" add column "final_transcript_result" text;

alter table "public"."transcript_overview" add column "transcript_result" text;


