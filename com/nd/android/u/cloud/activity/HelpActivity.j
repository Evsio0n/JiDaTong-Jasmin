.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/HelpActivity
.super com/product/android/ui/activity/HeaderActivity
.inner class inner com/nd/android/u/cloud/activity/HelpActivity$1
.inner class inner com/nd/android/u/cloud/activity/HelpActivity$2
.inner class inner com/nd/android/u/cloud/activity/HelpActivity$3

.field private 'myHandler' Landroid/os/Handler;

.field private 'newver_image' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/cloud/activity/HelpActivity/newver_image Landroid/widget/TextView;
aload 0
new com/nd/android/u/cloud/activity/HelpActivity$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/HelpActivity$1/<init>(Lcom/nd/android/u/cloud/activity/HelpActivity;)V
putfield com/nd/android/u/cloud/activity/HelpActivity/myHandler Landroid/os/Handler;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/activity/HelpActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/HelpActivity/newver_image Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/activity/HelpActivity;Ljava/lang/Class;)V
aload 0
aload 1
invokevirtual com/nd/android/u/cloud/activity/HelpActivity/goTo(Ljava/lang/Class;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/android/u/cloud/activity/HelpActivity;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/cloud/activity/HelpActivity/myHandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected _onCreate(Landroid/os/Bundle;)Z
aload 0
ldc_w 2130903394
invokevirtual com/nd/android/u/cloud/activity/HelpActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/HelpActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/HelpActivity/initEvent()V
aload 0
ldc_w 2131493880
invokevirtual com/nd/android/u/cloud/activity/HelpActivity/setActivityTitle(I)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/_onCreate(Landroid/os/Bundle;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method protected initComponent()V
aload 0
aload 0
ldc_w 2131624562
invokevirtual com/nd/android/u/cloud/activity/HelpActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/HelpActivity/newver_image Landroid/widget/TextView;
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
return
.limit locals 1
.limit stack 3
.end method

.method protected initEvent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
invokestatic com/nd/android/u/cloud/OapApplication/getInstance()Lcom/nd/android/u/cloud/OapApplication;
invokestatic com/nd/android/u/cloud/helper/PubFunction/isNewVersion(Landroid/content/Context;)Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/activity/HelpActivity/newver_image Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
L1:
aload 0
ldc_w 2131625562
invokevirtual com/nd/android/u/cloud/activity/HelpActivity/findViewById(I)Landroid/view/View;
new com/nd/android/u/cloud/activity/HelpActivity$2
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/HelpActivity$2/<init>(Lcom/nd/android/u/cloud/activity/HelpActivity;)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
ldc_w 2131625565
invokevirtual com/nd/android/u/cloud/activity/HelpActivity/findViewById(I)Landroid/view/View;
new com/nd/android/u/cloud/activity/HelpActivity$3
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/HelpActivity$3/<init>(Lcom/nd/android/u/cloud/activity/HelpActivity;)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/HelpActivity/newver_image Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
goto L1
.limit locals 1
.limit stack 4
.end method

.method public onStart()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onStart()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/HelpActivity/initComponentValue()V
return
.limit locals 1
.limit stack 1
.end method
