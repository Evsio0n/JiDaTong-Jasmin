.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/CommentListActivity$7
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/android/u/weibo/weibo/ui/activity/CommentListActivity/initHeaderView(Landroid/view/View;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;ZI)V
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$7

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;

.field final synthetic 'val$tweet' Lcom/android/u/weibo/weibo/business/bean/TopicInfo;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$7/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
aload 0
aload 2
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$7/val$tweet Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "http://m.weibo.cn/u/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$7/val$tweet Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
new android/content/Intent
dup
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$7/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$400(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Landroid/content/Context;
ldc com/product/android/ui/activity/WebViewActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 2
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_RETURN Ljava/lang/String;
iconst_0
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 2
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_URL Ljava/lang/String;
aload 1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_NEED_TITLE Ljava/lang/String;
iconst_0
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$7/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$400(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Landroid/content/Context;
aload 2
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 4
.end method
