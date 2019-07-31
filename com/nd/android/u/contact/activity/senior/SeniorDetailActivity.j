.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/senior/SeniorDetailActivity
.super com/product/android/ui/activity/HeaderActivity
.implements android/view/View$OnClickListener
.inner class inner com/nd/android/u/contact/activity/senior/SeniorDetailActivity$1
.inner class inner com/nd/android/u/contact/activity/senior/SeniorDetailActivity$2
.inner class inner com/nd/android/u/contact/activity/senior/SeniorDetailActivity$3
.inner class public final AlreadyApplyCoachTask inner com/nd/android/u/contact/activity/senior/SeniorDetailActivity$AlreadyApplyCoachTask outer com/nd/android/u/contact/activity/senior/SeniorDetailActivity
.inner class public final ApplyGuideTask inner com/nd/android/u/contact/activity/senior/SeniorDetailActivity$ApplyGuideTask outer com/nd/android/u/contact/activity/senior/SeniorDetailActivity
.inner class public final GetSeniorDetailTask inner com/nd/android/u/contact/activity/senior/SeniorDetailActivity$GetSeniorDetailTask outer com/nd/android/u/contact/activity/senior/SeniorDetailActivity

.field private 'alreadyApplyCoachTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'alreadyApplyCoachTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'applyGuideRequestTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'applyGuideRequestTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'btnApplyGuide' Landroid/widget/Button;

.field private 'displayImageOptions' Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private 'errorMsg' Ljava/lang/String;

.field private 'getSeniorDetailTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'getSeniorDetailTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'imgAvator' Landroid/widget/ImageView;

.field private 'loadingDialog' Landroid/app/ProgressDialog;

.field private 'mClass' Ljava/lang/String;

.field private 'selectedSeniorPosition' I

.field private 'seniorInfo' Lcom/nd/android/u/contact/dataStructure/SeniorInfo;

.field private 'tvCollage' Landroid/widget/TextView;

.field private 'tvHighSchool' Landroid/widget/TextView;

.field private 'tvName' Landroid/widget/TextView;

.field private 'tvNative' Landroid/widget/TextView;

.field private 'tvSingnature' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
iconst_m1
putfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/selectedSeniorPosition I
aload 0
ldc ""
putfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/mClass Ljava/lang/String;
aload 0
new com/nostra13/universalimageloader/core/DisplayImageOptions$Builder
dup
invokespecial com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/<init>()V
getstatic com/nd/android/u/contact/R$drawable/user_face_boy_default_circle I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nd/android/u/contact/R$drawable/user_face_boy_default_circle I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nd/android/u/contact/R$drawable/user_face_boy_default_circle I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
new com/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer
dup
bipush 20
invokespecial com/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer/<init>(I)V
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
putfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/displayImageOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aload 0
new com/nd/android/u/contact/activity/senior/SeniorDetailActivity$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/senior/SeniorDetailActivity$1/<init>(Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;)V
putfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/getSeniorDetailTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
new com/nd/android/u/contact/activity/senior/SeniorDetailActivity$2
dup
aload 0
invokespecial com/nd/android/u/contact/activity/senior/SeniorDetailActivity$2/<init>(Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;)V
putfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/applyGuideRequestTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
new com/nd/android/u/contact/activity/senior/SeniorDetailActivity$3
dup
aload 0
invokespecial com/nd/android/u/contact/activity/senior/SeniorDetailActivity$3/<init>(Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;)V
putfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/alreadyApplyCoachTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 5
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;)Lcom/nd/android/u/contact/dataStructure/SeniorInfo;
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/seniorInfo Lcom/nd/android/u/contact/dataStructure/SeniorInfo;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;Lcom/nd/android/u/contact/dataStructure/SeniorInfo;)Lcom/nd/android/u/contact/dataStructure/SeniorInfo;
aload 0
aload 1
putfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/seniorInfo Lcom/nd/android/u/contact/dataStructure/SeniorInfo;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/errorMsg Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/errorMsg Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;Lcom/nd/android/u/contact/dataStructure/SeniorInfo;Z)V
aload 0
aload 1
iload 2
invokespecial com/nd/android/u/contact/activity/senior/SeniorDetailActivity/showData(Lcom/nd/android/u/contact/dataStructure/SeniorInfo;Z)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/senior/SeniorDetailActivity/showLoading(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;)Landroid/widget/Button;
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/btnApplyGuide Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;)I
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/selectedSeniorPosition I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;)V
aload 0
invokespecial com/nd/android/u/contact/activity/senior/SeniorDetailActivity/hideLoading()V
return
.limit locals 1
.limit stack 1
.end method

