.bytecode 50.0
.class synchronized com/nd/schoollife/ui/community/activity/CommunityHomeActivity$3
.super java/lang/Object
.implements android/view/View$OnTouchListener
.enclosing method com/nd/schoollife/ui/community/activity/CommunityHomeActivity/initEvent()V
.inner class inner com/nd/schoollife/ui/community/activity/CommunityHomeActivity$3

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;

.method <init>(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity$3/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity$3/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;
invokestatic com/nd/schoollife/ui/community/activity/CommunityHomeActivity/access$000(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity$3/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;
invokestatic com/nd/schoollife/ui/community/activity/CommunityHomeActivity/access$000(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/hideView()V
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 1
.end method
