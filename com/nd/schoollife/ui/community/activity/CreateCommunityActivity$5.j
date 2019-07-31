.bytecode 50.0
.class synchronized com/nd/schoollife/ui/community/activity/CreateCommunityActivity$5
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/community/activity/CreateCommunityActivity/popSelSignMenu(I)V
.inner class inner com/nd/schoollife/ui/community/activity/CreateCommunityActivity$5

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;

.field final synthetic 'val$arg2' I

.method <init>(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;I)V
aload 0
aload 1
putfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$5/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
aload 0
iload 2
putfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$5/val$arg2 I
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$5/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$5/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
invokestatic com/nd/schoollife/ui/community/activity/CreateCommunityActivity/access$800(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$5/val$arg2 I
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityTagList/getTagInfoByIndex(I)Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;
invokevirtual com/nd/schoollife/common/bean/structure/CommunityTagInfoBean/getName()Ljava/lang/String;
invokestatic com/nd/schoollife/ui/community/activity/CreateCommunityActivity/access$1900(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$5/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
invokestatic com/nd/schoollife/ui/community/activity/CreateCommunityActivity/access$800(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$5/val$arg2 I
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityTagList/removeByIndex(I)Z
pop
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$5/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
invokestatic com/nd/schoollife/ui/community/activity/CreateCommunityActivity/access$1800(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$5/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/dismissConfirmDialog()V
return
.limit locals 2
.limit stack 3
.end method