.method private alreadyApplyCoach()V
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/alreadyApplyCoachTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/alreadyApplyCoachTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/contact/activity/senior/SeniorDetailActivity$AlreadyApplyCoachTask
dup
aload 0
invokespecial com/nd/android/u/contact/activity/senior/SeniorDetailActivity$AlreadyApplyCoachTask/<init>(Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;)V
putfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/alreadyApplyCoachTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/alreadyApplyCoachTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/alreadyApplyCoachTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/alreadyApplyCoachTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 1
aastore
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 2
.limit stack 5
.end method

.method private applyGuide()V
aload 0
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
getstatic com/nd/android/u/contact/R$string/server_request_fail I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/applyGuideRequestTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/applyGuideRequestTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L1
aload 0
aload 0
getstatic com/nd/android/u/contact/R$string/yx_wait_for_apply_guide I
invokevirtual com/nd/android/u/contact/activity/senior/SeniorDetailActivity/getString(I)Ljava/lang/String;
invokespecial com/nd/android/u/contact/activity/senior/SeniorDetailActivity/showLoading(Ljava/lang/String;)V
return
L1:
aload 0
new com/nd/android/u/contact/activity/senior/SeniorDetailActivity$ApplyGuideTask
dup
aload 0
invokespecial com/nd/android/u/contact/activity/senior/SeniorDetailActivity$ApplyGuideTask/<init>(Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;)V
putfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/applyGuideRequestTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/applyGuideRequestTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/applyGuideRequestTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/applyGuideRequestTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 1
aastore
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 2
.limit stack 5
.end method

.method private cancelApplyGuide()V
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/applyGuideRequestTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/applyGuideRequestTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/applyGuideRequestTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L0:
return
.limit locals 1
.limit stack 2
.end method

.method private cancelGetSeniorDetail()V
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/getSeniorDetailTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/getSeniorDetailTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/getSeniorDetailTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L0:
return
.limit locals 1
.limit stack 2
.end method

.method private getSeniorDetailData()V
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/getSeniorDetailTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/getSeniorDetailTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/contact/activity/senior/SeniorDetailActivity$GetSeniorDetailTask
dup
aload 0
invokespecial com/nd/android/u/contact/activity/senior/SeniorDetailActivity$GetSeniorDetailTask/<init>(Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;)V
putfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/getSeniorDetailTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/getSeniorDetailTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/getSeniorDetailTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/getSeniorDetailTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 1
aastore
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 2
.limit stack 5
.end method

