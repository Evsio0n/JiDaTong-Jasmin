.bytecode 50.0
.class synchronized com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$TeamSignGridListener
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.inner class private TeamSignGridListener inner com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$TeamSignGridListener outer com/nd/schoollife/ui/team/activity/AlterTeamSignActivity

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;

.method private <init>(Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$TeamSignGridListener/this$0 Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity$1;)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$TeamSignGridListener/<init>(Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
iconst_0
istore 6
aload 2
checkcast com/nd/schoollife/ui/team/view/ExtCheckButton
astore 1
aload 1
invokevirtual com/nd/schoollife/ui/team/view/ExtCheckButton/getCheck()Z
ifne L0
aload 0
getfield com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$TeamSignGridListener/this$0 Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;
invokestatic com/nd/schoollife/ui/team/activity/AlterTeamSignActivity/access$500(Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;)Lcom/nd/schoollife/ui/team/adapter/TeamTagList;
invokevirtual com/nd/schoollife/ui/team/adapter/TeamTagList/size()I
iconst_5
if_icmplt L0
aload 0
getfield com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$TeamSignGridListener/this$0 Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;
invokevirtual com/nd/schoollife/ui/team/activity/AlterTeamSignActivity/getApplicationContext()Landroid/content/Context;
getstatic com/nd/schoollife/R$string/create_team_team_sign_must_less_5 I
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
L0:
aload 1
invokevirtual com/nd/schoollife/ui/team/view/ExtCheckButton/getCheck()Z
ifne L1
iconst_1
istore 6
L1:
aload 1
iload 6
invokevirtual com/nd/schoollife/ui/team/view/ExtCheckButton/setCheck(Z)V
aload 1
invokevirtual com/nd/schoollife/ui/team/view/ExtCheckButton/getCheck()Z
ifeq L2
aload 0
getfield com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$TeamSignGridListener/this$0 Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;
invokestatic com/nd/schoollife/ui/team/activity/AlterTeamSignActivity/access$600(Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;)Lcom/nd/schoollife/ui/team/adapter/TeamTagList;
aload 1
invokevirtual com/nd/schoollife/ui/team/view/ExtCheckButton/getText()Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokevirtual com/nd/schoollife/ui/team/adapter/TeamTagList/getTagInfoByName(Ljava/lang/String;)Lcom/nd/android/forumsdk/business/bean/structure/TagInfoBean;
astore 1
aload 0
getfield com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$TeamSignGridListener/this$0 Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;
invokestatic com/nd/schoollife/ui/team/activity/AlterTeamSignActivity/access$500(Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;)Lcom/nd/schoollife/ui/team/adapter/TeamTagList;
aload 1
invokevirtual com/nd/schoollife/ui/team/adapter/TeamTagList/addTagInfo(Lcom/nd/android/forumsdk/business/bean/structure/TagInfoBean;)I
pop
L3:
aload 0
getfield com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$TeamSignGridListener/this$0 Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;
invokestatic com/nd/schoollife/ui/team/activity/AlterTeamSignActivity/access$700(Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;)V
return
L2:
aload 0
getfield com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$TeamSignGridListener/this$0 Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;
invokestatic com/nd/schoollife/ui/team/activity/AlterTeamSignActivity/access$600(Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;)Lcom/nd/schoollife/ui/team/adapter/TeamTagList;
aload 1
invokevirtual com/nd/schoollife/ui/team/view/ExtCheckButton/getText()Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokevirtual com/nd/schoollife/ui/team/adapter/TeamTagList/getTagInfoByName(Ljava/lang/String;)Lcom/nd/android/forumsdk/business/bean/structure/TagInfoBean;
astore 1
aload 0
getfield com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$TeamSignGridListener/this$0 Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;
invokestatic com/nd/schoollife/ui/team/activity/AlterTeamSignActivity/access$500(Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;)Lcom/nd/schoollife/ui/team/adapter/TeamTagList;
aload 1
invokevirtual com/nd/schoollife/ui/team/adapter/TeamTagList/remove(Lcom/nd/android/forumsdk/business/bean/structure/TagInfoBean;)Z
pop
goto L3
.limit locals 7
.limit stack 3
.end method
