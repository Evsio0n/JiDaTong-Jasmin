.bytecode 50.0
.class public synchronized com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity
.super android/app/Activity
.implements com/nd/android/u/tast/experience/adapter/ReceiveExperienceAdapter$OnUpdateLevelListener
.inner class inner com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity$1
.inner class inner com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity$2
.inner class inner com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity$2$1
.inner class static final inner com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity$3
.inner class inner com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity$3$1
.inner class inner com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity$4
.inner class inner com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity$5

.field private 'animationDrawable' Landroid/graphics/drawable/AnimationDrawable;

.field private 'animationIV' Landroid/widget/ImageView;

.field 'handler' Landroid/os/Handler;

.field private 'mAdapter' Lcom/nd/android/u/tast/experience/adapter/ReceiveExperienceAdapter;

.field private 'mListView' Landroid/widget/ListView;

.field private 'mLoadingLot' Z

.field private 'mPortraitLevel' Lcom/nd/android/u/tast/experience/view/PortraitLevel;

.field private 'mProgressBar' Landroid/widget/ProgressBar;

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity/mLoadingLot Z
aload 0
new com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity$4
dup
aload 0
invokespecial com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity$4/<init>(Lcom/nd/android/u/tast/experience/activity/ReceiveExperienceActivity;)V
putfield com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity/handler Landroid/os/Handler;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/tast/experience/activity/ReceiveExperienceActivity;)Lcom/nd/android/u/tast/experience/view/PortraitLevel;
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity/mPortraitLevel Lcom/nd/android/u/tast/experience/view/PortraitLevel;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/tast/experience/activity/ReceiveExperienceActivity;)Landroid/widget/ProgressBar;
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity/mProgressBar Landroid/widget/ProgressBar;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/tast/experience/activity/ReceiveExperienceActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity/mListView Landroid/widget/ListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/tast/experience/activity/ReceiveExperienceActivity;)Landroid/graphics/drawable/AnimationDrawable;
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity/animationDrawable Landroid/graphics/drawable/AnimationDrawable;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/tast/experience/activity/ReceiveExperienceActivity;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity/animationIV Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method private initData()V
new java/lang/Thread
dup
new com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity$2
dup
aload 0
invokespecial com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity$2/<init>(Lcom/nd/android/u/tast/experience/activity/ReceiveExperienceActivity;)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
return
.limit locals 1
.limit stack 5
.end method

.method public static initReceiveExperience(Landroid/app/Activity;Landroid/widget/ListView;Lcom/nd/android/u/tast/experience/adapter/ReceiveExperienceAdapter;Landroid/os/Handler;)V
new java/lang/Thread
dup
new com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity$3
dup
aload 3
aload 0
aload 2
aload 1
invokespecial com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity$3/<init>(Landroid/os/Handler;Landroid/app/Activity;Lcom/nd/android/u/tast/experience/adapter/ReceiveExperienceAdapter;Landroid/widget/ListView;)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
return
.limit locals 4
.limit stack 8
.end method

.method private startAnimation()V
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity/animationIV Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity/animationDrawable Landroid/graphics/drawable/AnimationDrawable;
invokevirtual android/graphics/drawable/AnimationDrawable/stop()V
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity/animationDrawable Landroid/graphics/drawable/AnimationDrawable;
invokevirtual android/graphics/drawable/AnimationDrawable/start()V
iconst_0
istore 2
iconst_0
istore 1
L0:
iload 1
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity/animationDrawable Landroid/graphics/drawable/AnimationDrawable;
invokevirtual android/graphics/drawable/AnimationDrawable/getNumberOfFrames()I
if_icmpge L1
iload 2
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity/animationDrawable Landroid/graphics/drawable/AnimationDrawable;
iload 1
invokevirtual android/graphics/drawable/AnimationDrawable/getDuration(I)I
iadd
istore 2
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
new android/os/Handler
dup
invokespecial android/os/Handler/<init>()V
new com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity$5
dup
aload 0
invokespecial com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity$5/<init>(Lcom/nd/android/u/tast/experience/activity/ReceiveExperienceActivity;)V
iload 2
i2l
invokevirtual android/os/Handler/postDelayed(Ljava/lang/Runnable;J)Z
pop
return
.limit locals 3
.limit stack 4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/nd/android/u/tasklib/R$layout/receive_experience I
invokevirtual com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity/setContentView(I)V
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
aload 0
invokevirtual com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity/getIntent()Landroid/content/Intent;
ldc "loadingLot"
iconst_0
invokevirtual android/content/Intent/getBooleanExtra(Ljava/lang/String;Z)Z
putfield com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity/mLoadingLot Z
aload 0
getstatic com/nd/android/u/tasklib/R$id/btn_left I
invokevirtual com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity/findViewById(I)Landroid/view/View;
new com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity$1
dup
aload 0
invokespecial com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity$1/<init>(Lcom/nd/android/u/tast/experience/activity/ReceiveExperienceActivity;)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/android/u/tasklib/R$id/title I
invokevirtual com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
getstatic com/nd/android/u/tasklib/R$string/header_receive_title I
invokevirtual android/widget/TextView/setText(I)V
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/pl I
invokevirtual com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/android/u/tast/experience/view/PortraitLevel
putfield com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity/mPortraitLevel Lcom/nd/android/u/tast/experience/view/PortraitLevel;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/progressBar I
invokevirtual com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity/mProgressBar Landroid/widget/ProgressBar;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/lv I
invokevirtual com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity/mListView Landroid/widget/ListView;
aload 0
new com/nd/android/u/tast/experience/adapter/ReceiveExperienceAdapter
dup
aload 0
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity/mListView Landroid/widget/ListView;
aload 0
invokespecial com/nd/android/u/tast/experience/adapter/ReceiveExperienceAdapter/<init>(Landroid/app/Activity;Landroid/widget/ListView;Lcom/nd/android/u/tast/experience/adapter/ReceiveExperienceAdapter$OnUpdateLevelListener;)V
putfield com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity/mAdapter Lcom/nd/android/u/tast/experience/adapter/ReceiveExperienceAdapter;
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity/mListView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity/mAdapter Lcom/nd/android/u/tast/experience/adapter/ReceiveExperienceAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/animationIV I
invokevirtual com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity/animationIV Landroid/widget/ImageView;
aload 0
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity/animationIV Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getDrawable()Landroid/graphics/drawable/Drawable;
checkcast android/graphics/drawable/AnimationDrawable
putfield com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity/animationDrawable Landroid/graphics/drawable/AnimationDrawable;
aload 0
invokespecial com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity/initData()V
return
.limit locals 2
.limit stack 6
.end method

.method protected onDestroy()V
aload 0
invokespecial android/app/Activity/onDestroy()V
return
.limit locals 1
.limit stack 1
.end method

.method public onLevelUpNotify()V
aload 0
invokespecial com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity/startAnimation()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onResume()V
aload 0
invokespecial android/app/Activity/onResume()V
aload 0
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity/mListView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity/mAdapter Lcom/nd/android/u/tast/experience/adapter/ReceiveExperienceAdapter;
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity/handler Landroid/os/Handler;
invokestatic com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity/initReceiveExperience(Landroid/app/Activity;Landroid/widget/ListView;Lcom/nd/android/u/tast/experience/adapter/ReceiveExperienceAdapter;Landroid/os/Handler;)V
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
getfield com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity/mPortraitLevel Lcom/nd/android/u/tast/experience/view/PortraitLevel;
invokevirtual com/nd/android/u/tast/experience/view/PortraitLevel/updateUI()V
return
.limit locals 1
.limit stack 1
.end method
