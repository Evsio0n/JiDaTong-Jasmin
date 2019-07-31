.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/FirstSetMyPortrait
.super com/product/android/ui/activity/HeaderActivity
.implements com/android/u/weibo/cropimage/business/PortraitModify$OnActivityListener
.inner class inner com/nd/android/u/cloud/activity/FirstSetMyPortrait$1
.inner class inner com/nd/android/u/cloud/activity/FirstSetMyPortrait$2

.field private static final 'TAG' Ljava/lang/String; = "FirstSetMyPortrait"

.field private 'cropUri' Landroid/net/Uri;

.field private 'imageMask' Landroid/widget/ImageView;

.field private 'mModifier' Lcom/android/u/weibo/cropimage/business/PortraitModify;

.field private 'm_bmPortrait' Landroid/graphics/Bitmap;

.field private 'm_bmShowPicture' Landroid/graphics/Bitmap;

.field private 'm_btSelectImage' Landroid/widget/Button;

.field private 'm_btTakePhoto' Landroid/widget/Button;

.field 'm_btnNextStep' Landroid/widget/Button;

.field private 'm_btnReturn' Landroid/widget/Button;

.field private 'm_ivPortrait' Landroid/widget/ImageView;

.field private 'm_tvTitle' Landroid/widget/TextView;

.field protected 'myOnclicklistener' Landroid/view/View$OnClickListener;

.field private 'photoUri' Landroid/net/Uri;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/cloud/activity/FirstSetMyPortrait/photoUri Landroid/net/Uri;
aload 0
aconst_null
putfield com/nd/android/u/cloud/activity/FirstSetMyPortrait/cropUri Landroid/net/Uri;
aload 0
new com/nd/android/u/cloud/activity/FirstSetMyPortrait$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/FirstSetMyPortrait$1/<init>(Lcom/nd/android/u/cloud/activity/FirstSetMyPortrait;)V
putfield com/nd/android/u/cloud/activity/FirstSetMyPortrait/myOnclicklistener Landroid/view/View$OnClickListener;
return
.limit locals 1
.limit stack 4
.end method

.method private SaveDataAndGo()V
invokestatic com/nd/android/u/cloud/data/FirstLoginOptionData/getInstance()Lcom/nd/android/u/cloud/data/FirstLoginOptionData;
aload 0
getfield com/nd/android/u/cloud/activity/FirstSetMyPortrait/m_bmPortrait Landroid/graphics/Bitmap;
invokevirtual com/nd/android/u/cloud/data/FirstLoginOptionData/setPortraitBitmap(Landroid/graphics/Bitmap;)V
invokestatic com/nd/android/u/cloud/data/FirstLoginOptionData/getInstance()Lcom/nd/android/u/cloud/data/FirstLoginOptionData;
aload 0
getfield com/nd/android/u/cloud/activity/FirstSetMyPortrait/m_bmShowPicture Landroid/graphics/Bitmap;
invokevirtual com/nd/android/u/cloud/data/FirstLoginOptionData/setShowPicture(Landroid/graphics/Bitmap;)V
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
aload 0
ldc com/nd/android/u/cloud/activity/ConcernFriends
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual com/nd/android/u/cloud/activity/FirstSetMyPortrait/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 3
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/activity/FirstSetMyPortrait;)Lcom/android/u/weibo/cropimage/business/PortraitModify;
aload 0
getfield com/nd/android/u/cloud/activity/FirstSetMyPortrait/mModifier Lcom/android/u/weibo/cropimage/business/PortraitModify;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/activity/FirstSetMyPortrait;)V
aload 0
invokespecial com/nd/android/u/cloud/activity/FirstSetMyPortrait/SaveDataAndGo()V
return
.limit locals 1
.limit stack 1
.end method

.method protected _onCreate(Landroid/os/Bundle;)Z
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/_onCreate(Landroid/os/Bundle;)Z
ifeq L0
aload 0
ldc_w 2130903314
invokevirtual com/nd/android/u/cloud/activity/FirstSetMyPortrait/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/FirstSetMyPortrait/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/FirstSetMyPortrait/initComponentValue()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/FirstSetMyPortrait/initEvent()V
L0:
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public createInsertPhotoDialog()V
invokestatic com/common/android/utils/SdCardUtils/isSdCardExist()Z
ifne L0
aload 0
ldc "\u6ca1\u6709\u68c0\u6d4b\u5230SD\u5361\uff0c\u4e0d\u80fd\u4fee\u6539\u56fe\u7247"
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
return
L0:
new android/app/AlertDialog$Builder
dup
aload 0
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
astore 1
aload 1
ldc "\u4e0a\u4f20\u7167\u7247"
invokevirtual android/app/AlertDialog$Builder/setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
pop
new com/nd/android/u/cloud/activity/FirstSetMyPortrait$2
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/FirstSetMyPortrait$2/<init>(Lcom/nd/android/u/cloud/activity/FirstSetMyPortrait;)V
astore 2
aload 1
iconst_2
anewarray java/lang/CharSequence
dup
iconst_0
ldc "\u76f8\u673a\u62cd\u6444"
aastore
dup
iconst_1
ldc "\u624b\u673a\u76f8\u518c"
aastore
aload 2
invokevirtual android/app/AlertDialog$Builder/setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 1
invokevirtual android/app/AlertDialog$Builder/create()Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/show()V
return
.limit locals 3
.limit stack 5
.end method

