.bytecode 50.0
.class synchronized com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd
.inner class inner com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd;

.method <init>(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd$1/this$0 Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
lookupswitch
2131625751 : L0
2131625752 : L1
2131625760 : L1
default : L2
L2:
return
L0:
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd$1/this$0 Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd;
invokestatic com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/access$000(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd;)Landroid/content/Context;
ldc com/nd/android/u/cloud/activity/MainFrameActivty
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 2
ldc "id"
iconst_1
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 1
aload 2
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 1
ldc_w 335544320
invokevirtual android/content/Intent/setFlags(I)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd$1/this$0 Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd;
invokestatic com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/access$000(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd;)Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
L1:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd$1/this$0 Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd;
invokestatic com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/access$000(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd;)Landroid/content/Context;
ldc com/nd/android/backpacksystem/activity/BackpackMainActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd$1/this$0 Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd;
invokestatic com/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd/access$000(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_SysAdd;)Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 4
.end method
