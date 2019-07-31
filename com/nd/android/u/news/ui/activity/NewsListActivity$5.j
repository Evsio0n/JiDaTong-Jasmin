.bytecode 50.0
.class synchronized com/nd/android/u/news/ui/activity/NewsListActivity$5
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/news/ui/activity/NewsListActivity/afterGetMoreDatasFail(Ljava/lang/String;)V
.inner class inner com/nd/android/u/news/ui/activity/NewsListActivity$5

.field final synthetic 'this$0' Lcom/nd/android/u/news/ui/activity/NewsListActivity;

.field final synthetic 'val$errorMsg' Ljava/lang/String;

.method <init>(Lcom/nd/android/u/news/ui/activity/NewsListActivity;Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/activity/NewsListActivity$5/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
aload 0
aload 2
putfield com/nd/android/u/news/ui/activity/NewsListActivity$5/val$errorMsg Ljava/lang/String;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$5/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
iconst_1
putfield com/nd/android/u/news/ui/activity/NewsListActivity/mHasMoreData Z
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$5/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mFootView Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$5/val$errorMsg Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Ljava/lang/String;)V
return
.limit locals 1
.limit stack 2
.end method
