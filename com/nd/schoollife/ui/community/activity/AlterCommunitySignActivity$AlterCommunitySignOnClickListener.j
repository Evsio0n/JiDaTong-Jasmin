.bytecode 50.0
.class synchronized com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$AlterCommunitySignOnClickListener
.super java/lang/Object
.implements android/view/View$OnClickListener
.inner class private AlterCommunitySignOnClickListener inner com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$AlterCommunitySignOnClickListener outer com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;

.method private <init>(Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$AlterCommunitySignOnClickListener/this$0 Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$1;)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$AlterCommunitySignOnClickListener/<init>(Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/nd/schoollife/R$id/btn_alter_community_sign_next_community_signs I
if_icmpne L0
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$AlterCommunitySignOnClickListener/this$0 Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;
invokevirtual com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/nextCommunitySigns()V
L1:
return
L0:
iload 2
getstatic com/nd/schoollife/R$id/btn_alter_community_sign_commit I
if_icmpne L2
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$AlterCommunitySignOnClickListener/this$0 Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;
invokestatic com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/access$1600(Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;)V
return
L2:
iload 2
getstatic com/nd/schoollife/R$id/btn_common_head_back I
if_icmpne L1
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$AlterCommunitySignOnClickListener/this$0 Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;
invokevirtual com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/finish()V
return
.limit locals 3
.limit stack 2
.end method
