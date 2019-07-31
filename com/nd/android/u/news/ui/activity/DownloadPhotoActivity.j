.bytecode 50.0
.class public synchronized com/nd/android/u/news/ui/activity/DownloadPhotoActivity
.super android/app/Activity
.implements android/view/View$OnClickListener

.field private 'btnCancle' Landroid/widget/Button;

.field private 'btnDownload' Landroid/widget/Button;

.field private 'isDownloading' Z

.field private 'mTask' Lcom/product/android/utils/SaveTweetImageTask;

.field private 'picUrl' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
aload 0
ldc ""
putfield com/nd/android/u/news/ui/activity/DownloadPhotoActivity/picUrl Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/android/u/news/ui/activity/DownloadPhotoActivity/isDownloading Z
return
.limit locals 1
.limit stack 2
.end method

.method private doSave(Ljava/lang/String;)V
aload 1
invokestatic com/common/android/utils/UrlUtils/isUrl(Ljava/lang/String;)Z
ifeq L0
aload 0
new com/product/android/utils/SaveTweetImageTask
dup
aload 1
ldc ".jpg"
aload 0
aload 0
invokestatic com/nd/android/u/news/NewsGlobalSetting/getNewsNoCacheOpt(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokespecial com/product/android/utils/SaveTweetImageTask/<init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
putfield com/nd/android/u/news/ui/activity/DownloadPhotoActivity/mTask Lcom/product/android/utils/SaveTweetImageTask;
aload 0
getfield com/nd/android/u/news/ui/activity/DownloadPhotoActivity/mTask Lcom/product/android/utils/SaveTweetImageTask;
iconst_0
anewarray java/lang/String
invokevirtual com/product/android/utils/SaveTweetImageTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
L0:
aload 0
aload 0
getstatic com/nd/android/u/news/R$string/acknowledge I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
invokevirtual com/nd/android/u/news/ui/activity/DownloadPhotoActivity/getString(I[Ljava/lang/Object;)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 7
.end method

.method private initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/news/R$id/btn_cancel I
invokevirtual com/nd/android/u/news/ui/activity/DownloadPhotoActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/news/ui/activity/DownloadPhotoActivity/btnCancle Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/news/R$id/btn_download_photo I
invokevirtual com/nd/android/u/news/ui/activity/DownloadPhotoActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/news/ui/activity/DownloadPhotoActivity/btnDownload Landroid/widget/Button;
aload 0
getfield com/nd/android/u/news/ui/activity/DownloadPhotoActivity/btnCancle Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/news/ui/activity/DownloadPhotoActivity/btnDownload Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 3
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/news/R$id/btn_cancel I
if_icmpne L0
aload 0
invokevirtual com/nd/android/u/news/ui/activity/DownloadPhotoActivity/finish()V
L1:
return
L0:
aload 0
getfield com/nd/android/u/news/ui/activity/DownloadPhotoActivity/isDownloading Z
ifne L1
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/news/R$id/btn_download_photo I
if_icmpne L1
aload 0
getfield com/nd/android/u/news/ui/activity/DownloadPhotoActivity/mTask Lcom/product/android/utils/SaveTweetImageTask;
ifnull L2
aload 0
getfield com/nd/android/u/news/ui/activity/DownloadPhotoActivity/mTask Lcom/product/android/utils/SaveTweetImageTask;
invokevirtual com/product/android/utils/SaveTweetImageTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpeq L1
L2:
aload 0
aload 0
getfield com/nd/android/u/news/ui/activity/DownloadPhotoActivity/picUrl Ljava/lang/String;
invokespecial com/nd/android/u/news/ui/activity/DownloadPhotoActivity/doSave(Ljava/lang/String;)V
aload 0
invokevirtual com/nd/android/u/news/ui/activity/DownloadPhotoActivity/finish()V
return
.limit locals 2
.limit stack 2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
aload 0
iconst_1
invokevirtual com/nd/android/u/news/ui/activity/DownloadPhotoActivity/requestWindowFeature(I)Z
pop
aload 0
getstatic com/nd/android/u/news/R$layout/download_main I
invokevirtual com/nd/android/u/news/ui/activity/DownloadPhotoActivity/setContentView(I)V
aload 0
invokespecial com/nd/android/u/news/ui/activity/DownloadPhotoActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/news/ui/activity/DownloadPhotoActivity/getIntent()Landroid/content/Intent;
ifnull L0
aload 0
aload 0
invokevirtual com/nd/android/u/news/ui/activity/DownloadPhotoActivity/getIntent()Landroid/content/Intent;
ldc "url"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/news/ui/activity/DownloadPhotoActivity/picUrl Ljava/lang/String;
L0:
return
.limit locals 2
.limit stack 3
.end method
