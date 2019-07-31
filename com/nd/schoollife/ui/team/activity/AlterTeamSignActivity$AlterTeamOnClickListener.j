.bytecode 50.0
.class synchronized com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$AlterTeamOnClickListener
.super java/lang/Object
.implements android/view/View$OnClickListener
.inner class private AlterTeamOnClickListener inner com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$AlterTeamOnClickListener outer com/nd/schoollife/ui/team/activity/AlterTeamSignActivity

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;

.method private <init>(Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$AlterTeamOnClickListener/this$0 Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity$1;)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$AlterTeamOnClickListener/<init>(Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/nd/schoollife/R$id/btn_alter_team_sign_next_team_signs I
if_icmpne L0
aload 0
getfield com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$AlterTeamOnClickListener/this$0 Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;
invokevirtual com/nd/schoollife/ui/team/activity/AlterTeamSignActivity/nextTeamSigns()V
L1:
return
L0:
iload 2
getstatic com/nd/schoollife/R$id/btn_alter_team_sign_commit I
if_icmpne L2
aload 0
getfield com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$AlterTeamOnClickListener/this$0 Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;
invokestatic com/nd/schoollife/ui/team/activity/AlterTeamSignActivity/access$1500(Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;)V
return
L2:
iload 2
getstatic com/nd/schoollife/R$id/btn_common_head_back I
if_icmpne L1
aload 0
getfield com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$AlterTeamOnClickListener/this$0 Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;
invokevirtual com/nd/schoollife/ui/team/activity/AlterTeamSignActivity/finish()V
return
.limit locals 3
.limit stack 2
.end method
