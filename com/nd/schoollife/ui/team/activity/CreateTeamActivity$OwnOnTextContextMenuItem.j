.bytecode 50.0
.class synchronized com/nd/schoollife/ui/team/activity/CreateTeamActivity$OwnOnTextContextMenuItem
.super java/lang/Object
.implements com/nd/schoollife/ui/team/view/ExEditText$OnTextContextMenuItem
.inner class private OwnOnTextContextMenuItem inner com/nd/schoollife/ui/team/activity/CreateTeamActivity$OwnOnTextContextMenuItem outer com/nd/schoollife/ui/team/activity/CreateTeamActivity

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;

.method private <init>(Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$OwnOnTextContextMenuItem/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity$1;)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/team/activity/CreateTeamActivity$OwnOnTextContextMenuItem/<init>(Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method public onTextContextMenuItem(ILandroid/view/View;)V
aload 2
invokevirtual android/view/View/getId()I
getstatic com/nd/schoollife/R$id/et_create_team_team_name I
if_icmpne L0
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$OwnOnTextContextMenuItem/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
ldc "clipboard"
invokevirtual com/nd/schoollife/ui/team/activity/CreateTeamActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/text/ClipboardManager
astore 3
iload 1
tableswitch 16908322
L1
default : L2
L2:
return
L1:
bipush 30
aload 2
checkcast com/nd/schoollife/ui/team/view/ExEditText
invokevirtual com/nd/schoollife/ui/team/view/ExEditText/getText()Landroid/text/Editable;
invokeinterface android/text/Editable/length()I 0
isub
istore 1
aload 3
invokevirtual android/text/ClipboardManager/getText()Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/length()I 0
iload 1
if_icmple L2
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$OwnOnTextContextMenuItem/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
ldc "\u5c0f\u7ec4\u540d\u79f0\u4e0d\u80fd\u8d85\u8fc730\u4e2a\u5b57"
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
iload 1
ifle L3
aload 3
aload 3
invokevirtual android/text/ClipboardManager/getText()Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
iconst_0
iload 1
iconst_1
isub
invokevirtual java/lang/String/subSequence(II)Ljava/lang/CharSequence;
invokevirtual android/text/ClipboardManager/setText(Ljava/lang/CharSequence;)V
return
L3:
aload 3
ldc ""
invokevirtual android/text/ClipboardManager/setText(Ljava/lang/CharSequence;)V
return
L0:
aload 2
invokevirtual android/view/View/getId()I
getstatic com/nd/schoollife/R$id/ev_create_team_team_intro I
if_icmpne L2
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$OwnOnTextContextMenuItem/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
ldc "clipboard"
invokevirtual com/nd/schoollife/ui/team/activity/CreateTeamActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/text/ClipboardManager
astore 3
iload 1
tableswitch 16908322
L4
default : L5
L5:
return
L4:
sipush 140
aload 2
checkcast com/nd/schoollife/ui/team/view/ExEditText
invokevirtual com/nd/schoollife/ui/team/view/ExEditText/getText()Landroid/text/Editable;
invokeinterface android/text/Editable/length()I 0
isub
istore 1
aload 3
invokevirtual android/text/ClipboardManager/getText()Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/length()I 0
iload 1
if_icmple L2
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$OwnOnTextContextMenuItem/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
ldc "\u5c0f\u7ec4\u7b80\u4ecb\u4e0d\u80fd\u8d85\u8fc7140\u4e2a\u5b57"
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
iload 1
ifle L6
aload 3
aload 3
invokevirtual android/text/ClipboardManager/getText()Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
iconst_0
iload 1
iconst_1
isub
invokevirtual java/lang/String/subSequence(II)Ljava/lang/CharSequence;
invokevirtual android/text/ClipboardManager/setText(Ljava/lang/CharSequence;)V
return
L6:
aload 3
ldc ""
invokevirtual android/text/ClipboardManager/setText(Ljava/lang/CharSequence;)V
return
.limit locals 4
.limit stack 5
.end method
