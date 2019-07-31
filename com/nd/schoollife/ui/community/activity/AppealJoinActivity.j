.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/community/activity/AppealJoinActivity
.super com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity
.implements android/view/View$OnClickListener
.implements com/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback

.field private final 'MAX_OF_WORD' I

.field private 'avarteKey' Ljava/lang/String;

.field private 'ivHead' Landroid/widget/ImageView;

.field private 'mContent' Landroid/widget/EditText;

.field private 'mId' J

.field private 'mName' Ljava/lang/String;

.field private 'mSoftInput' Lcom/nd/schoollife/common/utils/ui/SoftInputUtil;

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/<init>()V
aload 0
bipush 75
putfield com/nd/schoollife/ui/community/activity/AppealJoinActivity/MAX_OF_WORD I
return
.limit locals 1
.limit stack 2
.end method

.method protected initContentView()V
aload 0
getstatic com/nd/schoollife/R$layout/activity_appeal_join I
invokevirtual com/nd/schoollife/ui/community/activity/AppealJoinActivity/setContentView(I)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/et_community_application_content I
invokevirtual com/nd/schoollife/ui/community/activity/AppealJoinActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/schoollife/ui/community/activity/AppealJoinActivity/mContent Landroid/widget/EditText;
aload 0
getfield com/nd/schoollife/ui/community/activity/AppealJoinActivity/mContent Landroid/widget/EditText;
new com/nd/schoollife/ui/common/util/CommunityUtils$MaxLengthWatcher
dup
aload 0
bipush 75
aload 0
getfield com/nd/schoollife/ui/community/activity/AppealJoinActivity/mContent Landroid/widget/EditText;
invokespecial com/nd/schoollife/ui/common/util/CommunityUtils$MaxLengthWatcher/<init>(Landroid/content/Context;ILandroid/widget/EditText;)V
invokevirtual android/widget/EditText/addTextChangedListener(Landroid/text/TextWatcher;)V
aload 0
getstatic com/nd/schoollife/R$id/tv_community_item_title I
invokevirtual com/nd/schoollife/ui/community/activity/AppealJoinActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 0
getfield com/nd/schoollife/ui/community/activity/AppealJoinActivity/mName Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/iv_appeal_community_head I
invokevirtual com/nd/schoollife/ui/community/activity/AppealJoinActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/community/activity/AppealJoinActivity/ivHead Landroid/widget/ImageView;
aload 0
getfield com/nd/schoollife/ui/community/activity/AppealJoinActivity/mId J
aload 0
getfield com/nd/schoollife/ui/community/activity/AppealJoinActivity/avarteKey Ljava/lang/String;
aload 0
getfield com/nd/schoollife/ui/community/activity/AppealJoinActivity/ivHead Landroid/widget/ImageView;
invokestatic com/nd/schoollife/ui/common/util/CommunityUtils/showAvatar(JLjava/lang/String;Landroid/widget/ImageView;)V
return
.limit locals 1
.limit stack 6
.end method

.method protected initData(Landroid/os/Bundle;)V
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/community/activity/AppealJoinActivity/getIntent()Landroid/content/Intent;
ldc "LONG_TEAM_OR_COMMUNITY_ID"
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putfield com/nd/schoollife/ui/community/activity/AppealJoinActivity/mId J
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/community/activity/AppealJoinActivity/getIntent()Landroid/content/Intent;
ldc "STRING_TEAM_OR_COMMUNITY_NAME"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/schoollife/ui/community/activity/AppealJoinActivity/mName Ljava/lang/String;
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/community/activity/AppealJoinActivity/getIntent()Landroid/content/Intent;
ldc "STRING_COMMUNITY_AVARTA_URL"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/schoollife/ui/community/activity/AppealJoinActivity/avarteKey Ljava/lang/String;
aload 0
new com/nd/schoollife/common/utils/ui/SoftInputUtil
dup
aload 0
getfield com/nd/schoollife/ui/community/activity/AppealJoinActivity/mCtx Landroid/content/Context;
invokespecial com/nd/schoollife/common/utils/ui/SoftInputUtil/<init>(Landroid/content/Context;)V
putfield com/nd/schoollife/ui/community/activity/AppealJoinActivity/mSoftInput Lcom/nd/schoollife/common/utils/ui/SoftInputUtil;
return
.limit locals 2
.limit stack 5
.end method

