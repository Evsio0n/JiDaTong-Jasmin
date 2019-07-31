.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/team/activity/AlterTeamIntroActivity
.super com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity
.inner class inner com/nd/schoollife/ui/team/activity/AlterTeamIntroActivity$1
.inner class private AlterTeamInfoOnClickListener inner com/nd/schoollife/ui/team/activity/AlterTeamIntroActivity$AlterTeamInfoOnClickListener outer com/nd/schoollife/ui/team/activity/AlterTeamIntroActivity
.inner class private OwnOnTextContextMenuItem inner com/nd/schoollife/ui/team/activity/AlterTeamIntroActivity$OwnOnTextContextMenuItem outer com/nd/schoollife/ui/team/activity/AlterTeamIntroActivity

.field public static final 'RESULT_OK' I = 1


.field 'alterTeamInfoOnClickListener' Lcom/nd/schoollife/ui/team/activity/AlterTeamIntroActivity$AlterTeamInfoOnClickListener;

.field 'ownOnTextContextMenuItem' Lcom/nd/schoollife/ui/team/activity/AlterTeamIntroActivity$OwnOnTextContextMenuItem;

.field 'teamId' J

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/<init>()V
aload 0
aconst_null
putfield com/nd/schoollife/ui/team/activity/AlterTeamIntroActivity/alterTeamInfoOnClickListener Lcom/nd/schoollife/ui/team/activity/AlterTeamIntroActivity$AlterTeamInfoOnClickListener;
aload 0
aconst_null
putfield com/nd/schoollife/ui/team/activity/AlterTeamIntroActivity/ownOnTextContextMenuItem Lcom/nd/schoollife/ui/team/activity/AlterTeamIntroActivity$OwnOnTextContextMenuItem;
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/schoollife/ui/team/activity/AlterTeamIntroActivity;)V
aload 0
invokespecial com/nd/schoollife/ui/team/activity/AlterTeamIntroActivity/commit()V
return
.limit locals 1
.limit stack 1
.end method

.method private commit()V
aload 0
getstatic com/nd/schoollife/R$id/et_alter_team_intro_new_team_intro I
invokevirtual com/nd/schoollife/ui/team/activity/AlterTeamIntroActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/team/view/ExEditText
astore 1
aload 1
invokevirtual com/nd/schoollife/ui/team/view/ExEditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
astore 2
aload 1
invokevirtual com/nd/schoollife/ui/team/view/ExEditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokevirtual java/lang/String/length()I
ifne L0
aload 1
getstatic com/nd/schoollife/R$drawable/bg_exedittext_error I
invokevirtual com/nd/schoollife/ui/team/view/ExEditText/setBackgroundResource(I)V
aload 0
aload 0
getstatic com/nd/schoollife/R$string/team_intro_length_must_bigger_0 I
invokevirtual com/nd/schoollife/ui/team/activity/AlterTeamIntroActivity/getString(I)Ljava/lang/String;
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
L0:
aload 2
iconst_0
sipush 140
invokestatic com/nd/schoollife/ui/common/util/PostUtils/getWordLength(Ljava/lang/String;ZI)[F
iconst_0
faload
ldc_w 140.0F
fcmpl
ifle L1
aload 1
getstatic com/nd/schoollife/R$drawable/bg_exedittext_error I
invokevirtual com/nd/schoollife/ui/team/view/ExEditText/setBackgroundResource(I)V
aload 0
aload 0
getstatic com/nd/schoollife/R$string/team_intro_length_must_less_140 I
invokevirtual com/nd/schoollife/ui/team/activity/AlterTeamIntroActivity/getString(I)Ljava/lang/String;
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
L1:
aload 1
iconst_m1
invokevirtual com/nd/schoollife/ui/team/view/ExEditText/setBackgroundColor(I)V
aload 0
aload 2
invokespecial com/nd/schoollife/ui/team/activity/AlterTeamIntroActivity/onCommitTask(Ljava/lang/String;)V
return
.limit locals 3
.limit stack 3
.end method

.method private onCommitTask(Ljava/lang/String;)V
new com/nd/schoollife/ui/team/activity/AlterTeamIntroActivity$1
dup
aload 0
invokespecial com/nd/schoollife/ui/team/activity/AlterTeamIntroActivity$1/<init>(Lcom/nd/schoollife/ui/team/activity/AlterTeamIntroActivity;)V
astore 2
new com/nd/schoollife/ui/team/task/TeamTask
dup
aload 0
sipush 4100
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_SUBMIT Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 2
invokespecial com/nd/schoollife/ui/team/task/TeamTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/team/task/TeamTask$TeamTaskCallback;)V
iconst_2
anewarray java/lang/String
dup
iconst_0
aload 0
getfield com/nd/schoollife/ui/team/activity/AlterTeamIntroActivity/teamId J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
aastore
dup
iconst_1
aload 1
aastore
invokevirtual com/nd/schoollife/ui/team/task/TeamTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 3
.limit stack 6
.end method

