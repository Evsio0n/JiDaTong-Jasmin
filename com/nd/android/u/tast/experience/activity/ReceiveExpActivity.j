.bytecode 50.0
.class public synchronized com/nd/android/u/tast/experience/activity/ReceiveExpActivity
.super android/app/Activity
.implements com/nd/android/u/tast/experience/adapter/ReceiveExperienceAdapter$OnUpdateLevelListener
.inner class static final inner com/nd/android/u/tast/experience/activity/ReceiveExpActivity$1
.inner class inner com/nd/android/u/tast/experience/activity/ReceiveExpActivity$1$1
.inner class inner com/nd/android/u/tast/experience/activity/ReceiveExpActivity$2
.inner class inner com/nd/android/u/tast/experience/activity/ReceiveExpActivity$3
.inner class inner com/nd/android/u/tast/experience/activity/ReceiveExpActivity$3$1
.inner class inner com/nd/android/u/tast/experience/activity/ReceiveExpActivity$4
.inner class inner com/nd/android/u/tast/experience/activity/ReceiveExpActivity$5
.inner class inner com/nd/android/u/tast/experience/activity/ReceiveExpActivity$6
.inner class private GetTodayTask inner com/nd/android/u/tast/experience/activity/ReceiveExpActivity$GetTodayTask outer com/nd/android/u/tast/experience/activity/ReceiveExpActivity

.field private 'animationDrawable' Landroid/graphics/drawable/AnimationDrawable;

.field private 'animationIV' Landroid/widget/ImageView;

.field 'handler' Landroid/os/Handler;

.field private 'isReceived' I

.field private 'ivClose' Landroid/widget/ImageView;

.field private 'ivHeader' Landroid/widget/ImageView;

.field private 'ivLevel' Landroid/widget/ImageView;

.field private 'lvItem' Landroid/widget/ListView;

.field private 'mAdapter' Lcom/nd/android/u/tast/experience/adapter/ReceiveExpAdapter;

.field private 'mTask' Lcom/nd/android/u/tast/experience/activity/ReceiveExpActivity$GetTodayTask;

.field 'myMessageHandler' Landroid/os/Handler;

.field private 'oapScore' Lcom/product/android/commonInterface/task/OapScore;

.field private 'pbExp' Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;

.field private 'rotate' Landroid/view/animation/Animation;

.field private 'tvExp' Landroid/widget/TextView;

.field private 'tvExpTips' Landroid/widget/TextView;

.field private 'tvLevel' Landroid/widget/TextView;

.field private 'tvMeili' Landroid/widget/TextView;

.field private 'tvMeiliTips' Landroid/widget/TextView;

