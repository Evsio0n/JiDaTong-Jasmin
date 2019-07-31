.bytecode 50.0
.class synchronized com/nd/schoollife/ui/square/view/BannerView$BannerListAdapter$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/square/view/BannerView$BannerListAdapter/instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.inner class private BannerListAdapter inner com/nd/schoollife/ui/square/view/BannerView$BannerListAdapter outer com/nd/schoollife/ui/square/view/BannerView
.inner class inner com/nd/schoollife/ui/square/view/BannerView$BannerListAdapter$1

.field final synthetic 'this$1' Lcom/nd/schoollife/ui/square/view/BannerView$BannerListAdapter;

.field final synthetic 'val$item' Lcom/nd/schoollife/common/bean/structure/BannerItemBean;

.method <init>(Lcom/nd/schoollife/ui/square/view/BannerView$BannerListAdapter;Lcom/nd/schoollife/common/bean/structure/BannerItemBean;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/square/view/BannerView$BannerListAdapter$1/this$1 Lcom/nd/schoollife/ui/square/view/BannerView$BannerListAdapter;
aload 0
aload 2
putfield com/nd/schoollife/ui/square/view/BannerView$BannerListAdapter$1/val$item Lcom/nd/schoollife/common/bean/structure/BannerItemBean;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView$BannerListAdapter$1/val$item Lcom/nd/schoollife/common/bean/structure/BannerItemBean;
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/getType()Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
L1:
return
L0:
aload 1
ldc "team"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
new android/content/Intent
dup
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView$BannerListAdapter$1/this$1 Lcom/nd/schoollife/ui/square/view/BannerView$BannerListAdapter;
getfield com/nd/schoollife/ui/square/view/BannerView$BannerListAdapter/this$0 Lcom/nd/schoollife/ui/square/view/BannerView;
invokestatic com/nd/schoollife/ui/square/view/BannerView/access$400(Lcom/nd/schoollife/ui/square/view/BannerView;)Landroid/content/Context;
ldc com/nd/schoollife/ui/team/activity/TeamHomeActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "LONG_TEAM_OR_COMMUNITY_ID"
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView$BannerListAdapter$1/val$item Lcom/nd/schoollife/common/bean/structure/BannerItemBean;
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/getScope_id()J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView$BannerListAdapter$1/this$1 Lcom/nd/schoollife/ui/square/view/BannerView$BannerListAdapter;
getfield com/nd/schoollife/ui/square/view/BannerView$BannerListAdapter/this$0 Lcom/nd/schoollife/ui/square/view/BannerView;
invokestatic com/nd/schoollife/ui/square/view/BannerView/access$400(Lcom/nd/schoollife/ui/square/view/BannerView;)Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
L2:
aload 1
ldc "community"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
new android/content/Intent
dup
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView$BannerListAdapter$1/this$1 Lcom/nd/schoollife/ui/square/view/BannerView$BannerListAdapter;
getfield com/nd/schoollife/ui/square/view/BannerView$BannerListAdapter/this$0 Lcom/nd/schoollife/ui/square/view/BannerView;
invokestatic com/nd/schoollife/ui/square/view/BannerView/access$400(Lcom/nd/schoollife/ui/square/view/BannerView;)Landroid/content/Context;
ldc com/nd/schoollife/ui/community/activity/CommunityHomeActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "LONG_TEAM_OR_COMMUNITY_ID"
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView$BannerListAdapter$1/val$item Lcom/nd/schoollife/common/bean/structure/BannerItemBean;
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/getScope_id()J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView$BannerListAdapter$1/this$1 Lcom/nd/schoollife/ui/square/view/BannerView$BannerListAdapter;
getfield com/nd/schoollife/ui/square/view/BannerView$BannerListAdapter/this$0 Lcom/nd/schoollife/ui/square/view/BannerView;
invokestatic com/nd/schoollife/ui/square/view/BannerView/access$400(Lcom/nd/schoollife/ui/square/view/BannerView;)Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
L3:
aload 1
ldc "senior"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L4
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView$BannerListAdapter$1/this$1 Lcom/nd/schoollife/ui/square/view/BannerView$BannerListAdapter;
getfield com/nd/schoollife/ui/square/view/BannerView$BannerListAdapter/this$0 Lcom/nd/schoollife/ui/square/view/BannerView;
invokestatic com/nd/schoollife/ui/square/view/BannerView/access$400(Lcom/nd/schoollife/ui/square/view/BannerView;)Landroid/content/Context;
invokestatic com/nd/schoollife/schoollifeinterfaceImpl/CallOtherModel/gotoSeniorSystem(Landroid/content/Context;)V
return
L4:
aload 1
ldc "unicom_flow"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView$BannerListAdapter$1/this$1 Lcom/nd/schoollife/ui/square/view/BannerView$BannerListAdapter;
getfield com/nd/schoollife/ui/square/view/BannerView$BannerListAdapter/this$0 Lcom/nd/schoollife/ui/square/view/BannerView;
invokestatic com/nd/schoollife/ui/square/view/BannerView/access$400(Lcom/nd/schoollife/ui/square/view/BannerView;)Landroid/content/Context;
invokestatic com/nd/schoollife/schoollifeinterfaceImpl/CallOtherModel/gotoApplyWoflowBagActivity(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 4
.end method
