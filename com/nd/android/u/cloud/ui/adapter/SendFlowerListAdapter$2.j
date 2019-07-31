.bytecode 50.0
.class synchronized com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter/getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.inner class inner com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter$2

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter;

.field final synthetic 'val$photoWallItem' Lcom/nd/android/u/contact/view/PhotoWallItem;

.method <init>(Lcom/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter;Lcom/nd/android/u/contact/view/PhotoWallItem;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter$2/this$0 Lcom/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter;
aload 0
aload 2
putfield com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter$2/val$photoWallItem Lcom/nd/android/u/contact/view/PhotoWallItem;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
new com/android/u/weibo/flower/ui/dialog/SendFlowerDialog
dup
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter$2/this$0 Lcom/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter;
getfield com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter/mContext Landroid/content/Context;
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter$2/this$0 Lcom/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter;
getfield com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter/flowerDialogListener Lcom/product/android/commonInterface/weibo/ISendFlowerDialogListener;
invokespecial com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/<init>(Landroid/content/Context;Lcom/product/android/commonInterface/weibo/ISendFlowerDialogListener;)V
astore 1
aload 1
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
getfield com/nd/android/u/contact/business/ContactGlobalVariable/mItemid J
putfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mItemId J
aload 1
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
getfield com/nd/android/u/contact/business/ContactGlobalVariable/mFlowerNum I
putfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mFlowerNum I
aload 1
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SendFlowerListAdapter$2/val$photoWallItem Lcom/nd/android/u/contact/view/PhotoWallItem;
getfield com/nd/android/u/contact/view/PhotoWallItem/uid J
invokevirtual com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/showDialog(J)V
return
.limit locals 2
.limit stack 4
.end method
