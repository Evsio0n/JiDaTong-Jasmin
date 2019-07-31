.bytecode 50.0
.class synchronized com/nd/rj/common/login/jobnumber/CaptchaWidget$FetchCaptchaTask
.super android/os/AsyncTask
.signature "Landroid/os/AsyncTask<Lcom/nd/rj/common/login/jobnumber/CaptchaFetcher;Ljava/lang/Void;Landroid/graphics/drawable/Drawable;>;"
.inner class private static FetchCaptchaTask inner com/nd/rj/common/login/jobnumber/CaptchaWidget$FetchCaptchaTask outer com/nd/rj/common/login/jobnumber/CaptchaWidget

.field private 'mPD' Landroid/app/ProgressDialog;

.field private final 'mReusableCtx' Ljava/lang/ref/SoftReference; signature "Ljava/lang/ref/SoftReference<Landroid/content/Context;>;"

.field private final 'mReusableIv' Ljava/lang/ref/SoftReference; signature "Ljava/lang/ref/SoftReference<Landroid/widget/ImageView;>;"

.method <init>(Landroid/content/Context;Landroid/widget/ImageView;)V
aload 0
invokespecial android/os/AsyncTask/<init>()V
aload 0
new java/lang/ref/SoftReference
dup
aload 1
invokespecial java/lang/ref/SoftReference/<init>(Ljava/lang/Object;)V
putfield com/nd/rj/common/login/jobnumber/CaptchaWidget$FetchCaptchaTask/mReusableCtx Ljava/lang/ref/SoftReference;
aload 0
new java/lang/ref/SoftReference
dup
aload 2
invokespecial java/lang/ref/SoftReference/<init>(Ljava/lang/Object;)V
putfield com/nd/rj/common/login/jobnumber/CaptchaWidget$FetchCaptchaTask/mReusableIv Ljava/lang/ref/SoftReference;
return
.limit locals 3
.limit stack 4
.end method

.method protected transient doInBackground([Lcom/nd/rj/common/login/jobnumber/CaptchaFetcher;)Landroid/graphics/drawable/Drawable;
aload 1
iconst_0
aaload
astore 1
aload 1
ifnonnull L0
aconst_null
areturn
L0:
aload 1
aconst_null
invokeinterface com/nd/rj/common/login/jobnumber/CaptchaFetcher/getCaptchaFromServer(Landroid/content/Context;)Landroid/graphics/drawable/Drawable; 1
areturn
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Lcom/nd/rj/common/login/jobnumber/CaptchaFetcher;
invokevirtual com/nd/rj/common/login/jobnumber/CaptchaWidget$FetchCaptchaTask/doInBackground([Lcom/nd/rj/common/login/jobnumber/CaptchaFetcher;)Landroid/graphics/drawable/Drawable;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/rj/common/login/jobnumber/CaptchaWidget$FetchCaptchaTask/mPD Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/cancel()V
aload 1
ifnonnull L0
aload 0
getfield com/nd/rj/common/login/jobnumber/CaptchaWidget$FetchCaptchaTask/mReusableCtx Ljava/lang/ref/SoftReference;
ifnull L1
aload 0
getfield com/nd/rj/common/login/jobnumber/CaptchaWidget$FetchCaptchaTask/mReusableCtx Ljava/lang/ref/SoftReference;
invokevirtual java/lang/ref/SoftReference/get()Ljava/lang/Object;
checkcast android/content/Context
astore 1
aload 1
ifnull L1
aload 1
ldc_w 2131493717
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
L1:
return
L0:
aload 0
getfield com/nd/rj/common/login/jobnumber/CaptchaWidget$FetchCaptchaTask/mReusableIv Ljava/lang/ref/SoftReference;
ifnull L1
aload 0
getfield com/nd/rj/common/login/jobnumber/CaptchaWidget$FetchCaptchaTask/mReusableIv Ljava/lang/ref/SoftReference;
invokevirtual java/lang/ref/SoftReference/get()Ljava/lang/Object;
checkcast android/widget/ImageView
astore 2
aload 2
ifnull L1
aload 2
aload 1
invokevirtual android/widget/ImageView/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast android/graphics/drawable/Drawable
invokevirtual com/nd/rj/common/login/jobnumber/CaptchaWidget$FetchCaptchaTask/onPostExecute(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPreExecute()V
aload 0
getfield com/nd/rj/common/login/jobnumber/CaptchaWidget$FetchCaptchaTask/mReusableCtx Ljava/lang/ref/SoftReference;
invokevirtual java/lang/ref/SoftReference/get()Ljava/lang/Object;
checkcast android/content/Context
astore 1
aload 0
aload 1
aconst_null
aload 1
ldc_w 2131494444
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;
putfield com/nd/rj/common/login/jobnumber/CaptchaWidget$FetchCaptchaTask/mPD Landroid/app/ProgressDialog;
return
.limit locals 2
.limit stack 5
.end method
