.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity
.super com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity
.inner class inner com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$1
.inner class inner com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$2
.inner class inner com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$3
.inner class inner com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$4
.inner class private AlterCommunitySignOnClickListener inner com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$AlterCommunitySignOnClickListener outer com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity
.inner class private CommunitySignGridListener inner com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$CommunitySignGridListener outer com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity
.inner class private SelItemGridViewOnClickListener inner com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$SelItemGridViewOnClickListener outer com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity
.inner class private SelItemGridViewOnLongClickListener inner com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$SelItemGridViewOnLongClickListener outer com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity

.field public static final 'MAX_PAGE_NUM' I = 12


.field static final 'MAX_SEL_NUM' I = 5


.field public static final 'RESULT_OK' I = 1


.field private 'alterCommunitySignOnClickListener' Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$AlterCommunitySignOnClickListener;

.field 'communityId' J

.field private 'communityTags' Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;

.field private 'gvCommunitySigns' Landroid/widget/GridView;

.field private 'isCommiting' Z

.field private 'isUpdateGommunitySigns' Z

.field private 'mCurrentPage' I

.field private 'mTagNum' I

.field private 'pbLoading' Landroid/widget/ProgressBar;

.field private 'selTags' Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/<init>()V
aload 0
aconst_null
putfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/selTags Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
aload 0
aconst_null
putfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/communityTags Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
aload 0
aconst_null
putfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/alterCommunitySignOnClickListener Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$AlterCommunitySignOnClickListener;
aload 0
iconst_0
putfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/mCurrentPage I
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$1002(Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;I)I
aload 0
iload 1
putfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/mTagNum I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1100(Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;)Landroid/widget/GridView;
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/gvCommunitySigns Landroid/widget/GridView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1200(Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1300(Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/mCtx Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1400(Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;)Landroid/widget/ProgressBar;
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/pbLoading Landroid/widget/ProgressBar;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1502(Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;Z)Z
aload 0
iload 1
putfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/isUpdateGommunitySigns Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1600(Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;)V
aload 0
invokespecial com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/commit()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$402(Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;Z)Z
aload 0
iload 1
putfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/isCommiting Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$500(Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;)Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/selTags Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;)Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/communityTags Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;)V
aload 0
invokespecial com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/updateCurSelSignCrid()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/uncheckCommunitySign(Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$900(Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;I)V
aload 0
iload 1
invokespecial com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/popSelSignMenu(I)V
return
.limit locals 2
.limit stack 2
.end method

.method private commit()V
aload 0
invokespecial com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/onCommitTask()V
return
.limit locals 1
.limit stack 1
.end method

.method private onCommitTask()V
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/isCommiting Z
ifeq L0
return
L0:
aload 0
iconst_1
putfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/isCommiting Z
new com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$1
dup
aload 0
invokespecial com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$1/<init>(Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;)V
astore 3
new com/nd/schoollife/ui/community/task/CommunityTask
dup
aload 0
sipush 4099
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_SUBMIT Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 3
invokespecial com/nd/schoollife/ui/community/task/CommunityTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/community/task/CommunityTask$CommunityTaskCallback;)V
astore 5
ldc ""
astore 3
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/selTags Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityTagList/size()I
istore 2
aload 3
astore 4
iload 2
ifeq L1
iconst_0
istore 1
L2:
aload 3
astore 4
iload 1
iload 2
iconst_1
isub
if_icmpgt L1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/selTags Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
iload 1
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityTagList/getTagInfoByIndex(I)Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;
invokevirtual com/nd/schoollife/common/bean/structure/CommunityTagInfoBean/getId()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ":"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
iload 1
iconst_1
iadd
istore 1
goto L2
L1:
aload 5
iconst_2
anewarray java/lang/String
dup
iconst_0
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/communityId J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
aastore
dup
iconst_1
aload 4
aastore
invokevirtual com/nd/schoollife/ui/community/task/CommunityTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 6
.limit stack 6
.end method

