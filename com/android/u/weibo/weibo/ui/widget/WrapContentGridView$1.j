.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/widget/WrapContentGridView$1
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.enclosing method com/android/u/weibo/weibo/ui/widget/WrapContentGridView/bindImageData(Landroid/app/Activity;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;ZI)Ljava/util/ArrayList;
.inner class inner com/android/u/weibo/weibo/ui/widget/WrapContentGridView$1

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/widget/WrapContentGridView;

.field final synthetic 'val$activity' Landroid/app/Activity;

.field final synthetic 'val$imageUrls' Ljava/util/ArrayList;

.field final synthetic 'val$scales' [F

.field final synthetic 'val$sourceImageUrls' Ljava/util/ArrayList;

.field final synthetic 'val$ti' Lcom/android/u/weibo/weibo/business/bean/TopicInfo;

.method <init>(Lcom/android/u/weibo/weibo/ui/widget/WrapContentGridView;Landroid/app/Activity;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;[F)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/widget/WrapContentGridView$1/this$0 Lcom/android/u/weibo/weibo/ui/widget/WrapContentGridView;
aload 0
aload 2
putfield com/android/u/weibo/weibo/ui/widget/WrapContentGridView$1/val$activity Landroid/app/Activity;
aload 0
aload 3
putfield com/android/u/weibo/weibo/ui/widget/WrapContentGridView$1/val$ti Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
aload 0
aload 4
putfield com/android/u/weibo/weibo/ui/widget/WrapContentGridView$1/val$sourceImageUrls Ljava/util/ArrayList;
aload 0
aload 5
putfield com/android/u/weibo/weibo/ui/widget/WrapContentGridView$1/val$imageUrls Ljava/util/ArrayList;
aload 0
aload 6
putfield com/android/u/weibo/weibo/ui/widget/WrapContentGridView$1/val$scales [F
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 7
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 0
getfield com/android/u/weibo/weibo/ui/widget/WrapContentGridView$1/this$0 Lcom/android/u/weibo/weibo/ui/widget/WrapContentGridView;
aload 0
getfield com/android/u/weibo/weibo/ui/widget/WrapContentGridView$1/val$activity Landroid/app/Activity;
aload 0
getfield com/android/u/weibo/weibo/ui/widget/WrapContentGridView$1/val$ti Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
aload 0
getfield com/android/u/weibo/weibo/ui/widget/WrapContentGridView$1/val$sourceImageUrls Ljava/util/ArrayList;
aload 0
getfield com/android/u/weibo/weibo/ui/widget/WrapContentGridView$1/val$imageUrls Ljava/util/ArrayList;
iload 3
aload 0
getfield com/android/u/weibo/weibo/ui/widget/WrapContentGridView$1/val$scales [F
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/startTweetFlowImageActivity(Landroid/app/Activity;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;I[F)V
return
.limit locals 6
.limit stack 7
.end method
