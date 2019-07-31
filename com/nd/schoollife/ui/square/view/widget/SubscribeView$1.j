.bytecode 50.0
.class synchronized com/nd/schoollife/ui/square/view/widget/SubscribeView$1
.super java/lang/Object
.implements com/nd/schoollife/ui/common/process/InputContentViewManager$OnCommentViewShowListener
.enclosing method com/nd/schoollife/ui/square/view/widget/SubscribeView/initView(Landroid/app/Activity;)V
.inner class inner com/nd/schoollife/ui/square/view/widget/SubscribeView$1

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/square/view/widget/SubscribeView;

.method <init>(Lcom/nd/schoollife/ui/square/view/widget/SubscribeView;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/square/view/widget/SubscribeView$1/this$0 Lcom/nd/schoollife/ui/square/view/widget/SubscribeView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public afterCommentViewHide()V
new android/content/Intent
dup
ldc "com.nd.schoollife.changemainbottom"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 1
aload 1
ldc "BOOL_MAIN_BOTTOM_CHANGE"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView$1/this$0 Lcom/nd/schoollife/ui/square/view/widget/SubscribeView;
invokestatic com/nd/schoollife/ui/square/view/widget/SubscribeView/access$000(Lcom/nd/schoollife/ui/square/view/widget/SubscribeView;)Landroid/app/Activity;
aload 1
invokevirtual android/app/Activity/sendBroadcast(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 3
.end method

.method public afterCommentViewShow()V
return
.limit locals 1
.limit stack 0
.end method

.method public beforeCommentViewShow()Z
new android/content/Intent
dup
ldc "com.nd.schoollife.changemainbottom"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 1
aload 1
ldc "BOOL_MAIN_BOTTOM_CHANGE"
iconst_0
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView$1/this$0 Lcom/nd/schoollife/ui/square/view/widget/SubscribeView;
invokestatic com/nd/schoollife/ui/square/view/widget/SubscribeView/access$000(Lcom/nd/schoollife/ui/square/view/widget/SubscribeView;)Landroid/app/Activity;
aload 1
invokevirtual android/app/Activity/sendBroadcast(Landroid/content/Intent;)V
iconst_1
ireturn
.limit locals 2
.limit stack 3
.end method
