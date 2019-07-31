.bytecode 50.0
.class synchronized com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$5$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$5/onRequstResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$5
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$5$1

.field final synthetic 'this$1' Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$5;

.field final synthetic 'val$holder' Lcom/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter$Holder;

.field final synthetic 'val$url' Ljava/lang/String;

.method <init>(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$5;Ljava/lang/String;Lcom/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter$Holder;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$5$1/this$1 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$5;
aload 0
aload 2
putfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$5$1/val$url Ljava/lang/String;
aload 0
aload 3
putfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$5$1/val$holder Lcom/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter$Holder;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 4
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$5$1/val$url Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$5$1/val$holder Lcom/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter$Holder;
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter$Holder/image Lcom/nd/android/u/ui/widge/CircleImageView;
iconst_1
invokestatic com/product/android/business/headImage/HeadImageLoader/displayPspImage(Ljava/lang/String;Landroid/widget/ImageView;Z)V
return
.limit locals 1
.limit stack 3
.end method
