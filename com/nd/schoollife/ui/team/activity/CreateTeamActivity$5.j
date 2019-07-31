.bytecode 50.0
.class synchronized com/nd/schoollife/ui/team/activity/CreateTeamActivity$5
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/team/activity/CreateTeamActivity/popSelSignMenu(I)V
.inner class inner com/nd/schoollife/ui/team/activity/CreateTeamActivity$5

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;

.field final synthetic 'val$arg2' I

.method <init>(Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;I)V
aload 0
aload 1
putfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$5/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
aload 0
iload 2
putfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$5/val$arg2 I
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$5/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$5/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
invokestatic com/nd/schoollife/ui/team/activity/CreateTeamActivity/access$900(Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;)Lcom/nd/schoollife/ui/team/adapter/TeamTagList;
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$5/val$arg2 I
invokevirtual com/nd/schoollife/ui/team/adapter/TeamTagList/getTagInfoByIndex(I)Lcom/nd/android/forumsdk/business/bean/structure/TagInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/TagInfoBean/getName()Ljava/lang/String;
invokestatic com/nd/schoollife/ui/team/activity/CreateTeamActivity/access$2200(Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$5/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
invokestatic com/nd/schoollife/ui/team/activity/CreateTeamActivity/access$900(Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;)Lcom/nd/schoollife/ui/team/adapter/TeamTagList;
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$5/val$arg2 I
invokevirtual com/nd/schoollife/ui/team/adapter/TeamTagList/removeByIndex(I)Z
pop
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$5/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
invokestatic com/nd/schoollife/ui/team/activity/CreateTeamActivity/access$2100(Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;)V
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$5/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
invokevirtual com/nd/schoollife/ui/team/activity/CreateTeamActivity/dismissConfirmDialog()V
return
.limit locals 2
.limit stack 3
.end method
