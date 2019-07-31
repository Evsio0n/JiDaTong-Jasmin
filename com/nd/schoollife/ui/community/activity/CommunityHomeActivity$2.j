.bytecode 50.0
.class synchronized com/nd/schoollife/ui/community/activity/CommunityHomeActivity$2
.super java/lang/Object
.implements com/nd/schoollife/ui/common/process/InputContentViewManager$OnCommentViewShowListener
.enclosing method com/nd/schoollife/ui/community/activity/CommunityHomeActivity/initEvent()V
.inner class inner com/nd/schoollife/ui/community/activity/CommunityHomeActivity$2

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;

.method <init>(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public afterCommentViewHide()V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;
invokestatic com/nd/schoollife/ui/community/activity/CommunityHomeActivity/access$100(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)Lcom/nd/schoollife/ui/team/view/SlideHolder;
iconst_1
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/setEnabled(Z)V
return
.limit locals 1
.limit stack 2
.end method

.method public afterCommentViewShow()V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;
invokestatic com/nd/schoollife/ui/community/activity/CommunityHomeActivity/access$100(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)Lcom/nd/schoollife/ui/team/view/SlideHolder;
iconst_0
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/setEnabled(Z)V
return
.limit locals 1
.limit stack 2
.end method

.method public beforeCommentViewShow()Z
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method
