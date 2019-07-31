.bytecode 50.0
.class synchronized com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/team/activity/AlterTeamSignActivity/popSelSignMenu(I)V
.inner class inner com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$2

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;

.field final synthetic 'val$arg2' I

.method <init>(Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;I)V
aload 0
aload 1
putfield com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;
aload 0
iload 2
putfield com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$2/val$arg2 I
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;
aload 0
getfield com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;
invokestatic com/nd/schoollife/ui/team/activity/AlterTeamSignActivity/access$500(Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;)Lcom/nd/schoollife/ui/team/adapter/TeamTagList;
aload 0
getfield com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$2/val$arg2 I
invokevirtual com/nd/schoollife/ui/team/adapter/TeamTagList/getTagInfoByIndex(I)Lcom/nd/android/forumsdk/business/bean/structure/TagInfoBean;
invokestatic com/nd/schoollife/ui/team/activity/AlterTeamSignActivity/access$800(Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;Lcom/nd/android/forumsdk/business/bean/structure/TagInfoBean;)V
aload 0
getfield com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;
invokestatic com/nd/schoollife/ui/team/activity/AlterTeamSignActivity/access$500(Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;)Lcom/nd/schoollife/ui/team/adapter/TeamTagList;
aload 0
getfield com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$2/val$arg2 I
invokevirtual com/nd/schoollife/ui/team/adapter/TeamTagList/removeByIndex(I)Z
pop
aload 0
getfield com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;
invokestatic com/nd/schoollife/ui/team/activity/AlterTeamSignActivity/access$700(Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;)V
aload 0
getfield com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;
invokevirtual com/nd/schoollife/ui/team/activity/AlterTeamSignActivity/dismissConfirmDialog()V
return
.limit locals 2
.limit stack 3
.end method
