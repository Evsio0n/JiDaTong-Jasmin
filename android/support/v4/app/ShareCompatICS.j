.bytecode 50.0
.class synchronized android/support/v4/app/ShareCompatICS
.super java/lang/Object

.field private static final 'HISTORY_FILENAME_PREFIX' Ljava/lang/String; = ".sharecompat_"

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static configureMenuItem(Landroid/view/MenuItem;Landroid/app/Activity;Landroid/content/Intent;)V
aload 0
invokeinterface android/view/MenuItem/getActionProvider()Landroid/view/ActionProvider; 0
astore 3
aload 3
instanceof android/widget/ShareActionProvider
ifne L0
new android/widget/ShareActionProvider
dup
aload 1
invokespecial android/widget/ShareActionProvider/<init>(Landroid/content/Context;)V
astore 3
L1:
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ".sharecompat_"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/ShareActionProvider/setShareHistoryFileName(Ljava/lang/String;)V
aload 3
aload 2
invokevirtual android/widget/ShareActionProvider/setShareIntent(Landroid/content/Intent;)V
aload 0
aload 3
invokeinterface android/view/MenuItem/setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem; 1
pop
return
L0:
aload 3
checkcast android/widget/ShareActionProvider
astore 3
goto L1
.limit locals 4
.limit stack 3
.end method
