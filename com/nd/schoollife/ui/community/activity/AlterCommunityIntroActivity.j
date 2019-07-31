.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity
.super com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity
.inner class inner com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity$1
.inner class private AlterCommunityIntroClickListener inner com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity$AlterCommunityIntroClickListener outer com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity
.inner class private OwnOnTextContextMenuItem inner com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity$OwnOnTextContextMenuItem outer com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity

.field public static final 'RESULT_OK' I = 1


.field private 'alterCommunityIntroClickListener' Lcom/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity$AlterCommunityIntroClickListener;

.field 'communityId' J

.field 'ownOnTextContextMenuItem' Lcom/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity$OwnOnTextContextMenuItem;

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/<init>()V
aload 0
aconst_null
putfield com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity/alterCommunityIntroClickListener Lcom/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity$AlterCommunityIntroClickListener;
aload 0
aconst_null
putfield com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity/ownOnTextContextMenuItem Lcom/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity$OwnOnTextContextMenuItem;
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity;)V
aload 0
invokespecial com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity/commit()V
return
.limit locals 1
.limit stack 1
.end method

.method private commit()V
aload 0
getstatic com/nd/schoollife/R$id/et_alter_community_intro_new_community_intro I
invokevirtual com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity/findViewById(I)Landroid/view/View;
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
getstatic com/nd/schoollife/R$string/community_intro_length_must_bigger_0 I
invokevirtual com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity/getString(I)Ljava/lang/String;
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
getstatic com/nd/schoollife/R$string/community_intro_length_must_less_140 I
invokevirtual com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity/getString(I)Ljava/lang/String;
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
invokespecial com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity/onCommitTask(Ljava/lang/String;)V
return
.limit locals 3
.limit stack 3
.end method

.method private onCommitTask(Ljava/lang/String;)V
new com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity$1
dup
aload 0
invokespecial com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity$1/<init>(Lcom/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity;)V
astore 2
new com/nd/schoollife/ui/community/task/CommunityTask
dup
aload 0
sipush 4100
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_SUBMIT Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 2
invokespecial com/nd/schoollife/ui/community/task/CommunityTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/community/task/CommunityTask$CommunityTaskCallback;)V
iconst_2
anewarray java/lang/String
dup
iconst_0
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity/communityId J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
aastore
dup
iconst_1
aload 1
aastore
invokevirtual com/nd/schoollife/ui/community/task/CommunityTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 3
.limit stack 6
.end method

.method protected initContentView()V
aload 0
getstatic com/nd/schoollife/R$layout/activity_alter_community_intro I
invokevirtual com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity/setContentView(I)V
aload 0
invokevirtual com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity/getIntent()Landroid/content/Intent;
astore 2
aload 2
ldc "COMMUNITY_INTRO"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 0
aload 2
ldc "LONG_TEAM_OR_COMMUNITY_ID"
lconst_1
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putfield com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity/communityId J
aload 0
getstatic com/nd/schoollife/R$id/et_alter_community_intro_new_community_intro I
invokevirtual com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
astore 2
aload 2
aload 1
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 2
aload 1
invokevirtual java/lang/String/length()I
invokevirtual android/widget/EditText/setSelection(I)V
return
.limit locals 3
.limit stack 5
.end method

.method protected initData(Landroid/os/Bundle;)V
aload 0
new com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity$AlterCommunityIntroClickListener
dup
aload 0
aconst_null
invokespecial com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity$AlterCommunityIntroClickListener/<init>(Lcom/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity;Lcom/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity$1;)V
putfield com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity/alterCommunityIntroClickListener Lcom/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity$AlterCommunityIntroClickListener;
aload 0
new com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity$OwnOnTextContextMenuItem
dup
aload 0
aconst_null
invokespecial com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity$OwnOnTextContextMenuItem/<init>(Lcom/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity;Lcom/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity$1;)V
putfield com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity/ownOnTextContextMenuItem Lcom/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity$OwnOnTextContextMenuItem;
return
.limit locals 2
.limit stack 5
.end method

.method protected initEvent()V
aload 0
getstatic com/nd/schoollife/R$id/btn_common_head_back I
invokevirtual com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity/alterCommunityIntroClickListener Lcom/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity$AlterCommunityIntroClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/schoollife/R$id/btn_alter_community_info_intro_commit I
invokevirtual com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity/alterCommunityIntroClickListener Lcom/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity$AlterCommunityIntroClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/schoollife/R$id/et_alter_community_intro_new_community_intro I
invokevirtual com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity/findViewById(I)Landroid/view/View;
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
.limit locals 2
.limit stack 6
.end method

.method protected initHeadView(Landroid/content/Context;)Landroid/view/View;
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/common_head I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 1
aload 1
getstatic com/nd/schoollife/R$id/tv_common_head_title I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
getstatic com/nd/schoollife/R$string/alter_community_intro I
invokevirtual android/widget/TextView/setText(I)V
aload 1
areturn
.limit locals 2
.limit stack 3
.end method
