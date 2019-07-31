.bytecode 50.0
.class public synchronized com/nd/rj/common/login/view/NdCommonRegist
.super android/app/TabActivity
.implements android/view/View$OnClickListener
.inner class inner com/nd/rj/common/login/view/NdCommonRegist$1

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
getstatic com/nd/rj/common/R$layout/nd_login_tab_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 2
getstatic com/nd/rj/common/R$id/tab_label I
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
ldc com/nd/rj/common/login/view/NdRegistMobile
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 2
aload 0
getfield com/nd/rj/common/login/view/NdCommonRegist/mPostedData Landroid/os/Bundle;
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
new android/content/Intent
dup
aload 0
ldc com/nd/rj/common/login/view/NdRegist
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
aload 0
getfield com/nd/rj/common/login/view/NdCommonRegist/mPostedData Landroid/os/Bundle;
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/rj/common/login/view/NdCommonRegist/mTabHost Landroid/widget/TabHost;
invokevirtual android/widget/TabHost/clearAllTabs()V
aload 0
getfield com/nd/rj/common/login/view/NdCommonRegist/mTabHost Landroid/widget/TabHost;
ldc "1"
invokevirtual android/widget/TabHost/newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
aload 0
aload 0
invokevirtual com/nd/rj/common/login/view/NdCommonRegist/getResources()Landroid/content/res/Resources;
getstatic com/nd/rj/common/R$string/nd_regist_mobile I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokespecial com/nd/rj/common/login/view/NdCommonRegist/inflaterTab(Ljava/lang/String;)Landroid/view/View;
invokevirtual android/widget/TabHost$TabSpec/setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;
aload 2
invokevirtual android/widget/TabHost$TabSpec/setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;
astore 2
aload 0
getfield com/nd/rj/common/login/view/NdCommonRegist/mTabHost Landroid/widget/TabHost;
ldc "2"
invokevirtual android/widget/TabHost/newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
aload 0
aload 0
invokevirtual com/nd/rj/common/login/view/NdCommonRegist/getResources()Landroid/content/res/Resources;
getstatic com/nd/rj/common/R$string/nd_regist_mail I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokespecial com/nd/rj/common/login/view/NdCommonRegist/inflaterTab(Ljava/lang/String;)Landroid/view/View;
invokevirtual android/widget/TabHost$TabSpec/setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;
aload 1
invokevirtual android/widget/TabHost$TabSpec/setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;
astore 1
aload 0
getfield com/nd/rj/common/login/view/NdCommonRegist/mTabHost Landroid/widget/TabHost;
aload 2
invokevirtual android/widget/TabHost/addTab(Landroid/widget/TabHost$TabSpec;)V
aload 0
getfield com/nd/rj/common/login/view/NdCommonRegist/mTabHost Landroid/widget/TabHost;
aload 1
invokevirtual android/widget/TabHost/addTab(Landroid/widget/TabHost$TabSpec;)V
aload 0
getfield com/nd/rj/common/login/view/NdCommonRegist/mTabHost Landroid/widget/TabHost;
new com/nd/rj/common/login/view/NdCommonRegist$1
dup
aload 0
invokespecial com/nd/rj/common/login/view/NdCommonRegist$1/<init>(Lcom/nd/rj/common/login/view/NdCommonRegist;)V
invokevirtual android/widget/TabHost/setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
return
.limit locals 3
.limit stack 4
.end method

.method private initView()V
aload 0
getstatic com/nd/rj/common/R$id/tvBack I
invokevirtual com/nd/rj/common/login/view/NdCommonRegist/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
invokevirtual com/nd/rj/common/login/view/NdCommonRegist/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
putfield com/nd/rj/common/login/view/NdCommonRegist/mPostedData Landroid/os/Bundle;
return
.limit locals 1
.limit stack 2
.end method

.method public jumpToLogin()V
new android/content/Intent
dup
aload 0
ldc com/nd/rj/common/login/view/NdLogin
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
aload 0
getfield com/nd/rj/common/login/view/NdCommonRegist/mPostedData Landroid/os/Bundle;
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual com/nd/rj/common/login/view/NdCommonRegist/startActivity(Landroid/content/Intent;)V
aload 0
invokevirtual com/nd/rj/common/login/view/NdCommonRegist/finish()V
return
.limit locals 2
.limit stack 4
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/rj/common/R$id/tvBack I
if_icmpne L0
aload 0
invokevirtual com/nd/rj/common/login/view/NdCommonRegist/jumpToLogin()V
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
invokevirtual com/nd/rj/common/login/view/NdCommonRegist/requestWindowFeature(I)Z
pop
aload 0
getstatic com/nd/rj/common/R$layout/nd_regist_commonlayout I
invokevirtual com/nd/rj/common/login/view/NdCommonRegist/setContentView(I)V
aload 0
aload 0
invokevirtual com/nd/rj/common/login/view/NdCommonRegist/getTabHost()Landroid/widget/TabHost;
putfield com/nd/rj/common/login/view/NdCommonRegist/mTabHost Landroid/widget/TabHost;
aload 0
invokespecial com/nd/rj/common/login/view/NdCommonRegist/initView()V
aload 0
invokespecial com/nd/rj/common/login/view/NdCommonRegist/initTabs()V
return
.limit locals 2
.limit stack 2
.end method