.method protected initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponentValue()V
aload 0
getfield com/nd/android/u/cloud/activity/FirstSetMyPortrait/m_bmPortrait Landroid/graphics/Bitmap;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/FirstSetMyPortrait/m_ivPortrait Landroid/widget/ImageView;
aconst_null
invokevirtual android/widget/ImageView/setTag(Ljava/lang/Object;)V
aload 0
getfield com/nd/android/u/cloud/activity/FirstSetMyPortrait/m_ivPortrait Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/cloud/activity/FirstSetMyPortrait/m_bmPortrait Landroid/graphics/Bitmap;
invokevirtual android/widget/ImageView/setImageBitmap(Landroid/graphics/Bitmap;)V
L1:
aload 0
getfield com/nd/android/u/cloud/activity/FirstSetMyPortrait/m_tvTitle Landroid/widget/TextView;
aload 0
ldc_w 2131494338
invokevirtual com/nd/android/u/cloud/activity/FirstSetMyPortrait/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/FirstSetMyPortrait/m_btnReturn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/FirstSetMyPortrait/m_btnNextStep Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/FirstSetMyPortrait/m_btnNextStep Landroid/widget/Button;
aload 0
ldc_w 2131494507
invokevirtual com/nd/android/u/cloud/activity/FirstSetMyPortrait/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
return
L0:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
astore 4
iconst_1
istore 1
lconst_0
lstore 2
aload 4
ifnull L2
aload 4
invokevirtual com/product/android/business/login/BindUser/getSysavatar()I
istore 1
aload 4
invokevirtual com/product/android/business/login/BindUser/getUid()J
lstore 2
L2:
lload 2
iload 1
aload 0
getfield com/nd/android/u/cloud/activity/FirstSetMyPortrait/m_ivPortrait Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
goto L1
.limit locals 5
.limit stack 4
.end method

.method protected initEvent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
aload 0
getfield com/nd/android/u/cloud/activity/FirstSetMyPortrait/m_btnNextStep Landroid/widget/Button;
aload 0
getfield com/nd/android/u/cloud/activity/FirstSetMyPortrait/myOnclicklistener Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/FirstSetMyPortrait/imageMask Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/cloud/activity/FirstSetMyPortrait/myOnclicklistener Landroid/view/View$OnClickListener;
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/FirstSetMyPortrait/m_btTakePhoto Landroid/widget/Button;
aload 0
getfield com/nd/android/u/cloud/activity/FirstSetMyPortrait/myOnclicklistener Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/FirstSetMyPortrait/m_btSelectImage Landroid/widget/Button;
aload 0
getfield com/nd/android/u/cloud/activity/FirstSetMyPortrait/myOnclicklistener Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
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
getfield com/nd/android/u/cloud/activity/FirstSetMyPortrait/mModifier Lcom/android/u/weibo/cropimage/business/PortraitModify;
iload 1
iload 2
aload 3
invokevirtual com/android/u/weibo/cropimage/business/PortraitModify/myOnActivityResult(IILandroid/content/Intent;)V
return
.limit locals 4
.limit stack 4
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onCreate(Landroid/os/Bundle;)V
aload 1
ifnull L0
aload 1
ldc "photoUri"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
astore 2
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 0
aload 2
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
putfield com/nd/android/u/cloud/activity/FirstSetMyPortrait/photoUri Landroid/net/Uri;
L1:
aload 1
ldc "cropUri"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L2
aload 0
aload 1
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
putfield com/nd/android/u/cloud/activity/FirstSetMyPortrait/cropUri Landroid/net/Uri;
L2:
invokestatic com/nd/android/u/cloud/data/FirstLoginOptionData/getInstance()Lcom/nd/android/u/cloud/data/FirstLoginOptionData;
invokevirtual com/nd/android/u/cloud/data/FirstLoginOptionData/finishAllActivity()V
invokestatic com/nd/android/u/cloud/data/FirstLoginOptionData/getInstance()Lcom/nd/android/u/cloud/data/FirstLoginOptionData;
aload 0
invokevirtual com/nd/android/u/cloud/data/FirstLoginOptionData/addActivity(Landroid/app/Activity;)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/FirstSetMyPortrait/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/FirstSetMyPortrait/initComponentValue()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/FirstSetMyPortrait/initEvent()V
return
L0:
invokestatic com/nd/android/u/cloud/data/FirstLoginOptionData/getInstance()Lcom/nd/android/u/cloud/data/FirstLoginOptionData;
invokevirtual com/nd/android/u/cloud/data/FirstLoginOptionData/initData()V
goto L2
.limit locals 3
.limit stack 2
.end method

.method public onResume()V
aload 0
invokestatic com/nd/android/u/cloud/data/FirstLoginOptionData/getInstance()Lcom/nd/android/u/cloud/data/FirstLoginOptionData;
invokevirtual com/nd/android/u/cloud/data/FirstLoginOptionData/getPortraitBitmap()Landroid/graphics/Bitmap;
putfield com/nd/android/u/cloud/activity/FirstSetMyPortrait/m_bmPortrait Landroid/graphics/Bitmap;
aload 0
getfield com/nd/android/u/cloud/activity/FirstSetMyPortrait/m_bmPortrait Landroid/graphics/Bitmap;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/FirstSetMyPortrait/m_bmPortrait Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L0
aload 0
getfield com/nd/android/u/cloud/activity/FirstSetMyPortrait/m_ivPortrait Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/cloud/activity/FirstSetMyPortrait/m_bmPortrait Landroid/graphics/Bitmap;
invokevirtual android/widget/ImageView/setImageBitmap(Landroid/graphics/Bitmap;)V
L0:
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onResume()V
return
.limit locals 1
.limit stack 2
.end method

.method public succeedChanging(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 0
.end method
