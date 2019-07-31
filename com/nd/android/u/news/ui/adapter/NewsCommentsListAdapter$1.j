.bytecode 50.0
.class synchronized com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter/getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.inner class inner com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter$1

.field final synthetic 'this$0' Lcom/nd/android/u/news/ui/adapter/NewsCommentsListAdapter;

.field final synthetic 'val$replyInfoBean' Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;

.method <init>(Lcom/nd/android/u/news/ui/adapter/NewsCommentsListAdapter;Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter$1/this$0 Lcom/nd/android/u/news/ui/adapter/NewsCommentsListAdapter;
aload 0
aload 2
putfield com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter$1/val$replyInfoBean Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter$1/this$0 Lcom/nd/android/u/news/ui/adapter/NewsCommentsListAdapter;
invokestatic com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter/access$000(Lcom/nd/android/u/news/ui/adapter/NewsCommentsListAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter$1/val$replyInfoBean Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/getUid()J
invokestatic com/nd/android/u/news/newsInterfaceImpl/NewsCallOtherModel/gotoProfileActivity(Landroid/content/Context;J)V
return
.limit locals 2
.limit stack 3
.end method
