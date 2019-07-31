.bytecode 50.0
.class synchronized com/nd/schoollife/ui/post/activity/PostListActivity$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/post/activity/PostListActivity/initContentView()V
.inner class inner com/nd/schoollife/ui/post/activity/PostListActivity$2

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/post/activity/PostListActivity;

.method <init>(Lcom/nd/schoollife/ui/post/activity/PostListActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/activity/PostListActivity$2/this$0 Lcom/nd/schoollife/ui/post/activity/PostListActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
new android/content/Intent
dup
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity$2/this$0 Lcom/nd/schoollife/ui/post/activity/PostListActivity;
invokestatic com/nd/schoollife/ui/post/activity/PostListActivity/access$000(Lcom/nd/schoollife/ui/post/activity/PostListActivity;)Landroid/content/Context;
ldc com/nd/schoollife/ui/post/activity/PostSendActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "LONG_TEAM_OR_COMMUNITY_ID"
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity$2/this$0 Lcom/nd/schoollife/ui/post/activity/PostListActivity;
invokestatic com/nd/schoollife/ui/post/activity/PostListActivity/access$100(Lcom/nd/schoollife/ui/post/activity/PostListActivity;)J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 1
ldc "INT_SCOPE_TYPE"
bipush 16
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 0
getfield com/nd/schoollife/ui/post/activity/PostListActivity$2/this$0 Lcom/nd/schoollife/ui/post/activity/PostListActivity;
aload 1
sipush 999
invokevirtual com/nd/schoollife/ui/post/activity/PostListActivity/startActivityForResult(Landroid/content/Intent;I)V
return
.limit locals 2
.limit stack 4
.end method
