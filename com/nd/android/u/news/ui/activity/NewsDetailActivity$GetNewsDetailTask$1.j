.bytecode 50.0
.class synchronized com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask/onPostExecute(Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;)V
.inner class private GetNewsDetailTask inner com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask outer com/nd/android/u/news/ui/activity/NewsDetailActivity
.inner class inner com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask$1

.field final synthetic 'this$1' Lcom/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask;

.field final synthetic 'val$result' Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;

.method <init>(Lcom/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask;Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask$1/this$1 Lcom/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask;
aload 0
aload 2
putfield com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask$1/val$result Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask$1/this$1 Lcom/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask;
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask/this$0 Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsDetailActivity$GetNewsDetailTask$1/val$result Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
invokestatic com/nd/android/u/news/ui/activity/NewsDetailActivity/access$800(Lcom/nd/android/u/news/ui/activity/NewsDetailActivity;Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;)V
return
.limit locals 1
.limit stack 2
.end method
