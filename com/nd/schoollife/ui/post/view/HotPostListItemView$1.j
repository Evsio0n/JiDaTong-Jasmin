.bytecode 50.0
.class synchronized com/nd/schoollife/ui/post/view/HotPostListItemView$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/post/view/HotPostListItemView/initView(Landroid/content/Context;)V
.inner class inner com/nd/schoollife/ui/post/view/HotPostListItemView$1

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/post/view/HotPostListItemView;

.method <init>(Lcom/nd/schoollife/ui/post/view/HotPostListItemView;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/view/HotPostListItemView$1/this$0 Lcom/nd/schoollife/ui/post/view/HotPostListItemView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getTag()Ljava/lang/Object;
astore 1
aload 1
ifnull L0
aload 1
instanceof com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean
ifeq L0
aload 1
checkcast com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean
astore 1
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/getType()I
bipush 8
if_icmpne L1
new android/content/Intent
dup
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView$1/this$0 Lcom/nd/schoollife/ui/post/view/HotPostListItemView;
invokestatic com/nd/schoollife/ui/post/view/HotPostListItemView/access$000(Lcom/nd/schoollife/ui/post/view/HotPostListItemView;)Landroid/content/Context;
ldc com/nd/schoollife/ui/team/activity/TeamHomeActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 2
ldc "LONG_TEAM_OR_COMMUNITY_ID"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/getId()J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView$1/this$0 Lcom/nd/schoollife/ui/post/view/HotPostListItemView;
invokestatic com/nd/schoollife/ui/post/view/HotPostListItemView/access$000(Lcom/nd/schoollife/ui/post/view/HotPostListItemView;)Landroid/content/Context;
aload 2
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
L0:
return
L1:
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/getType()I
bipush 16
if_icmpne L0
new android/content/Intent
dup
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView$1/this$0 Lcom/nd/schoollife/ui/post/view/HotPostListItemView;
invokestatic com/nd/schoollife/ui/post/view/HotPostListItemView/access$000(Lcom/nd/schoollife/ui/post/view/HotPostListItemView;)Landroid/content/Context;
ldc com/nd/schoollife/ui/community/activity/CommunityHomeActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 2
ldc "LONG_TEAM_OR_COMMUNITY_ID"
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/getId()J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 0
getfield com/nd/schoollife/ui/post/view/HotPostListItemView$1/this$0 Lcom/nd/schoollife/ui/post/view/HotPostListItemView;
invokestatic com/nd/schoollife/ui/post/view/HotPostListItemView/access$000(Lcom/nd/schoollife/ui/post/view/HotPostListItemView;)Landroid/content/Context;
aload 2
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 4
.end method