.method private onNextCoummintySignTask()V
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/isUpdateGommunitySigns Z
ifeq L0
return
L0:
aload 0
iconst_1
putfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/isUpdateGommunitySigns Z
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/pbLoading Landroid/widget/ProgressBar;
iconst_0
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/gvCommunitySigns Landroid/widget/GridView;
bipush 8
invokevirtual android/widget/GridView/setVisibility(I)V
new com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$4
dup
aload 0
invokespecial com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$4/<init>(Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;)V
astore 1
new com/nd/schoollife/ui/community/task/CommunityTask
dup
aload 0
sipush 4098
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_REFLASH Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 1
invokespecial com/nd/schoollife/ui/community/task/CommunityTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/community/task/CommunityTask$CommunityTaskCallback;)V
astore 1
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/mCurrentPage I
bipush 12
imul
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/mTagNum I
if_icmpge L1
aload 0
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/mCurrentPage I
iconst_1
iadd
putfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/mCurrentPage I
aload 1
iconst_2
anewarray java/lang/String
dup
iconst_0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/mCurrentPage I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aastore
dup
iconst_1
ldc "12"
aastore
invokevirtual com/nd/schoollife/ui/community/task/CommunityTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
L1:
aload 0
iconst_1
putfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/mCurrentPage I
aload 1
iconst_2
anewarray java/lang/String
dup
iconst_0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/mCurrentPage I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aastore
dup
iconst_1
ldc "12"
aastore
invokevirtual com/nd/schoollife/ui/community/task/CommunityTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 2
.limit stack 6
.end method

.method private popSelSignMenu(I)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/create_community_confirm_delete_tag I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/selTags Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
iload 1
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityTagList/getTagInfoByIndex(I)Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;
invokevirtual com/nd/schoollife/common/bean/structure/CommunityTagInfoBean/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\"?"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
aload 0
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/operator I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
aload 2
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/confirm I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/cancel I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
new com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$2
dup
aload 0
iload 1
invokespecial com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$2/<init>(Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;I)V
new com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$3
dup
aload 0
invokespecial com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$3/<init>(Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;)V
invokevirtual com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/showConfirmDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
return
.limit locals 3
.limit stack 9
.end method

.method private uncheckCommunitySign(Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/communityTags Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
aload 1
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityTagList/findTagInfo(Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;)I
istore 2
iload 2
iflt L0
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/gvCommunitySigns Landroid/widget/GridView;
iload 2
invokevirtual android/widget/GridView/getChildAt(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/team/view/ExtCheckButton
iconst_0
invokevirtual com/nd/schoollife/ui/team/view/ExtCheckButton/setCheck(Z)V
L0:
return
.limit locals 3
.limit stack 2
.end method

.method private updateCurSelSignCrid()V
aload 0
getstatic com/nd/schoollife/R$id/gv_alter_community_sign_sel_signs I
invokevirtual com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/GridView
new com/nd/schoollife/ui/community/adapter/CommunityTagSelectedGridviewAdapter
dup
aload 0
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/selTags Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
invokespecial com/nd/schoollife/ui/community/adapter/CommunityTagSelectedGridviewAdapter/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;)V
invokevirtual android/widget/GridView/setAdapter(Landroid/widget/ListAdapter;)V
return
.limit locals 1
.limit stack 5
.end method

.method protected initContentView()V
aload 0
getstatic com/nd/schoollife/R$layout/activity_alter_community_sign I
invokevirtual com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/setContentView(I)V
aload 0
getstatic com/nd/schoollife/R$id/gv_alter_community_sign_sel_signs I
invokevirtual com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/GridView
new com/nd/schoollife/ui/community/adapter/CommunityTagSelectedGridviewAdapter
dup
aload 0
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/selTags Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
invokespecial com/nd/schoollife/ui/community/adapter/CommunityTagSelectedGridviewAdapter/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;)V
invokevirtual android/widget/GridView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/pb_alter_community_sign_load_community_sign I
invokevirtual com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/pbLoading Landroid/widget/ProgressBar;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/gv_alter_community_sign_community_signs I
invokevirtual com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/GridView
putfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/gvCommunitySigns Landroid/widget/GridView;
return
.limit locals 1
.limit stack 5
.end method

