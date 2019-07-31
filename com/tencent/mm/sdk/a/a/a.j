.bytecode 50.0
.class public final synchronized com/tencent/mm/sdk/a/a/a
.super java/lang/Object
.inner class public static final a inner com/tencent/mm/sdk/a/a/a$a outer com/tencent/mm/sdk/a/a/a

.method public static a(Landroid/content/Context;Lcom/tencent/mm/sdk/a/a/a$a;)Z
aload 0
ifnull L0
aload 1
ifnonnull L1
L0:
ldc "MicroMsg.SDK.MMessage"
ldc "send fail, invalid argument"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L1:
aload 1
getfield com/tencent/mm/sdk/a/a/a$a/m Ljava/lang/String;
invokestatic com/tencent/mm/sdk/b/c/a(Ljava/lang/String;)Z
ifeq L2
ldc "MicroMsg.SDK.MMessage"
ldc "send fail, action is null"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L2:
aconst_null
astore 2
aload 1
getfield com/tencent/mm/sdk/a/a/a$a/l Ljava/lang/String;
invokestatic com/tencent/mm/sdk/b/c/a(Ljava/lang/String;)Z
ifne L3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
getfield com/tencent/mm/sdk/a/a/a$a/l Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ".permission.MM_MESSAGE"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
L3:
new android/content/Intent
dup
aload 1
getfield com/tencent/mm/sdk/a/a/a$a/m Ljava/lang/String;
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 3
aload 1
getfield com/tencent/mm/sdk/a/a/a$a/k Landroid/os/Bundle;
ifnull L4
aload 3
aload 1
getfield com/tencent/mm/sdk/a/a/a$a/k Landroid/os/Bundle;
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
L4:
aload 0
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
astore 4
aload 3
ldc "_mmessage_sdkVersion"
ldc_w 570425345
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 3
ldc "_mmessage_appPackage"
aload 4
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 3
ldc "_mmessage_content"
aload 1
getfield com/tencent/mm/sdk/a/a/a$a/j Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 3
ldc "_mmessage_checksum"
aload 1
getfield com/tencent/mm/sdk/a/a/a$a/j Ljava/lang/String;
ldc_w 570425345
aload 4
invokestatic com/tencent/mm/sdk/a/a/b/a(Ljava/lang/String;ILjava/lang/String;)[B
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
pop
aload 0
aload 3
aload 2
invokevirtual android/content/Context/sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
ldc "MicroMsg.SDK.MMessage"
new java/lang/StringBuilder
dup
ldc "send mm message, intent="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc ", perm="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/tencent/mm/sdk/b/a/c(Ljava/lang/String;Ljava/lang/String;)V
iconst_1
ireturn
.limit locals 5
.limit stack 5
.end method
