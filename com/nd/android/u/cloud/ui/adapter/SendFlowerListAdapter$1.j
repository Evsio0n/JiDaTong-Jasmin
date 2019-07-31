.bytecode 50.0
.class synchronized com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter/getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.inner class inner com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter;

.field final synthetic 'val$photoWallItem' Lcom/nd/android/u/contact/view/PhotoWallItem;

.method <init>(Lcom/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter;Lcom/nd/android/u/contact/view/PhotoWallItem;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter$1/this$0 Lcom/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter;
aload 0
aload 2
putfield com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter$1/val$photoWallItem Lcom/nd/android/u/contact/view/PhotoWallItem;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter$1/this$0 Lcom/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter;
getfield com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter/mContext Landroid/content/Context;
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter$1/val$photoWallItem Lcom/nd/android/u/contact/view/PhotoWallItem;
getfield com/nd/android/u/contact/view/PhotoWallItem/uid J
invokestatic com/android/u/weibo/weibo/utils/WeiboActivityUtils/toTweetProfileActivity(Landroid/content/Context;J)V
return
.limit locals 2
.limit stack 3
.end method