.method protected initData(Landroid/os/Bundle;)V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
new com/nd/schoollife/ui/community/adapter/CommunityTagList
dup
invokespecial com/nd/schoollife/ui/community/adapter/CommunityTagList/<init>()V
putfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/selTags Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
aload 0
new com/nd/schoollife/ui/community/adapter/CommunityTagList
dup
invokespecial com/nd/schoollife/ui/community/adapter/CommunityTagList/<init>()V
putfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/communityTags Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
aload 0
invokevirtual com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/getIntent()Landroid/content/Intent;
astore 1
aload 0
aload 1
ldc "LONG_TEAM_OR_COMMUNITY_ID"
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/communityId J
iconst_0
istore 2
L3:
iload 2
iconst_5
if_icmpge L4
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "tagname"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 7
aload 7
ifnull L4
aload 7
ldc "none"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L5
L4:
aload 0
new com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$AlterCommunitySignOnClickListener
dup
aload 0
aconst_null
invokespecial com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$AlterCommunitySignOnClickListener/<init>(Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$1;)V
putfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/alterCommunitySignOnClickListener Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$AlterCommunitySignOnClickListener;
aload 0
iconst_0
putfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/isUpdateGommunitySigns Z
aload 0
iconst_0
putfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/isCommiting Z
return
L5:
ldc2_w -1L
lstore 3
L0:
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "tagid"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
lstore 5
L1:
lload 5
lstore 3
L6:
new com/nd/schoollife/common/bean/structure/CommunityTagInfoBean
dup
invokespecial com/nd/schoollife/common/bean/structure/CommunityTagInfoBean/<init>()V
astore 8
aload 8
lload 3
invokevirtual com/nd/schoollife/common/bean/structure/CommunityTagInfoBean/setId(J)V
aload 8
aload 7
invokevirtual com/nd/schoollife/common/bean/structure/CommunityTagInfoBean/setName(Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/selTags Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
aload 8
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityTagList/addTagInfo(Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;)I
pop
iload 2
iconst_1
iadd
istore 2
goto L3
L2:
astore 8
aload 8
invokevirtual java/lang/Exception/printStackTrace()V
goto L6
.limit locals 9
.limit stack 5
.end method

.method protected initEvent()V
aload 0
getstatic com/nd/schoollife/R$id/btn_common_head_back I
invokevirtual com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/alterCommunitySignOnClickListener Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$AlterCommunitySignOnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/schoollife/R$id/btn_alter_community_sign_next_community_signs I
invokevirtual com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/alterCommunitySignOnClickListener Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$AlterCommunitySignOnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/schoollife/R$id/btn_alter_community_sign_commit I
invokevirtual com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/alterCommunitySignOnClickListener Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$AlterCommunitySignOnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/schoollife/R$id/gv_alter_community_sign_sel_signs I
invokevirtual com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/GridView
astore 1
aload 1
new com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$SelItemGridViewOnLongClickListener
dup
aload 0
aconst_null
invokespecial com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$SelItemGridViewOnLongClickListener/<init>(Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$1;)V
invokevirtual android/widget/GridView/setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
aload 1
new com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$SelItemGridViewOnClickListener
dup
aload 0
aconst_null
invokespecial com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$SelItemGridViewOnClickListener/<init>(Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$1;)V
invokevirtual android/widget/GridView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/gvCommunitySigns Landroid/widget/GridView;
new com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$CommunitySignGridListener
dup
aload 0
aconst_null
invokespecial com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$CommunitySignGridListener/<init>(Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$1;)V
invokevirtual android/widget/GridView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
invokevirtual com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/nextCommunitySigns()V
return
.limit locals 2
.limit stack 5
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
aload 0
getstatic com/nd/schoollife/R$string/alter_community_tags I
invokevirtual com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public nextCommunitySigns()V
aload 0
invokespecial com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/onNextCoummintySignTask()V
return
.limit locals 1
.limit stack 1
.end method
