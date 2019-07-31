.bytecode 50.0
.class synchronized com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/popSelSignMenu(I)V
.inner class inner com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$2

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;

.field final synthetic 'val$arg2' I

.method <init>(Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;I)V
aload 0
aload 1
putfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;
aload 0
iload 2
putfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$2/val$arg2 I
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;
invokestatic com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/access$500(Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;)Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$2/val$arg2 I
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityTagList/getTagInfoByIndex(I)Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;
invokestatic com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/access$800(Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;
invokestatic com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/access$500(Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;)Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$2/val$arg2 I
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityTagList/removeByIndex(I)Z
pop
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;
invokestatic com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/access$700(Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;
invokevirtual com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/dismissConfirmDialog()V
return
.limit locals 2
.limit stack 3
.end method
