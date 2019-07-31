.bytecode 50.0
.class synchronized com/nd/android/u/news/ui/adapter/ZanListAdapter$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/news/ui/adapter/ZanListAdapter/getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.inner class inner com/nd/android/u/news/ui/adapter/ZanListAdapter$1

.field final synthetic 'this$0' Lcom/nd/android/u/news/ui/adapter/ZanListAdapter;

.field final synthetic 'val$position' I

.method <init>(Lcom/nd/android/u/news/ui/adapter/ZanListAdapter;I)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/adapter/ZanListAdapter$1/this$0 Lcom/nd/android/u/news/ui/adapter/ZanListAdapter;
aload 0
iload 2
putfield com/nd/android/u/news/ui/adapter/ZanListAdapter$1/val$position I
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/news/ui/adapter/ZanListAdapter$1/this$0 Lcom/nd/android/u/news/ui/adapter/ZanListAdapter;
invokestatic com/nd/android/u/news/ui/adapter/ZanListAdapter/access$100(Lcom/nd/android/u/news/ui/adapter/ZanListAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/news/ui/adapter/ZanListAdapter$1/this$0 Lcom/nd/android/u/news/ui/adapter/ZanListAdapter;
aload 0
getfield com/nd/android/u/news/ui/adapter/ZanListAdapter$1/val$position I
invokevirtual com/nd/android/u/news/ui/adapter/ZanListAdapter/getItem(I)Lcom/nd/android/forumsdk/business/bean/structure/PraiseUserInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/PraiseUserInfoBean/getUser_info()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getUid()J
invokestatic com/nd/android/u/news/newsInterfaceImpl/NewsCallOtherModel/gotoProfileActivity(Landroid/content/Context;J)V
return
.limit locals 2
.limit stack 3
.end method
