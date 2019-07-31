.bytecode 50.0
.class synchronized com/nd/schoollife/ui/community/activity/CommunityHomeActivity$5
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/community/activity/CommunityHomeActivity/buildUnJoinedPostListView(IILjava/util/List;)V
.inner class inner com/nd/schoollife/ui/community/activity/CommunityHomeActivity$5

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;

.field final synthetic 'val$finalTid' J

.method <init>(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;J)V
aload 0
aload 1
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity$5/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;
aload 0
lload 2
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity$5/val$finalTid J
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 4
.limit stack 3
.end method

.method public onClick(Landroid/view/View;)V
new android/content/Intent
dup
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity$5/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;
invokestatic com/nd/schoollife/ui/community/activity/CommunityHomeActivity/access$400(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)Landroid/content/Context;
ldc com/nd/schoollife/ui/post/activity/PostDetailActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "INT_POST_ID"
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity$5/val$finalTid J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity$5/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;
aload 1
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 4
.end method
