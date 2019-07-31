.bytecode 50.0
.class synchronized com/nd/android/u/news/ui/activity/NewsDetailActivity$4
.super com/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener
.enclosing method com/nd/android/u/news/ui/activity/NewsDetailActivity/loadImages()V
.inner class inner com/nd/android/u/news/ui/activity/NewsDetailActivity$4

.field final synthetic 'this$0' Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;

.field final synthetic 'val$id' Ljava/lang/String;

.field final synthetic 'val$path' Ljava/lang/String;

.method <init>(Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity$4/this$0 Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;
aload 0
aload 2
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity$4/val$path Ljava/lang/String;
aload 0
aload 3
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity$4/val$id Ljava/lang/String;
aload 0
invokespecial com/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener/<init>()V
return
.limit locals 4
.limit stack 2
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity$4/this$0 Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;
invokestatic com/nd/android/u/news/ui/activity/NewsDetailActivity/access$200(Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;)Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/contains(Ljava/lang/Object;)Z
ifeq L0
new java/lang/StringBuffer
dup
ldc "file://"
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 1
aload 1
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity$4/this$0 Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;
invokestatic com/nd/android/u/news/NewsGlobalSetting/getNewsNoCacheOpt(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity$4/val$path Ljava/lang/String;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/getDiscCacheFileAbsPath(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 2
aload 2
ldc "javascript:setImgSrc("
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity$4/val$id Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc ",'"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
aload 1
invokevirtual java/lang/StringBuffer/append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
ldc "')"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity$4/this$0 Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;
invokestatic com/nd/android/u/news/ui/activity/NewsDetailActivity/access$000(Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;)Landroid/webkit/WebView;
aload 2
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual android/webkit/WebView/loadUrl(Ljava/lang/String;)V
L0:
return
.limit locals 4
.limit stack 4
.end method
