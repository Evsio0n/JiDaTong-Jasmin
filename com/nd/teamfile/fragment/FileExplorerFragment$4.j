.bytecode 50.0
.class synchronized com/nd/teamfile/fragment/FileExplorerFragment$4
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/teamfile/fragment/FileExplorerFragment
.inner class inner com/nd/teamfile/fragment/FileExplorerFragment$4

.field final synthetic 'this$0' Lcom/nd/teamfile/fragment/FileExplorerFragment;

.method <init>(Lcom/nd/teamfile/fragment/FileExplorerFragment;)V
aload 0
aload 1
putfield com/nd/teamfile/fragment/FileExplorerFragment$4/this$0 Lcom/nd/teamfile/fragment/FileExplorerFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/teamfile/R$id/llCurPathPane I
if_icmpne L0
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment$4/this$0 Lcom/nd/teamfile/fragment/FileExplorerFragment;
invokevirtual com/nd/teamfile/fragment/FileExplorerFragment/onNavigationBarClick()V
L0:
iload 2
getstatic com/nd/teamfile/R$id/ivBackUpLevel I
if_icmpne L1
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment$4/this$0 Lcom/nd/teamfile/fragment/FileExplorerFragment;
invokestatic com/nd/teamfile/fragment/FileExplorerFragment/access$600(Lcom/nd/teamfile/fragment/FileExplorerFragment;)Z
pop
L1:
iload 2
getstatic com/nd/teamfile/R$id/btnSendFiles I
if_icmpne L2
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment$4/this$0 Lcom/nd/teamfile/fragment/FileExplorerFragment;
invokestatic com/nd/teamfile/fragment/FileExplorerFragment/access$700(Lcom/nd/teamfile/fragment/FileExplorerFragment;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifle L3
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment$4/this$0 Lcom/nd/teamfile/fragment/FileExplorerFragment;
invokestatic com/nd/teamfile/fragment/FileExplorerFragment/access$700(Lcom/nd/teamfile/fragment/FileExplorerFragment;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 3
L4:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L5
aload 1
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/teamfile/sdk/type/FileExplorerInfo
getfield com/nd/teamfile/sdk/type/FileExplorerInfo/filePath Ljava/lang/String;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L4
L5:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 3
aload 3
ldc "paths"
aload 1
invokevirtual android/content/Intent/putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment$4/this$0 Lcom/nd/teamfile/fragment/FileExplorerFragment;
invokestatic com/nd/teamfile/fragment/FileExplorerFragment/access$800(Lcom/nd/teamfile/fragment/FileExplorerFragment;)Landroid/app/Activity;
iconst_m1
aload 3
invokevirtual android/app/Activity/setResult(ILandroid/content/Intent;)V
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment$4/this$0 Lcom/nd/teamfile/fragment/FileExplorerFragment;
invokestatic com/nd/teamfile/fragment/FileExplorerFragment/access$800(Lcom/nd/teamfile/fragment/FileExplorerFragment;)Landroid/app/Activity;
invokevirtual android/app/Activity/finish()V
L3:
return
L2:
iload 2
getstatic com/nd/teamfile/R$id/ivBack I
if_icmpne L3
aload 0
getfield com/nd/teamfile/fragment/FileExplorerFragment$4/this$0 Lcom/nd/teamfile/fragment/FileExplorerFragment;
invokestatic com/nd/teamfile/fragment/FileExplorerFragment/access$800(Lcom/nd/teamfile/fragment/FileExplorerFragment;)Landroid/app/Activity;
invokevirtual android/app/Activity/finish()V
return
.limit locals 4
.limit stack 3
.end method