.field private 'tvSeperator' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/isReceived I
aload 0
new com/nd/android/u/tast/experience/activity/ReceiveExpActivity$2
dup
aload 0
invokespecial com/nd/android/u/tast/experience/activity/ReceiveExpActivity$2/<init>(Lcom/nd/android/u/tast/experience/activity/ReceiveExpActivity;)V
putfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/handler Landroid/os/Handler;
aload 0
new com/nd/android/u/tast/experience/activity/ReceiveExpActivity$6
dup
aload 0
invokespecial com/nd/android/u/tast/experience/activity/ReceiveExpActivity$6/<init>(Lcom/nd/android/u/tast/experience/activity/ReceiveExpActivity;)V
putfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/myMessageHandler Landroid/os/Handler;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/tast/experience/activity/ReceiveExpActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/lvItem Landroid/widget/ListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/tast/experience/activity/ReceiveExpActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/tvSeperator Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/nd/android/u/tast/experience/activity/ReceiveExpActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/tvMeiliTips Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/tast/experience/activity/ReceiveExpActivity;Z)V
aload 0
iload 1
invokespecial com/nd/android/u/tast/experience/activity/ReceiveExpActivity/updateData(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/nd/android/u/tast/experience/activity/ReceiveExpActivity;)Landroid/graphics/drawable/AnimationDrawable;
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/animationDrawable Landroid/graphics/drawable/AnimationDrawable;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/tast/experience/activity/ReceiveExpActivity;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/animationIV Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/tast/experience/activity/ReceiveExpActivity;)Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/pbExp Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/tast/experience/activity/ReceiveExpActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/tvExp Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/android/u/tast/experience/activity/ReceiveExpActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/tvExpTips Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/nd/android/u/tast/experience/activity/ReceiveExpActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/tvMeili Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method private initData()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
iconst_3
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/ivHeader Landroid/widget/ImageView;
aconst_null
invokestatic com/product/android/business/headImage/HeadImageLoader/displayCircleImage(JBLandroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 0
new com/nd/android/u/tast/experience/adapter/ReceiveExpAdapter
dup
aload 0
aload 0
invokespecial com/nd/android/u/tast/experience/adapter/ReceiveExpAdapter/<init>(Landroid/content/Context;Lcom/nd/android/u/tast/experience/adapter/ReceiveExperienceAdapter$OnUpdateLevelListener;)V
putfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/mAdapter Lcom/nd/android/u/tast/experience/adapter/ReceiveExpAdapter;
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/lvItem Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/mAdapter Lcom/nd/android/u/tast/experience/adapter/ReceiveExpAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
new java/lang/Thread
dup
new com/nd/android/u/tast/experience/activity/ReceiveExpActivity$3
dup
aload 0
invokespecial com/nd/android/u/tast/experience/activity/ReceiveExpActivity$3/<init>(Lcom/nd/android/u/tast/experience/activity/ReceiveExpActivity;)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
return
.limit locals 1
.limit stack 5
.end method

.method private initEvent()V
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/ivClose Landroid/widget/ImageView;
new com/nd/android/u/tast/experience/activity/ReceiveExpActivity$4
dup
aload 0
invokespecial com/nd/android/u/tast/experience/activity/ReceiveExpActivity$4/<init>(Lcom/nd/android/u/tast/experience/activity/ReceiveExpActivity;)V
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method public static initReceiveExperience(Landroid/app/Activity;Landroid/widget/ListView;Lcom/nd/android/u/tast/experience/adapter/ReceiveExpAdapter;Landroid/os/Handler;)V
new java/lang/Thread
dup
new com/nd/android/u/tast/experience/activity/ReceiveExpActivity$1
dup
aload 3
aload 0
aload 2
aload 1
invokespecial com/nd/android/u/tast/experience/activity/ReceiveExpActivity$1/<init>(Landroid/os/Handler;Landroid/app/Activity;Lcom/nd/android/u/tast/experience/adapter/ReceiveExpAdapter;Landroid/widget/ListView;)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
return
.limit locals 4
.limit stack 8
.end method

.method private initView()V
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/iv_close I
invokevirtual com/nd/android/u/tast/experience/activity/ReceiveExpActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/ivClose Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/lv_exp I
invokevirtual com/nd/android/u/tast/experience/activity/ReceiveExpActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/lvItem Landroid/widget/ListView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/animationIV I
invokevirtual com/nd/android/u/tast/experience/activity/ReceiveExpActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/animationIV Landroid/widget/ImageView;
aload 0
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/animationIV Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getDrawable()Landroid/graphics/drawable/Drawable;
checkcast android/graphics/drawable/AnimationDrawable
putfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/animationDrawable Landroid/graphics/drawable/AnimationDrawable;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/tv_level_star I
invokevirtual com/nd/android/u/tast/experience/activity/ReceiveExpActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/tvLevel Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/iv_level_star I
invokevirtual com/nd/android/u/tast/experience/activity/ReceiveExpActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/ivLevel Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/iv_header I
invokevirtual com/nd/android/u/tast/experience/activity/ReceiveExpActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/ivHeader Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/pb_exp I
invokevirtual com/nd/android/u/tast/experience/activity/ReceiveExpActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/android/u/tast/main/widget/HorizontalProgressView
putfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/pbExp Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/tv_exp I
invokevirtual com/nd/android/u/tast/experience/activity/ReceiveExpActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/tvExp Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/tv_exp_tips I
invokevirtual com/nd/android/u/tast/experience/activity/ReceiveExpActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/tvExpTips Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/tv_meili I
invokevirtual com/nd/android/u/tast/experience/activity/ReceiveExpActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/tvMeili Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/tv_meili_tips I
invokevirtual com/nd/android/u/tast/experience/activity/ReceiveExpActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/tvMeiliTips Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$anim/rotate I
invokestatic android/view/animation/AnimationUtils/loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
putfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/rotate Landroid/view/animation/Animation;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/tv_seperate_line I
invokevirtual com/nd/android/u/tast/experience/activity/ReceiveExpActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/tvSeperator Landroid/widget/TextView;
return
.limit locals 1
.limit stack 3
.end method

.method private startAnimation()V
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/ivLevel Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/rotate Landroid/view/animation/Animation;
invokevirtual android/widget/ImageView/startAnimation(Landroid/view/animation/Animation;)V
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/animationIV Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
new android/os/Handler
dup
invokespecial android/os/Handler/<init>()V
new com/nd/android/u/tast/experience/activity/ReceiveExpActivity$5
dup
aload 0
invokespecial com/nd/android/u/tast/experience/activity/ReceiveExpActivity$5/<init>(Lcom/nd/android/u/tast/experience/activity/ReceiveExpActivity;)V
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/rotate Landroid/view/animation/Animation;
invokevirtual android/view/animation/Animation/getDuration()J
invokevirtual android/os/Handler/postDelayed(Ljava/lang/Runnable;J)Z
pop
return
.limit locals 1
.limit stack 4
.end method

.method private updateData(Z)V
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/tvLevel Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/oapScore Lcom/product/android/commonInterface/task/OapScore;
invokevirtual com/product/android/commonInterface/task/OapScore/getLevel()I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/oapScore Lcom/product/android/commonInterface/task/OapScore;
invokevirtual com/product/android/commonInterface/task/OapScore/getTotalexp()I
istore 4
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/oapScore Lcom/product/android/commonInterface/task/OapScore;
invokevirtual com/product/android/commonInterface/task/OapScore/getMinscore()I
istore 2
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/oapScore Lcom/product/android/commonInterface/task/OapScore;
invokevirtual com/product/android/commonInterface/task/OapScore/getMaxscore()I
istore 3
iload 4
iload 2
isub
istore 4
iload 3
iload 2
isub
istore 2
iload 1
ifeq L0
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/pbExp Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;
iload 4
iload 2
invokevirtual com/nd/android/u/tast/main/widget/HorizontalProgressView/setValue(II)V
L1:
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/mTask Lcom/nd/android/u/tast/experience/activity/ReceiveExpActivity$GetTodayTask;
ifnull L2
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/mTask Lcom/nd/android/u/tast/experience/activity/ReceiveExpActivity$GetTodayTask;
invokevirtual com/nd/android/u/tast/experience/activity/ReceiveExpActivity$GetTodayTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L2
return
L0:
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/pbExp Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;
iload 4
iload 2
invokevirtual com/nd/android/u/tast/main/widget/HorizontalProgressView/upToProgress(II)V
goto L1
L2:
aload 0
new com/nd/android/u/tast/experience/activity/ReceiveExpActivity$GetTodayTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/tast/experience/activity/ReceiveExpActivity$GetTodayTask/<init>(Lcom/nd/android/u/tast/experience/activity/ReceiveExpActivity;Lcom/nd/android/u/tast/experience/activity/ReceiveExpActivity$1;)V
putfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/mTask Lcom/nd/android/u/tast/experience/activity/ReceiveExpActivity$GetTodayTask;
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/mTask Lcom/nd/android/u/tast/experience/activity/ReceiveExpActivity$GetTodayTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/tast/experience/activity/ReceiveExpActivity$GetTodayTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 5
.limit stack 5
.end method

.method public finish()V
aload 0
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/isReceived I
invokevirtual com/nd/android/u/tast/experience/activity/ReceiveExpActivity/setResult(I)V
aload 0
invokespecial android/app/Activity/finish()V
return
.limit locals 1
.limit stack 2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
aload 0
iconst_1
invokevirtual com/nd/android/u/tast/experience/activity/ReceiveExpActivity/requestWindowFeature(I)Z
pop
aload 0
getstatic com/nd/android/u/tasklib/R$layout/receive_exp_activity I
invokevirtual com/nd/android/u/tast/experience/activity/ReceiveExpActivity/setContentView(I)V
aload 1
ifnull L0
aload 1
ldc "OAP_DATA"
invokevirtual android/os/Bundle/getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
astore 1
aload 1
instanceof com/product/android/commonInterface/task/OapScore
ifeq L0
invokestatic com/nd/android/u/tast/TaskGlobalVariable/getInstance()Lcom/nd/android/u/tast/TaskGlobalVariable;
aload 1
checkcast com/product/android/commonInterface/task/OapScore
putfield com/nd/android/u/tast/TaskGlobalVariable/mOapScore Lcom/product/android/commonInterface/task/OapScore;
L0:
aload 0
invokestatic com/nd/android/u/tast/TaskGlobalVariable/getInstance()Lcom/nd/android/u/tast/TaskGlobalVariable;
getfield com/nd/android/u/tast/TaskGlobalVariable/mOapScore Lcom/product/android/commonInterface/task/OapScore;
putfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/oapScore Lcom/product/android/commonInterface/task/OapScore;
aload 0
invokespecial com/nd/android/u/tast/experience/activity/ReceiveExpActivity/initView()V
aload 0
invokespecial com/nd/android/u/tast/experience/activity/ReceiveExpActivity/initEvent()V
aload 0
invokespecial com/nd/android/u/tast/experience/activity/ReceiveExpActivity/initData()V
return
.limit locals 2
.limit stack 2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
iload 1
iconst_4
if_icmpne L0
aload 0
invokevirtual com/nd/android/u/tast/experience/activity/ReceiveExpActivity/finish()V
L0:
aload 0
iload 1
aload 2
invokespecial android/app/Activity/onKeyDown(ILandroid/view/KeyEvent;)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method public onLevelUpNotify()V
aload 0
invokespecial com/nd/android/u/tast/experience/activity/ReceiveExpActivity/startAnimation()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onResume()V
aload 0
invokespecial android/app/Activity/onResume()V
aload 0
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/lvItem Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/mAdapter Lcom/nd/android/u/tast/experience/adapter/ReceiveExpAdapter;
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/handler Landroid/os/Handler;
invokestatic com/nd/android/u/tast/experience/activity/ReceiveExpActivity/initReceiveExperience(Landroid/app/Activity;Landroid/widget/ListView;Lcom/nd/android/u/tast/experience/adapter/ReceiveExpAdapter;Landroid/os/Handler;)V
return
.limit locals 1
.limit stack 4
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Activity/onSaveInstanceState(Landroid/os/Bundle;)V
aload 1
ldc "OAP_DATA"
invokestatic com/nd/android/u/tast/TaskGlobalVariable/getInstance()Lcom/nd/android/u/tast/TaskGlobalVariable;
getfield com/nd/android/u/tast/TaskGlobalVariable/mOapScore Lcom/product/android/commonInterface/task/OapScore;
invokevirtual android/os/Bundle/putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
return
.limit locals 2
.limit stack 3
.end method

.method public onUpdate()V
aload 0
iconst_m1
putfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity/isReceived I
aload 0
iconst_0
invokespecial com/nd/android/u/tast/experience/activity/ReceiveExpActivity/updateData(Z)V
return
.limit locals 1
.limit stack 2
.end method
