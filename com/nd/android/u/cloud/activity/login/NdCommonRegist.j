.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/login/NdCommonRegist
.super android/app/TabActivity
.implements android/view/View$OnClickListener
.inner class inner com/nd/android/u/cloud/activity/login/NdCommonRegist$1

.field private 'mPostedData' Landroid/os/Bundle;

.field private 'mTabHost' Landroid/widget/TabHost;

.method public <init>()V
aload 0
invokespecial android/app/TabActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private inflaterTab(Ljava/lang/String;)Landroid/view/View;
aload 0
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
ldc_w 2130903522
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 2
ldc_w 2131626112
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method private initTabs()V
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/cloud/activity/login/NdRegistMobile
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 2
aload 0
getfield com/nd/android/u/cloud/activity/login/NdCommonRegist/mPostedData Landroid/os/Bundle;
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/cloud/activity/login/NdRegist
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
aload 0
getfield com/nd/android/u/cloud/activity/login/NdCommonRegist/mPostedData Landroid/os/Bundle;
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/cloud/activity/login/NdCommonRegist/mTabHost Landroid/widget/TabHost;
invokevirtual android/widget/TabHost/clearAllTabs()V
aload 0
getfield com/nd/android/u/cloud/activity/login/NdCommonRegist/mTabHost Landroid/widget/TabHost;
ldc "1"
invokevirtual android/widget/TabHost/newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/activity/login/NdCommonRegist/getResources()Landroid/content/res/Resources;
ldc_w 2131494439
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokespecial com/nd/android/u/cloud/activity/login/NdCommonRegist/inflaterTab(Ljava/lang/String;)Landroid/view/View;
invokevirtual android/widget/TabHost$TabSpec/setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;
aload 2
invokevirtual android/widget/TabHost$TabSpec/setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;
astore 2
aload 0
getfield com/nd/android/u/cloud/activity/login/NdCommonRegist/mTabHost Landroid/widget/TabHost;
ldc "2"
invokevirtual android/widget/TabHost/newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/activity/login/NdCommonRegist/getResources()Landroid/content/res/Resources;
ldc_w 2131494438
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokespecial com/nd/android/u/cloud/activity/login/NdCommonRegist/inflaterTab(Ljava/lang/String;)Landroid/view/View;
invokevirtual android/widget/TabHost$TabSpec/setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;
aload 1
invokevirtual android/widget/TabHost$TabSpec/setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/login/NdCommonRegist/mTabHost Landroid/widget/TabHost;
aload 2
invokevirtual android/widget/TabHost/addTab(Landroid/widget/TabHost$TabSpec;)V
aload 0
getfield com/nd/android/u/cloud/activity/login/NdCommonRegist/mTabHost Landroid/widget/TabHost;
aload 1
invokevirtual android/widget/TabHost/addTab(Landroid/widget/TabHost$TabSpec;)V
aload 0
getfield com/nd/android/u/cloud/activity/login/NdCommonRegist/mTabHost Landroid/widget/TabHost;
new com/nd/android/u/cloud/activity/login/NdCommonRegist$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/login/NdCommonRegist$1/<init>(Lcom/nd/android/u/cloud/activity/login/NdCommonRegist;)V
invokevirtual android/widget/TabHost/setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
return
.limit locals 3
.limit stack 4
.end method

.method private initView()V
aload 0
ldc_w 2131626147
invokevirtual com/nd/android/u/cloud/activity/login/NdCommonRegist/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/activity/login/NdCommonRegist/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
putfield com/nd/android/u/cloud/activity/login/NdCommonRegist/mPostedData Landroid/os/Bundle;
return
.limit locals 1
.limit stack 2
.end method

.method public jumpToLogin()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/login/NdCommonRegist/finish()V
return
.limit locals 1
.limit stack 1
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
ldc_w 2131626147
if_icmpne L0
aload 0
invokevirtual com/nd/android/u/cloud/activity/login/NdCommonRegist/jumpToLogin()V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/TabActivity/onCreate(Landroid/os/Bundle;)V
aload 0
iconst_1
invokevirtual com/nd/android/u/cloud/activity/login/NdCommonRegist/requestWindowFeature(I)Z
pop
aload 0
ldc_w 2130903529
invokevirtual com/nd/android/u/cloud/activity/login/NdCommonRegist/setContentView(I)V
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/activity/login/NdCommonRegist/getTabHost()Landroid/widget/TabHost;
putfield com/nd/android/u/cloud/activity/login/NdCommonRegist/mTabHost Landroid/widget/TabHost;
aload 0
invokespecial com/nd/android/u/cloud/activity/login/NdCommonRegist/initView()V
aload 0
invokespecial com/nd/android/u/cloud/activity/login/NdCommonRegist/initTabs()V
return
.limit locals 2
.limit stack 2
.end method