.method protected initEvent()V
aload 0
getstatic com/nd/schoollife/R$id/btn_common_head_back I
invokevirtual com/nd/schoollife/ui/community/activity/AppealJoinActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/schoollife/R$id/btn_community_application_commit I
invokevirtual com/nd/schoollife/ui/community/activity/AppealJoinActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
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
getstatic com/nd/schoollife/R$string/community_application_title I
invokevirtual android/widget/TextView/setText(I)V
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/nd/schoollife/R$id/btn_common_head_back I
if_icmpne L0
aload 0
getfield com/nd/schoollife/ui/community/activity/AppealJoinActivity/mSoftInput Lcom/nd/schoollife/common/utils/ui/SoftInputUtil;
aload 0
getfield com/nd/schoollife/ui/community/activity/AppealJoinActivity/mContent Landroid/widget/EditText;
invokevirtual com/nd/schoollife/common/utils/ui/SoftInputUtil/hideSoftInput(Landroid/view/View;)V
aload 0
invokevirtual com/nd/schoollife/ui/community/activity/AppealJoinActivity/onBackPressed()V
L1:
return
L0:
iload 2
getstatic com/nd/schoollife/R$id/btn_community_application_commit I
if_icmpne L1
aload 0
getfield com/nd/schoollife/ui/community/activity/AppealJoinActivity/mContent Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
iconst_0
bipush 75
invokestatic com/nd/schoollife/ui/common/util/PostUtils/getWordLength(Ljava/lang/String;ZI)[F
iconst_0
faload
ldc_w 75.0F
fcmpl
ifle L2
aload 0
getfield com/nd/schoollife/ui/community/activity/AppealJoinActivity/mCtx Landroid/content/Context;
aload 0
getstatic com/nd/schoollife/R$string/post_content_max I
iconst_1
anewarray java/lang/Object
dup
iconst_0
bipush 75
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokevirtual com/nd/schoollife/ui/community/activity/AppealJoinActivity/getString(I[Ljava/lang/Object;)Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;Ljava/lang/String;)V
return
L2:
new com/nd/schoollife/ui/community/task/CommunityProcessTask
dup
aload 0
iconst_1
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_SUBMIT Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 0
invokespecial com/nd/schoollife/ui/community/task/CommunityProcessTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
iconst_3
anewarray java/lang/String
dup
iconst_0
iconst_1
invokestatic java/lang/String/valueOf(Z)Ljava/lang/String;
aastore
dup
iconst_1
aload 0
getfield com/nd/schoollife/ui/community/activity/AppealJoinActivity/mId J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
aastore
dup
iconst_2
aload 0
getfield com/nd/schoollife/ui/community/activity/AppealJoinActivity/mContent Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
aastore
invokevirtual com/nd/schoollife/ui/community/task/CommunityProcessTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 3
.limit stack 7
.end method

.method public processOnPostExecute(ILcom/nd/schoollife/ui/common/task/CallStyle;Ljava/lang/Object;)V
iload 1
iconst_1
if_icmpne L0
aload 3
ifnull L0
aload 3
instanceof com/nd/schoollife/common/bean/SchoolLifeResultBase
ifeq L0
aload 3
checkcast com/nd/schoollife/common/bean/SchoolLifeResultBase
astore 3
aload 3
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/isSuccess()Z
ifeq L1
aload 2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_SUBMIT Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L0
aload 0
getfield com/nd/schoollife/ui/community/activity/AppealJoinActivity/mCtx Landroid/content/Context;
ldc "\u7533\u8bf7\u5df2\u63d0\u4ea4\uff0c\u8bf7\u7b49\u5f85\u56e2\u4f53\u7ba1\u7406\u5458\u5ba1\u6838"
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showLongToast(Landroid/content/Context;Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/AppealJoinActivity/mSoftInput Lcom/nd/schoollife/common/utils/ui/SoftInputUtil;
aload 0
getfield com/nd/schoollife/ui/community/activity/AppealJoinActivity/mContent Landroid/widget/EditText;
invokevirtual com/nd/schoollife/common/utils/ui/SoftInputUtil/hideSoftInput(Landroid/view/View;)V
aload 0
invokevirtual com/nd/schoollife/ui/community/activity/AppealJoinActivity/finish()V
L0:
return
L1:
aload 3
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/isBusinessError()Z
ifeq L2
aload 3
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/getErrorBean()Ljava/lang/Object;
ifnull L0
aload 3
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/getErrorBean()Ljava/lang/Object;
instanceof com/nd/schoollife/common/bean/CommunityErrorBean
ifeq L0
aload 3
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/getErrorBean()Ljava/lang/Object;
checkcast com/nd/schoollife/common/bean/CommunityErrorBean
invokevirtual com/nd/schoollife/common/bean/CommunityErrorBean/getErr_msg()Ljava/lang/String;
astore 2
aload 0
getfield com/nd/schoollife/ui/community/activity/AppealJoinActivity/mCtx Landroid/content/Context;
aload 2
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showLongToast(Landroid/content/Context;Ljava/lang/String;)V
return
L2:
aload 0
getfield com/nd/schoollife/ui/community/activity/AppealJoinActivity/mCtx Landroid/content/Context;
aload 3
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/getResultMsg()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showLongToast(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 4
.limit stack 2
.end method
