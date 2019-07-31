.bytecode 50.0
.class public final synchronized com/tencent/mm/sdk/a/a
.super java/lang/Object
.inner class public static final a inner com/tencent/mm/sdk/a/a$a outer com/tencent/mm/sdk/a/a

.method public static a(Landroid/content/Context;Lcom/tencent/mm/sdk/a/a$a;)Z
.catch java/lang/Exception from L0 to L1 using L2
aload 0
ifnull L3
aload 1
ifnonnull L4
L3:
ldc "MicroMsg.SDK.MMessageAct"
ldc "send fail, invalid argument"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L4:
aload 1
getfield com/tencent/mm/sdk/a/a$a/h Ljava/lang/String;
invokestatic com/tencent/mm/sdk/b/c/a(Ljava/lang/String;)Z
ifeq L5
ldc "MicroMsg.SDK.MMessageAct"
new java/lang/StringBuilder
dup
ldc "send fail, invalid targetPkgName, targetPkgName = "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
getfield com/tencent/mm/sdk/a/a$a/h Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L5:
aload 1
getfield com/tencent/mm/sdk/a/a$a/i Ljava/lang/String;
invokestatic com/tencent/mm/sdk/b/c/a(Ljava/lang/String;)Z
ifeq L6
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
getfield com/tencent/mm/sdk/a/a$a/h Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ".wxapi.WXEntryActivity"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/tencent/mm/sdk/a/a$a/i Ljava/lang/String;
L6:
ldc "MicroMsg.SDK.MMessageAct"
new java/lang/StringBuilder
dup
ldc "send, targetPkgName = "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
getfield com/tencent/mm/sdk/a/a$a/h Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", targetClassName = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
getfield com/tencent/mm/sdk/a/a$a/i Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/tencent/mm/sdk/b/a/c(Ljava/lang/String;Ljava/lang/String;)V
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 2
aload 2
aload 1
getfield com/tencent/mm/sdk/a/a$a/h Ljava/lang/String;
aload 1
getfield com/tencent/mm/sdk/a/a$a/i Ljava/lang/String;
invokevirtual android/content/Intent/setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
getfield com/tencent/mm/sdk/a/a$a/k Landroid/os/Bundle;
ifnull L7
aload 2
aload 1
getfield com/tencent/mm/sdk/a/a$a/k Landroid/os/Bundle;
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
L7:
aload 0
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
astore 3
aload 2
ldc "_mmessage_sdkVersion"
ldc_w 570425345
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 2
ldc "_mmessage_appPackage"
aload 3
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
ldc "_mmessage_content"
aload 1
getfield com/tencent/mm/sdk/a/a$a/j Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
ldc "_mmessage_checksum"
aload 1
getfield com/tencent/mm/sdk/a/a$a/j Ljava/lang/String;
ldc_w 570425345
aload 3
invokestatic com/tencent/mm/sdk/a/a/b/a(Ljava/lang/String;ILjava/lang/String;)[B
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
pop
aload 1
getfield com/tencent/mm/sdk/a/a$a/flags I
iconst_m1
if_icmpne L8
aload 2
ldc_w 268435456
invokevirtual android/content/Intent/addFlags(I)Landroid/content/Intent;
ldc_w 134217728
invokevirtual android/content/Intent/addFlags(I)Landroid/content/Intent;
pop
L0:
aload 0
aload 2
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
L1:
ldc "MicroMsg.SDK.MMessageAct"
new java/lang/StringBuilder
dup
ldc "send mm message, intent="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/tencent/mm/sdk/b/a/c(Ljava/lang/String;Ljava/lang/String;)V
iconst_1
ireturn
L8:
aload 2
aload 1
getfield com/tencent/mm/sdk/a/a$a/flags I
invokevirtual android/content/Intent/setFlags(I)Landroid/content/Intent;
pop
goto L0
L2:
astore 0
ldc "MicroMsg.SDK.MMessageAct"
ldc "send fail, ex = %s"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
aastore
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
iconst_0
ireturn
.limit locals 4
.limit stack 6
.end method