.method protected initContentView()V
aload 0
invokevirtual com/nd/schoollife/ui/team/activity/AlterTeamIntroActivity/getIntent()Landroid/content/Intent;
astore 2
aload 2
ldc "TEAM_INTRO"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 0
aload 2
ldc "LONG_TEAM_OR_COMMUNITY_ID"
lconst_1
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putfield com/nd/schoollife/ui/team/activity/AlterTeamIntroActivity/teamId J
aload 0
getstatic com/nd/schoollife/R$layout/activity_alter_team_intro I
invokevirtual com/nd/schoollife/ui/team/activity/AlterTeamIntroActivity/setContentView(I)V
aload 0
getstatic com/nd/schoollife/R$id/et_alter_team_intro_new_team_intro I
invokevirtual com/nd/schoollife/ui/team/activity/AlterTeamIntroActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
astore 2
aload 2
aload 1
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 2
aload 1
invokevirtual java/lang/String/length()I
invokevirtual android/widget/EditText/setSelection(I)V
aload 0
getstatic com/nd/schoollife/R$id/tv_common_head_title I
invokevirtual com/nd/schoollife/ui/team/activity/AlterTeamIntroActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 0
getstatic com/nd/schoollife/R$string/alter_team_intro I
invokevirtual com/nd/schoollife/ui/team/activity/AlterTeamIntroActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 3
.limit stack 5
.end method

.method protected initData(Landroid/os/Bundle;)V
aload 0
new com/nd/schoollife/ui/team/activity/AlterTeamIntroActivity$AlterTeamInfoOnClickListener
dup
aload 0
aconst_null
invokespecial com/nd/schoollife/ui/team/activity/AlterTeamIntroActivity$AlterTeamInfoOnClickListener/<init>(Lcom/nd/schoollife/ui/team/activity/AlterTeamIntroActivity;Lcom/nd/schoollife/ui/team/activity/AlterTeamIntroActivity$1;)V
putfield com/nd/schoollife/ui/team/activity/AlterTeamIntroActivity/alterTeamInfoOnClickListener Lcom/nd/schoollife/ui/team/activity/AlterTeamIntroActivity$AlterTeamInfoOnClickListener;
aload 0
new com/nd/schoollife/ui/team/activity/AlterTeamIntroActivity$OwnOnTextContextMenuItem
dup
aload 0
aconst_null
invokespecial com/nd/schoollife/ui/team/activity/AlterTeamIntroActivity$OwnOnTextContextMenuItem/<init>(Lcom/nd/schoollife/ui/team/activity/AlterTeamIntroActivity;Lcom/nd/schoollife/ui/team/activity/AlterTeamIntroActivity$1;)V
putfield com/nd/schoollife/ui/team/activity/AlterTeamIntroActivity/ownOnTextContextMenuItem Lcom/nd/schoollife/ui/team/activity/AlterTeamIntroActivity$OwnOnTextContextMenuItem;
return
.limit locals 2
.limit stack 5
.end method

.method protected initEvent()V
aload 0
getstatic com/nd/schoollife/R$id/btn_alter_team_info_intro_commit I
invokevirtual com/nd/schoollife/ui/team/activity/AlterTeamIntroActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
astore 1
aload 0
getstatic com/nd/schoollife/R$id/btn_common_head_back I
invokevirtual com/nd/schoollife/ui/team/activity/AlterTeamIntroActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
astore 2
aload 1
aload 0
getfield com/nd/schoollife/ui/team/activity/AlterTeamIntroActivity/alterTeamInfoOnClickListener Lcom/nd/schoollife/ui/team/activity/AlterTeamIntroActivity$AlterTeamInfoOnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 2
aload 0
getfield com/nd/schoollife/ui/team/activity/AlterTeamIntroActivity/alterTeamInfoOnClickListener Lcom/nd/schoollife/ui/team/activity/AlterTeamIntroActivity$AlterTeamInfoOnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/schoollife/R$id/et_alter_team_intro_new_team_intro I
invokevirtual com/nd/schoollife/ui/team/activity/AlterTeamIntroActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/team/view/ExEditText
astore 1
aload 1
new com/nd/schoollife/ui/common/util/CommunityUtils$MaxLengthWatcher
dup
aload 0
sipush 140
aload 1
invokespecial com/nd/schoollife/ui/common/util/CommunityUtils$MaxLengthWatcher/<init>(Landroid/content/Context;ILandroid/widget/EditText;)V
invokevirtual com/nd/schoollife/ui/team/view/ExEditText/addTextChangedListener(Landroid/text/TextWatcher;)V
return
.limit locals 3
.limit stack 6
.end method

.method protected initHeadView(Landroid/content/Context;)Landroid/view/View;
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/common_head I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
areturn
.limit locals 2
.limit stack 3
.end method
