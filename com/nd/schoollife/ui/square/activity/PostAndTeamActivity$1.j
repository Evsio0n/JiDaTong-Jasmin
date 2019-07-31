.bytecode 50.0
.class synchronized com/nd/schoollife/ui/square/activity/PostAndTeamActivity$1
.super java/lang/Object
.implements android/view/View$OnLayoutChangeListener
.enclosing method com/nd/schoollife/ui/square/activity/PostAndTeamActivity/initView()V
.inner class inner com/nd/schoollife/ui/square/activity/PostAndTeamActivity$1

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/square/activity/PostAndTeamActivity;

.method <init>(Lcom/nd/schoollife/ui/square/activity/PostAndTeamActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity$1/this$0 Lcom/nd/schoollife/ui/square/activity/PostAndTeamActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
iload 9
iload 5
isub
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity$1/this$0 Lcom/nd/schoollife/ui/square/activity/PostAndTeamActivity;
invokestatic com/nd/schoollife/ui/square/activity/PostAndTeamActivity/access$000(Lcom/nd/schoollife/ui/square/activity/PostAndTeamActivity;)I
iconst_4
idiv
if_icmpge L0
L1:
return
L0:
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity$1/this$0 Lcom/nd/schoollife/ui/square/activity/PostAndTeamActivity;
invokestatic com/nd/schoollife/ui/square/activity/PostAndTeamActivity/access$100(Lcom/nd/schoollife/ui/square/activity/PostAndTeamActivity;)Z
ifeq L1
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity$1/this$0 Lcom/nd/schoollife/ui/square/activity/PostAndTeamActivity;
invokestatic com/nd/schoollife/ui/square/activity/PostAndTeamActivity/access$200(Lcom/nd/schoollife/ui/square/activity/PostAndTeamActivity;)Lcom/nd/schoollife/ui/square/view/widget/HotPostListView;
ifnull L2
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity$1/this$0 Lcom/nd/schoollife/ui/square/activity/PostAndTeamActivity;
invokestatic com/nd/schoollife/ui/square/activity/PostAndTeamActivity/access$200(Lcom/nd/schoollife/ui/square/activity/PostAndTeamActivity;)Lcom/nd/schoollife/ui/square/view/widget/HotPostListView;
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity$1/this$0 Lcom/nd/schoollife/ui/square/activity/PostAndTeamActivity;
invokestatic com/nd/schoollife/ui/square/activity/PostAndTeamActivity/access$300(Lcom/nd/schoollife/ui/square/activity/PostAndTeamActivity;)Landroid/view/View;
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity$1/this$0 Lcom/nd/schoollife/ui/square/activity/PostAndTeamActivity;
invokestatic com/nd/schoollife/ui/square/activity/PostAndTeamActivity/access$400(Lcom/nd/schoollife/ui/square/activity/PostAndTeamActivity;)I
iload 5
invokevirtual com/nd/schoollife/ui/square/view/widget/HotPostListView/moveToSpecialPosition(Landroid/view/View;II)V
L2:
aload 0
getfield com/nd/schoollife/ui/square/activity/PostAndTeamActivity$1/this$0 Lcom/nd/schoollife/ui/square/activity/PostAndTeamActivity;
iconst_0
invokestatic com/nd/schoollife/ui/square/activity/PostAndTeamActivity/access$102(Lcom/nd/schoollife/ui/square/activity/PostAndTeamActivity;Z)Z
pop
return
.limit locals 10
.limit stack 4
.end method
