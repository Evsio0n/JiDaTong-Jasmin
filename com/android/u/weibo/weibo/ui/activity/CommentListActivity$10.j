.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/CommentListActivity$10
.super com/nostra13/universalimageloader/core/assist/SimpleImageLoadingListener
.enclosing method com/android/u/weibo/weibo/ui/activity/CommentListActivity/showDynamicGif(Landroid/widget/RelativeLayout;Lcom/android/u/weibo/weibo/ui/widget/WrapContentGridView;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$10
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$10$1

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;

.field final synthetic 'val$mWrapContentGridView' Lcom/android/u/weibo/weibo/ui/widget/WrapContentGridView;

.field final synthetic 'val$rPara' Landroid/widget/RelativeLayout$LayoutParams;

.field final synthetic 'val$relativeLayout' Landroid/widget/RelativeLayout;

.field final synthetic 'val$sourceUrl' Ljava/lang/String;

.field final synthetic 'val$tweet' Lcom/android/u/weibo/weibo/business/bean/TopicInfo;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;Lcom/android/u/weibo/weibo/ui/widget/WrapContentGridView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$LayoutParams;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;Ljava/lang/String;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$10/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
aload 0
aload 2
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$10/val$mWrapContentGridView Lcom/android/u/weibo/weibo/ui/widget/WrapContentGridView;
aload 0
aload 3
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$10/val$relativeLayout Landroid/widget/RelativeLayout;
aload 0
aload 4
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$10/val$rPara Landroid/widget/RelativeLayout$LayoutParams;
aload 0
aload 5
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$10/val$tweet Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
aload 0
aload 6
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$10/val$sourceUrl Ljava/lang/String;
aload 0
invokespecial com/nostra13/universalimageloader/core/assist/SimpleImageLoadingListener/<init>()V
return
.limit locals 7
.limit stack 2
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
.catch java/io/FileNotFoundException from L0 to L1 using L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$10/val$mWrapContentGridView Lcom/android/u/weibo/weibo/ui/widget/WrapContentGridView;
bipush 8
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$10/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$1000(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/common/android/ui/gif/GifImageView;
ifnonnull L3
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$10/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
new com/common/android/ui/gif/GifImageView
dup
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$10/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$400(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Landroid/content/Context;
invokespecial com/common/android/ui/gif/GifImageView/<init>(Landroid/content/Context;)V
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$1002(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;Lcom/common/android/ui/gif/GifImageView;)Lcom/common/android/ui/gif/GifImageView;
pop
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$10/val$relativeLayout Landroid/widget/RelativeLayout;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$10/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$1000(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/common/android/ui/gif/GifImageView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$10/val$rPara Landroid/widget/RelativeLayout$LayoutParams;
invokevirtual android/widget/RelativeLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$10/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$1000(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/common/android/ui/gif/GifImageView;
new com/android/u/weibo/weibo/ui/activity/CommentListActivity$10$1
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity$10$1/<init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$10;)V
invokevirtual com/common/android/ui/gif/GifImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$10/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity/mImageLoader Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$10/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$400(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/getWeiboNoCacheOpt(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$10/val$sourceUrl Ljava/lang/String;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/getDiscCacheFileAbsPath(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Ljava/lang/String;)Ljava/lang/String;
astore 1
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$10/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$1000(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/common/android/ui/gif/GifImageView;
aload 1
invokevirtual com/common/android/ui/gif/GifImageView/setGifImage(Ljava/lang/String;)V
L1:
return
L2:
astore 1
aload 1
invokevirtual java/io/FileNotFoundException/printStackTrace()V
return
.limit locals 4
.limit stack 4
.end method