.method private hideLoading()V
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/loadingDialog Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/loadingDialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/isShowing()Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/loadingDialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method private showData(Lcom/nd/android/u/contact/dataStructure/SeniorInfo;Z)V
.catch java/lang/IllegalArgumentException from L0 to L1 using L2
aload 1
ifnonnull L3
return
L3:
iload 2
ifeq L4
aload 1
getfield com/nd/android/u/contact/dataStructure/SeniorInfo/uid J
iconst_5
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/imgAvator Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/displayImageOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayCircleImage(JBLandroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
L4:
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/tvName Landroid/widget/TextView;
aload 1
getfield com/nd/android/u/contact/dataStructure/SeniorInfo/nickname Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/tvCollage Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
getfield com/nd/android/u/contact/dataStructure/SeniorInfo/joindate Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
getfield com/nd/android/u/contact/dataStructure/SeniorInfo/majorname Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/mClass Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/tvNative Landroid/widget/TextView;
aload 1
getfield com/nd/android/u/contact/dataStructure/SeniorInfo/nativePlace Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/tvHighSchool Landroid/widget/TextView;
aload 1
getfield com/nd/android/u/contact/dataStructure/SeniorInfo/highschool Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 1
getfield com/nd/android/u/contact/dataStructure/SeniorInfo/signture Ljava/lang/String;
astore 3
aload 3
astore 1
getstatic com/product/android/business/config/Configuration/DEFAULTUNITID I
bipush 55
if_icmpne L1
aload 3
astore 1
L0:
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
new java/lang/String
dup
aload 3
iconst_0
invokestatic android/util/Base64/decode(Ljava/lang/String;I)[B
invokespecial java/lang/String/<init>([B)V
astore 1
L1:
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/tvSingnature Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L2:
astore 1
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "\u8fd9\u4e0d\u662fBase64\u5b57\u7b26\u4e32\u4e0d\u8fdb\u884c\u89e3\u5bc6"
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
aload 3
astore 1
goto L1
.limit locals 4
.limit stack 5
.end method

.method private showLoading(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/loadingDialog Landroid/app/ProgressDialog;
ifnonnull L0
aload 0
aload 0
ldc ""
aload 1
iconst_1
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
putfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/loadingDialog Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/loadingDialog Landroid/app/ProgressDialog;
iconst_1
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
L0:
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/loadingDialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/isShowing()Z
ifne L1
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/loadingDialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/show()V
L1:
return
.limit locals 2
.limit stack 5
.end method

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/senior_detail_avator I
invokevirtual com/nd/android/u/contact/activity/senior/SeniorDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/imgAvator Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/senior_detail_name I
invokevirtual com/nd/android/u/contact/activity/senior/SeniorDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/tvName Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/senior_detail_collage I
invokevirtual com/nd/android/u/contact/activity/senior/SeniorDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/tvCollage Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/senior_detail_native I
invokevirtual com/nd/android/u/contact/activity/senior/SeniorDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/tvNative Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/senior_detail_highschool I
invokevirtual com/nd/android/u/contact/activity/senior/SeniorDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/tvHighSchool Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/senior_detail_signature I
invokevirtual com/nd/android/u/contact/activity/senior/SeniorDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/tvSingnature Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/senior_detail_apply_guide I
invokevirtual com/nd/android/u/contact/activity/senior/SeniorDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/btnApplyGuide Landroid/widget/Button;
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/btnApplyGuide Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 3
.end method

.method protected initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponentValue()V
ldc ""
astore 1
aload 0
invokevirtual com/nd/android/u/contact/activity/senior/SeniorDetailActivity/getIntent()Landroid/content/Intent;
ldc "position"
invokevirtual android/content/Intent/hasExtra(Ljava/lang/String;)Z
ifeq L0
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/senior/SeniorDetailActivity/getIntent()Landroid/content/Intent;
ldc "position"
iconst_m1
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
putfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/selectedSeniorPosition I
L0:
aload 1
astore 2
aload 0
invokevirtual com/nd/android/u/contact/activity/senior/SeniorDetailActivity/getIntent()Landroid/content/Intent;
ldc "data"
invokevirtual android/content/Intent/hasExtra(Ljava/lang/String;)Z
ifeq L1
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/senior/SeniorDetailActivity/getIntent()Landroid/content/Intent;
ldc "data"
invokevirtual android/content/Intent/getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
checkcast com/nd/android/u/contact/dataStructure/SeniorInfo
putfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/seniorInfo Lcom/nd/android/u/contact/dataStructure/SeniorInfo;
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/seniorInfo Lcom/nd/android/u/contact/dataStructure/SeniorInfo;
getfield com/nd/android/u/contact/dataStructure/SeniorInfo/gender I
iconst_1
if_icmpne L2
aload 0
getstatic com/nd/android/u/contact/R$string/yx_senior_male_detail I
invokevirtual com/nd/android/u/contact/activity/senior/SeniorDetailActivity/getString(I)Ljava/lang/String;
astore 1
L3:
aload 0
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/seniorInfo Lcom/nd/android/u/contact/dataStructure/SeniorInfo;
iconst_1
invokespecial com/nd/android/u/contact/activity/senior/SeniorDetailActivity/showData(Lcom/nd/android/u/contact/dataStructure/SeniorInfo;Z)V
aload 1
astore 2
L1:
aload 0
aload 2
invokevirtual com/nd/android/u/contact/activity/senior/SeniorDetailActivity/setActivityTitle(Ljava/lang/String;)V
return
L2:
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/seniorInfo Lcom/nd/android/u/contact/dataStructure/SeniorInfo;
getfield com/nd/android/u/contact/dataStructure/SeniorInfo/gender I
iconst_2
if_icmpne L3
aload 0
getstatic com/nd/android/u/contact/R$string/yx_senior_female_detail I
invokevirtual com/nd/android/u/contact/activity/senior/SeniorDetailActivity/getString(I)Ljava/lang/String;
astore 1
goto L3
.limit locals 3
.limit stack 4
.end method

.method public onClick(Landroid/view/View;)V
getstatic com/nd/android/u/contact/R$id/senior_detail_apply_guide I
aload 1
invokevirtual android/view/View/getId()I
if_icmpne L0
aload 0
invokespecial com/nd/android/u/contact/activity/senior/SeniorDetailActivity/applyGuide()V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/nd/android/u/contact/R$layout/activity_senior_detail I
invokevirtual com/nd/android/u/contact/activity/senior/SeniorDetailActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/contact/activity/senior/SeniorDetailActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/contact/activity/senior/SeniorDetailActivity/initComponentValue()V
aload 0
invokevirtual com/nd/android/u/contact/activity/senior/SeniorDetailActivity/initEvent()V
aload 0
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifeq L0
aload 0
invokespecial com/nd/android/u/contact/activity/senior/SeniorDetailActivity/alreadyApplyCoach()V
aload 0
invokespecial com/nd/android/u/contact/activity/senior/SeniorDetailActivity/getSeniorDetailData()V
return
L0:
getstatic com/nd/android/u/contact/R$string/server_request_fail I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onDestroy()V
aload 0
invokespecial com/nd/android/u/contact/activity/senior/SeniorDetailActivity/cancelApplyGuide()V
aload 0
invokespecial com/nd/android/u/contact/activity/senior/SeniorDetailActivity/cancelGetSeniorDetail()V
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/alreadyApplyCoachTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/alreadyApplyCoachTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity/alreadyApplyCoachTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L0:
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method
