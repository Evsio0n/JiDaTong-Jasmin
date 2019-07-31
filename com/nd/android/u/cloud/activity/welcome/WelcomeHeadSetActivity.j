.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity
.super com/product/android/ui/activity/HeaderActivity
.implements com/android/u/weibo/cropimage/business/PortraitModify$OnActivityListener
.inner class inner com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity$1
.inner class UploadHeadBitmap inner com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity$UploadHeadBitmap outer com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity

.field public static final 'COOKIE_TYPE' Ljava/lang/String; = "OAPSID="

.field public static final 'PARAMS_COOKIE' Ljava/lang/String; = "cookie"

.field public static final 'PARAMS_TYPE' Ljava/lang/String; = "type"

.field public static final 'PIC_TYPE' Ljava/lang/String; = "Android_large"

.field private static final 'WELCOME_FRIEND_REQUEST_CODE' I = 601


.field private 'mHeadImageView' Landroid/widget/ImageView;

.field private 'mModifier' Lcom/android/u/weibo/cropimage/business/PortraitModify;

.field private 'myOnClickListener' Landroid/view/View$OnClickListener;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
new com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity$1/<init>(Lcom/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity;)V
putfield com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity/myOnClickListener Landroid/view/View$OnClickListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity;)Lcom/android/u/weibo/cropimage/business/PortraitModify;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity/mModifier Lcom/android/u/weibo/cropimage/business/PortraitModify;
areturn
.limit locals 1
.limit stack 1
.end method

