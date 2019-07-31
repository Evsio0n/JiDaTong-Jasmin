.bytecode 50.0
.class synchronized com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/contact/ui/adapter/MultiTreeAdapter/getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.inner class inner com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/ui/adapter/MultiTreeAdapter;

.field final synthetic 'val$uid' J

.method <init>(Lcom/nd/android/u/contact/ui/adapter/MultiTreeAdapter;J)V
aload 0
aload 1
putfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$1/this$0 Lcom/nd/android/u/contact/ui/adapter/MultiTreeAdapter;
aload 0
lload 2
putfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$1/val$uid J
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 4
.limit stack 3
.end method

.method public onClick(Landroid/view/View;)V
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 0
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$1/val$uid J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
ifnull L0
aload 0
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$1/this$0 Lcom/nd/android/u/contact/ui/adapter/MultiTreeAdapter;
invokestatic com/nd/android/u/contact/ui/adapter/MultiTreeAdapter/access$100(Lcom/nd/android/u/contact/ui/adapter/MultiTreeAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$1/val$uid J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$WeiboEntry/toTweetProfileActivity(Landroid/content/Context;J)V
L0:
return
.limit locals 2
.limit stack 3
.end method
