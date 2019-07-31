.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity$UploadHeadBitmap
.super android/os/AsyncTask
.signature "Landroid/os/AsyncTask<Landroid/net/Uri;Ljava/lang/Integer;Ljava/lang/Boolean;>;"
.inner class UploadHeadBitmap inner com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity$UploadHeadBitmap outer com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity

.field private 'mPD' Landroid/app/ProgressDialog;

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity;

.method <init>(Lcom/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity$UploadHeadBitmap/this$0 Lcom/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity;
aload 0
invokespecial android/os/AsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method private updateHeadInfo()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
astore 1
aload 1
iconst_0
invokevirtual com/product/android/business/login/BindUser/setSysavatar(I)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 2
aload 2
aload 1
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 10010
aload 2
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
.limit locals 3
.limit stack 4
.end method

.method protected transient doInBackground([Landroid/net/Uri;)Ljava/lang/Boolean;
.catch com/common/android/utils/http/HttpAuthException from L0 to L1 using L2
.catch com/common/android/utils/http/ResponseException from L0 to L1 using L3
.catch com/common/android/utils/http/HttpServerException from L0 to L1 using L4
.catch com/common/android/utils/http/HttpException from L0 to L1 using L5
getstatic com/nd/android/u/cloud/activity/welcome/WelcomeInfo/INSTANCE Lcom/nd/android/u/cloud/activity/welcome/WelcomeInfo;
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeInfo/getHeadUri()Landroid/net/Uri;
ifnull L6
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity$UploadHeadBitmap/this$0 Lcom/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity;
getstatic com/nd/android/u/cloud/activity/welcome/WelcomeInfo/INSTANCE Lcom/nd/android/u/cloud/activity/welcome/WelcomeInfo;
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeInfo/getHeadUri()Landroid/net/Uri;
invokestatic ims/utils/CommUtil/getImgLocalPathByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
astore 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getSid()Ljava/lang/String;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
aload 1
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
iconst_0
invokestatic com/product/android/business/headImage/HeadImageLoader/sendFaceImageUploadWithWizard(Ljava/lang/String;JLandroid/graphics/Bitmap;I)Z
istore 3
iload 3
istore 2
iload 3
ifeq L7
aload 0
invokespecial com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity$UploadHeadBitmap/updateHeadInfo()V
iload 3
istore 2
L7:
iload 2
ifeq L1
L0:
new com/nd/android/u/tast/com/AjaxCom
dup
invokespecial com/nd/android/u/tast/com/AjaxCom/<init>()V
invokevirtual com/nd/android/u/tast/com/AjaxCom/getInitwizardScore()Lorg/json/JSONObject;
pop
L1:
iload 2
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
areturn
L6:
iconst_1
istore 2
goto L7
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpAuthException/printStackTrace()V
goto L1
L3:
astore 1
aload 1
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
goto L1
L4:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpServerException/printStackTrace()V
goto L1
L5:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L1
.limit locals 4
.limit stack 5
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Landroid/net/Uri;
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity$UploadHeadBitmap/doInBackground([Landroid/net/Uri;)Ljava/lang/Boolean;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity$UploadHeadBitmap/mPD Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/cancel()V
getstatic com/nd/android/u/cloud/activity/welcome/WelcomeInfo/INSTANCE Lcom/nd/android/u/cloud/activity/welcome/WelcomeInfo;
astore 4
aload 1
invokevirtual java/lang/Boolean/booleanValue()Z
ifeq L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lstore 2
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity$UploadHeadBitmap/this$0 Lcom/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity;
iconst_1
lload 2
invokestatic com/nd/android/u/cloud/helper/Utils/setGuideFlag(Landroid/content/Context;ZJ)V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity$UploadHeadBitmap/this$0 Lcom/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity;
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity/goNextActivity()V
aload 4
aload 4
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeInfo/getHeadUri()Landroid/net/Uri;
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeInfo/setLastUploadUri(Landroid/net/Uri;)V
return
L0:
ldc_w 2131493857
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
.limit locals 5
.limit stack 4
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/lang/Boolean
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity$UploadHeadBitmap/onPostExecute(Ljava/lang/Boolean;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPreExecute()V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity$UploadHeadBitmap/this$0 Lcom/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity;
astore 2
ldc_w 2131493856
istore 1
getstatic com/nd/android/u/cloud/activity/welcome/WelcomeInfo/INSTANCE Lcom/nd/android/u/cloud/activity/welcome/WelcomeInfo;
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeInfo/getHeadUri()Landroid/net/Uri;
ifnonnull L0
ldc_w 2131493843
istore 1
L0:
aload 0
aload 2
aconst_null
aload 2
iload 1
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;
putfield com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity$UploadHeadBitmap/mPD Landroid/app/ProgressDialog;
return
.limit locals 3
.limit stack 5
.end method
