.bytecode 50.0
.class synchronized com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity$OwnOnTextContextMenuItem
.super java/lang/Object
.implements com/nd/schoollife/ui/team/view/ExEditText$OnTextContextMenuItem
.inner class private OwnOnTextContextMenuItem inner com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity$OwnOnTextContextMenuItem outer com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity;

.method private <init>(Lcom/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity$OwnOnTextContextMenuItem/this$0 Lcom/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity;Lcom/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity$1;)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity$OwnOnTextContextMenuItem/<init>(Lcom/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method public onTextContextMenuItem(ILandroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity$OwnOnTextContextMenuItem/this$0 Lcom/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity;
ldc "clipboard"
invokevirtual com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/text/ClipboardManager
astore 3
iload 1
tableswitch 16908322
L0
default : L1
L1:
return
L0:
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
if_icmple L1
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity$OwnOnTextContextMenuItem/this$0 Lcom/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity;
ldc "\u56e2\u4f53\u7b80\u4ecb\u4e0d\u80fd\u8d85\u8fc7140\u4e2a\u5b57"
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
iload 1
ifle L2
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
L2:
aload 3
ldc ""
invokevirtual android/text/ClipboardManager/setText(Ljava/lang/CharSequence;)V
return
.limit locals 4
.limit stack 5
.end method
