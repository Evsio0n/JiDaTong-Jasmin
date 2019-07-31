.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/data/BaseProcess
.super java/lang/Object
.implements com/nd/android/backpacksystem/data/ItemProcess

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public doGive(Landroid/app/Activity;J)V
new android/content/Intent
dup
aload 1
ldc com/nd/android/backpacksystem/activity/SelectGiftPersonActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 4
aload 4
ldc "itemId"
lload 2
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 1
aload 4
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
return
.limit locals 5
.limit stack 4
.end method

.method public doUse(Landroid/app/Activity;Ljava/lang/Object;Lcom/nd/android/backpacksystem/listener/DialogCallBack;)V
return
.limit locals 4
.limit stack 0
.end method
