.bytecode 50.0
.class synchronized com/nd/android/u/news/ui/activity/NewsDetailActivity$5
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/news/ui/activity/NewsDetailActivity/clickImage(Ljava/lang/String;)V
.inner class inner com/nd/android/u/news/ui/activity/NewsDetailActivity$5

.field final synthetic 'this$0' Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;

.field final synthetic 'val$index' I

.method <init>(Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;I)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity$5/this$0 Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;
aload 0
iload 2
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity$5/val$index I
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity$5/this$0 Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;
ldc com/nd/android/u/news/ui/activity/PhotoViewActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "news_pic_index"
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity$5/val$index I
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 1
ldc "news_pic_info"
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity$5/this$0 Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;
invokestatic com/nd/android/u/news/ui/activity/NewsDetailActivity/access$200(Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;)Ljava/util/ArrayList;
invokevirtual android/content/Intent/putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity$5/this$0 Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;
aload 1
invokevirtual com/nd/android/u/news/ui/activity/NewsDetailActivity/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 4
.end method
