.bytecode 50.0
.class public synchronized com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity
.super com/product/android/ui/activity/BaseActivity
.implements com/android/u/weibo/cropimage/business/PortraitModify$OnActivityListener
.inner class inner com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity$1

.field private static final 'TAG' Ljava/lang/String; = "ModifyPortraitActivity"

.field private 'camera' Landroid/widget/TextView;

.field private 'change_portrait' Landroid/widget/TextView;

.field private 'check_big_portrait' Landroid/widget/TextView;

.field private 'mIvLine1' Landroid/widget/ImageView;

.field private 'mIvLine2' Landroid/widget/ImageView;

.field private 'mModifier' Lcom/android/u/weibo/cropimage/business/PortraitModify;

.field private 'modify_portrait_cancle' Landroid/widget/TextView;

.field protected 'myOnclicklistener' Landroid/view/View$OnClickListener;

.field 'originFileAbsolutePath' Ljava/lang/String;

.field private 'take_picture' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/<init>()V
aload 0
aconst_null
putfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/originFileAbsolutePath Ljava/lang/String;
aload 0
new com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity$1
dup
aload 0
invokespecial com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity$1/<init>(Lcom/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity;)V
putfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/myOnclicklistener Landroid/view/View$OnClickListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity;)Lcom/android/u/weibo/cropimage/business/PortraitModify;
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/mModifier Lcom/android/u/weibo/cropimage/business/PortraitModify;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity;)Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/change_portrait Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity;)Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/check_big_portrait Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity;)Landroid/widget/ImageView;
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/mIvLine2 Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity;)Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/camera Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity;)Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/take_picture Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity;)Landroid/widget/ImageView;
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/mIvLine1 Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected _onCreate(Landroid/os/Bundle;)Z
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseActivity/_onCreate(Landroid/os/Bundle;)Z
ifeq L0
aload 0
iconst_1
invokevirtual com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/requestWindowFeature(I)Z
pop
aload 0
getstatic com/android/u/weibo/R$layout/activity_modify_portrait I
invokevirtual com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/setContentView(I)V
aload 0
invokevirtual com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/initComponent()V
aload 0
invokevirtual com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/initComponentValue()V
aload 0
invokevirtual com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/initEvent()V
L0:
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/initComponent()V
aload 0
new com/android/u/weibo/cropimage/business/PortraitModify
dup
aload 0
aload 0
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/originFileAbsolutePath Ljava/lang/String;
invokespecial com/android/u/weibo/cropimage/business/PortraitModify/<init>(Landroid/app/Activity;Lcom/android/u/weibo/cropimage/business/PortraitModify$OnActivityListener;Ljava/lang/String;)V
putfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/mModifier Lcom/android/u/weibo/cropimage/business/PortraitModify;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/camera I
invokevirtual com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/camera Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/take_picture I
invokevirtual com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/take_picture Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/ivLine1 I
invokevirtual com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/mIvLine1 Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/ivLine2 I
invokevirtual com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/mIvLine2 Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/modify_portrait_cancle I
invokevirtual com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/modify_portrait_cancle Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/change_picture I
invokevirtual com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/change_portrait Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/check_picture I
invokevirtual com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/check_big_portrait Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/camera Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/take_picture Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/mIvLine1 Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
return
.limit locals 1
.limit stack 6
.end method

.method protected initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/initComponentValue()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
ifnonnull L0
aload 0
invokevirtual com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/finish()V
ldc "ModifyPortraitActivity"
ldc "null"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
return
.limit locals 1
.limit stack 2
.end method

.method protected initEvent()V
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/initEvent()V
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/camera Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/myOnclicklistener Landroid/view/View$OnClickListener;
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/take_picture Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/myOnclicklistener Landroid/view/View$OnClickListener;
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/modify_portrait_cancle Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/myOnclicklistener Landroid/view/View$OnClickListener;
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/change_portrait Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/myOnclicklistener Landroid/view/View$OnClickListener;
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/check_big_portrait Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/myOnclicklistener Landroid/view/View$OnClickListener;
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
iload 2
iconst_m1
if_icmpeq L0
return
L0:
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/mModifier Lcom/android/u/weibo/cropimage/business/PortraitModify;
iload 1
iload 2
aload 3
invokevirtual com/android/u/weibo/cropimage/business/PortraitModify/myOnActivityResult(IILandroid/content/Intent;)V
return
.limit locals 4
.limit stack 4
.end method

.method protected onDestroy()V
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/onDestroy()V
invokestatic java/lang/System/gc()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseActivity/onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/mModifier Lcom/android/u/weibo/cropimage/business/PortraitModify;
invokevirtual com/android/u/weibo/cropimage/business/PortraitModify/getOriginFileAbsolutePath()Ljava/lang/String;
putfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/originFileAbsolutePath Ljava/lang/String;
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/originFileAbsolutePath Ljava/lang/String;
ifnull L0
aload 1
ldc "originFileAbsolutePath"
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/originFileAbsolutePath Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
L0:
return
.limit locals 2
.limit stack 3
.end method

.method protected setSavedData(Landroid/os/Bundle;)V
aload 1
ifnull L0
aload 0
aload 1
ldc "originFileAbsolutePath"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/originFileAbsolutePath Ljava/lang/String;
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public succeedChanging(Ljava/lang/String;Ljava/lang/String;)V
getstatic com/product/android/business/broadcast/PersonInfoBroadHelper/INSTANCE Lcom/product/android/business/broadcast/PersonInfoBroadHelper;
aload 0
aload 1
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
aload 2
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
invokevirtual com/product/android/business/broadcast/PersonInfoBroadHelper/sendModifyAvaBroadCast(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V
aload 0
invokevirtual com/android/u/weibo/cropimage/ui/activity/ModifyPortraitActivity/finish()V
return
.limit locals 3
.limit stack 4
.end method
