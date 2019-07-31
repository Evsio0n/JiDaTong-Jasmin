.bytecode 50.0
.class public synchronized com/product/android/ui/activity/BaseFragmentActivity
.super android/support/v4/app/FragmentActivity

.field protected static 'preTime' J

.method static <clinit>()V
lconst_0
putstatic com/product/android/ui/activity/BaseFragmentActivity/preTime J
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial android/support/v4/app/FragmentActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method protected _onCreate(Landroid/os/Bundle;)Z
aload 0
aload 1
invokevirtual com/product/android/ui/activity/BaseFragmentActivity/restoreInstance(Landroid/os/Bundle;)V
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method

.method protected goTo(Ljava/lang/Class;)V
.signature "(Ljava/lang/Class<*>;)V"
aload 0
new android/content/Intent
dup
aload 0
aload 1
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual com/product/android/ui/activity/BaseFragmentActivity/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 5
.end method

.method public goTo(Ljava/lang/Class;Landroid/os/Bundle;)V
.signature "(Ljava/lang/Class<*>;Landroid/os/Bundle;)V"
new android/content/Intent
dup
aload 0
aload 1
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
aload 2
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual com/product/android/ui/activity/BaseFragmentActivity/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 4
.end method

.method protected initComponent()V
return
.limit locals 1
.limit stack 0
.end method

.method protected initComponentValue()V
return
.limit locals 1
.limit stack 0
.end method

.method protected initEvent()V
return
.limit locals 1
.limit stack 0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/FragmentActivity/onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokevirtual com/product/android/ui/activity/BaseFragmentActivity/_onCreate(Landroid/os/Bundle;)Z
pop
aload 0
invokestatic com/common/android/utils/StackManager/putFragmentActivity(Landroid/support/v4/app/FragmentActivity;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onDestroy()V
aload 0
invokestatic com/common/android/utils/StackManager/pullFragmentActivity(Landroid/support/v4/app/FragmentActivity;)V
aload 0
invokespecial android/support/v4/app/FragmentActivity/onDestroy()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onPause()V
aload 0
invokespecial android/support/v4/app/FragmentActivity/onPause()V
return
.limit locals 1
.limit stack 1
.end method

.method public onResume()V
aload 0
invokespecial android/support/v4/app/FragmentActivity/onResume()V
getstatic com/common/android/ui/gif/GifCacheManager/INSTANCE Lcom/common/android/ui/gif/GifCacheManager;
invokevirtual com/common/android/ui/gif/GifCacheManager/deActive()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onStart()V
aload 0
invokespecial android/support/v4/app/FragmentActivity/onStart()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onStop()V
aload 0
invokespecial android/support/v4/app/FragmentActivity/onStop()V
return
.limit locals 1
.limit stack 1
.end method

.method public restoreInstance(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 0
.end method

.method protected toActivity(Ljava/lang/Class;Landroid/os/Bundle;)V
.signature "(Ljava/lang/Class<*>;Landroid/os/Bundle;)V"
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 3
aload 3
aload 2
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 3
aload 0
aload 1
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 0
aload 3
invokevirtual com/product/android/ui/activity/BaseFragmentActivity/startActivity(Landroid/content/Intent;)V
return
.limit locals 4
.limit stack 3
.end method

.method protected toActivity(Ljava/lang/Class;Z)V
.signature "(Ljava/lang/Class<*>;Z)V"
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 3
aload 3
aload 0
aload 1
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 0
aload 3
invokevirtual com/product/android/ui/activity/BaseFragmentActivity/startActivity(Landroid/content/Intent;)V
iload 2
ifeq L0
aload 0
invokevirtual com/product/android/ui/activity/BaseFragmentActivity/finish()V
L0:
return
.limit locals 4
.limit stack 3
.end method
