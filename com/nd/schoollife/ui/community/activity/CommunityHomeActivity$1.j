.bytecode 50.0
.class synchronized com/nd/schoollife/ui/community/activity/CommunityHomeActivity$1
.super java/lang/Object
.implements android/widget/AbsListView$OnScrollListener
.enclosing method com/nd/schoollife/ui/community/activity/CommunityHomeActivity/initEvent()V
.inner class inner com/nd/schoollife/ui/community/activity/CommunityHomeActivity$1

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;

.method <init>(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity$1/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
return
.limit locals 5
.limit stack 0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity$1/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;
invokestatic com/nd/schoollife/ui/community/activity/CommunityHomeActivity/access$000(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity$1/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;
invokestatic com/nd/schoollife/ui/community/activity/CommunityHomeActivity/access$000(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/hideView()V
L0:
iload 2
ifne L1
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity$1/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;
invokestatic com/nd/schoollife/ui/community/activity/CommunityHomeActivity/access$100(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)Lcom/nd/schoollife/ui/team/view/SlideHolder;
iconst_1
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/setEnabled(Z)V
L2:
return
L1:
iload 2
iconst_2
if_icmpne L3
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity$1/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;
invokestatic com/nd/schoollife/ui/community/activity/CommunityHomeActivity/access$100(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)Lcom/nd/schoollife/ui/team/view/SlideHolder;
iconst_0
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/setEnabled(Z)V
return
L3:
iload 2
iconst_1
if_icmpne L2
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity$1/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;
invokestatic com/nd/schoollife/ui/community/activity/CommunityHomeActivity/access$100(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)Lcom/nd/schoollife/ui/team/view/SlideHolder;
iconst_0
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/setEnabled(Z)V
return
.limit locals 3
.limit stack 2
.end method
