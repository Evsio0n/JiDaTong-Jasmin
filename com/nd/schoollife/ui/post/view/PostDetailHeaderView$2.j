.bytecode 50.0
.class synchronized com/nd/schoollife/ui/post/view/PostDetailHeaderView$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/post/view/PostDetailHeaderView/initView(Landroid/content/Context;)V
.inner class inner com/nd/schoollife/ui/post/view/PostDetailHeaderView$2

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/post/view/PostDetailHeaderView;

.method <init>(Lcom/nd/schoollife/ui/post/view/PostDetailHeaderView;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/view/PostDetailHeaderView$2/this$0 Lcom/nd/schoollife/ui/post/view/PostDetailHeaderView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
ifnull L0
aload 1
invokevirtual android/view/View/getTag()Ljava/lang/Object;
ifnull L0
aload 1
invokevirtual android/view/View/getTag()Ljava/lang/Object;
instanceof com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean
ifeq L0
aload 1
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean
astore 1
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/getType()I
istore 2
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/getId()J
lstore 3
iload 2
lookupswitch
8 : L1
16 : L2
default : L0
L0:
return
L1:
new android/content/Intent
dup
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailHeaderView$2/this$0 Lcom/nd/schoollife/ui/post/view/PostDetailHeaderView;
invokestatic com/nd/schoollife/ui/post/view/PostDetailHeaderView/access$100(Lcom/nd/schoollife/ui/post/view/PostDetailHeaderView;)Landroid/content/Context;
ldc com/nd/schoollife/ui/team/activity/TeamHomeActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "LONG_TEAM_OR_COMMUNITY_ID"
lload 3
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailHeaderView$2/this$0 Lcom/nd/schoollife/ui/post/view/PostDetailHeaderView;
invokestatic com/nd/schoollife/ui/post/view/PostDetailHeaderView/access$100(Lcom/nd/schoollife/ui/post/view/PostDetailHeaderView;)Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
L2:
new android/content/Intent
dup
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailHeaderView$2/this$0 Lcom/nd/schoollife/ui/post/view/PostDetailHeaderView;
invokestatic com/nd/schoollife/ui/post/view/PostDetailHeaderView/access$100(Lcom/nd/schoollife/ui/post/view/PostDetailHeaderView;)Landroid/content/Context;
ldc com/nd/schoollife/ui/community/activity/CommunityHomeActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "LONG_TEAM_OR_COMMUNITY_ID"
lload 3
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 0
getfield com/nd/schoollife/ui/post/view/PostDetailHeaderView$2/this$0 Lcom/nd/schoollife/ui/post/view/PostDetailHeaderView;
invokestatic com/nd/schoollife/ui/post/view/PostDetailHeaderView/access$100(Lcom/nd/schoollife/ui/post/view/PostDetailHeaderView;)Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 5
.limit stack 4
.end method