.method private setHeadImage(Landroid/net/Uri;)V
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "NewApi" 
.end annotation
aload 0
aload 1
invokestatic ims/utils/CommUtil/getImgLocalPathByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
return
L0:
aload 1
invokestatic android/graphics/drawable/BitmapDrawable/createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
astore 1
getstatic android/os/Build$VERSION/SDK_INT I
bipush 16
if_icmpge L1
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity/mHeadImageView Landroid/widget/ImageView;
aload 1
invokevirtual android/widget/ImageView/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity/mHeadImageView Landroid/widget/ImageView;
new android/graphics/drawable/BitmapDrawable
dup
invokespecial android/graphics/drawable/BitmapDrawable/<init>()V
invokevirtual android/widget/ImageView/setImageDrawable(Landroid/graphics/drawable/Drawable;)V
return
L1:
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity/mHeadImageView Landroid/widget/ImageView;
aload 1
invokevirtual android/widget/ImageView/setBackground(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity/mHeadImageView Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setImageAlpha(I)V
return
.limit locals 2
.limit stack 3
.end method

.method public goNextActivity()V
aload 0
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
sipush 601
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity/startActivityForResult(Landroid/content/Intent;I)V
return
.limit locals 1
.limit stack 5
.end method

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
new com/android/u/weibo/cropimage/business/PortraitModify
dup
aload 0
aload 0
aconst_null
invokespecial com/android/u/weibo/cropimage/business/PortraitModify/<init>(Landroid/app/Activity;Lcom/android/u/weibo/cropimage/business/PortraitModify$OnActivityListener;Ljava/lang/String;)V
putfield com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity/mModifier Lcom/android/u/weibo/cropimage/business/PortraitModify;
aload 0
aload 0
ldc_w 2131624488
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity/mHeadImageView Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity/rightBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity/getResources()Landroid/content/res/Resources;
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity/rightBtn Landroid/widget/Button;
aload 1
ldc_w 2131493844
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity/rightBtn Landroid/widget/Button;
ldc_w 2130837931
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity/titleText Landroid/widget/TextView;
aload 1
ldc_w 2131493839
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 6
.end method

.method protected initEvent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
aload 0
ldc_w 2131624489
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity/findViewById(I)Landroid/view/View;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity/myOnClickListener Landroid/view/View$OnClickListener;
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
ldc_w 2131624490
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity/findViewById(I)Landroid/view/View;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity/myOnClickListener Landroid/view/View$OnClickListener;
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
iload 1
lookupswitch
1 : L0
2 : L0
3 : L0
601 : L1
default : L2
L2:
aload 0
iload 1
iload 2
aload 3
invokespecial com/product/android/ui/activity/HeaderActivity/onActivityResult(IILandroid/content/Intent;)V
L3:
return
L0:
iload 2
iconst_m1
if_icmpne L3
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity/mModifier Lcom/android/u/weibo/cropimage/business/PortraitModify;
iload 1
iload 2
aload 3
invokevirtual com/android/u/weibo/cropimage/business/PortraitModify/myOnActivityResult(IILandroid/content/Intent;)V
goto L2
L1:
iload 2
iconst_m1
if_icmpne L2
aload 0
iconst_m1
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity/setResult(I)V
ldc "test"
ldc "welcomeheadset finish"
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity/finish()V
goto L2
.limit locals 4
.limit stack 4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onCreate(Landroid/os/Bundle;)V
aload 0
ldc_w 2130903136
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity/initComponentValue()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity/initEvent()V
return
.limit locals 2
.limit stack 2
.end method

.method protected onStart()V
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "NewApi" 
.end annotation
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onStart()V
getstatic com/nd/android/u/cloud/activity/welcome/WelcomeInfo/INSTANCE Lcom/nd/android/u/cloud/activity/welcome/WelcomeInfo;
astore 1
aload 1
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeInfo/getHeadUri()Landroid/net/Uri;
astore 2
aload 2
ifnull L0
aload 0
aload 2
invokespecial com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity/setHeadImage(Landroid/net/Uri;)V
L0:
aload 1
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeInfo/getIsDownloadPicComplete()Z
ifeq L1
aload 1
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeInfo/getDefaultPicPath()Ljava/lang/String;
invokestatic android/graphics/drawable/BitmapDrawable/createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
astore 1
aload 0
ldc_w 2131624487
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
astore 2
getstatic android/os/Build$VERSION/SDK_INT I
bipush 16
if_icmpge L2
aload 2
aload 1
invokevirtual android/widget/LinearLayout/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
L1:
return
L2:
aload 2
aload 1
invokevirtual android/widget/LinearLayout/setBackground(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected rightBtnHandle()V
getstatic com/nd/android/u/cloud/activity/welcome/WelcomeInfo/INSTANCE Lcom/nd/android/u/cloud/activity/welcome/WelcomeInfo;
astore 2
aload 2
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeInfo/getHeadUri()Landroid/net/Uri;
astore 1
aload 2
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeInfo/getLastUploadUri()Landroid/net/Uri;
astore 2
aload 2
ifnonnull L0
new com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity$UploadHeadBitmap
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity$UploadHeadBitmap/<init>(Lcom/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity;)V
iconst_1
anewarray android/net/Uri
dup
iconst_0
aload 1
aastore
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity$UploadHeadBitmap/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
L0:
aload 1
ifnonnull L1
aload 0
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity/goNextActivity()V
return
L1:
aload 2
aload 1
invokevirtual android/net/Uri/compareTo(Landroid/net/Uri;)I
ifne L2
aload 0
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity/goNextActivity()V
return
L2:
new com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity$UploadHeadBitmap
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity$UploadHeadBitmap/<init>(Lcom/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity;)V
iconst_1
anewarray android/net/Uri
dup
iconst_0
aload 1
aastore
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity$UploadHeadBitmap/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 3
.limit stack 5
.end method

.method public succeedChanging(Ljava/lang/String;Ljava/lang/String;)V
aload 1
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
astore 1
getstatic com/nd/android/u/cloud/activity/welcome/WelcomeInfo/INSTANCE Lcom/nd/android/u/cloud/activity/welcome/WelcomeInfo;
aload 1
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeInfo/setHeadFaceUri(Landroid/net/Uri;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity/setHeadImage(Landroid/net/Uri;)V
return
.limit locals 3
.limit stack 2
.end method
