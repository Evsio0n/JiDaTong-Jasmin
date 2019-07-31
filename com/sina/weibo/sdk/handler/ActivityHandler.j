.bytecode 50.0
.class public synchronized com/sina/weibo/sdk/handler/ActivityHandler
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static send(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
.catch android/content/ActivityNotFoundException from L0 to L1 using L2
aload 0
ifnull L3
aload 1
ifnull L3
aload 1
invokevirtual java/lang/String/length()I
ifeq L3
aload 2
ifnull L3
aload 2
invokevirtual java/lang/String/length()I
ifne L4
L3:
ldc "ActivityHandler"
ldc "send fail, invalid arguments"
invokestatic com/sina/weibo/sdk/log/Log/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L4:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 5
aload 5
aload 1
invokevirtual android/content/Intent/setPackage(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 5
aload 2
invokevirtual android/content/Intent/setAction(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
invokevirtual android/app/Activity/getPackageName()Ljava/lang/String;
astore 1
aload 5
ldc "_weibo_sdkVersion"
bipush 21
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 5
ldc "_weibo_appPackage"
aload 1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 5
ldc "_weibo_appKey"
aload 3
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 5
ldc "_weibo_flag"
ldc_w 538116905
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 5
ldc "_weibo_sign"
aload 0
aload 1
invokestatic com/sina/weibo/sdk/utils/Util/getSign(Landroid/content/Context;Ljava/lang/String;)[B
invokestatic com/sina/weibo/sdk/utils/MD5/hexdigest([B)Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 4
ifnull L0
aload 5
aload 4
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
L0:
aload 0
aload 5
sipush 765
invokevirtual android/app/Activity/startActivityForResult(Landroid/content/Intent;I)V
L1:
ldc "ActivityHandler"
new java/lang/StringBuilder
dup
ldc "send weibo message, intent="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/sina/weibo/sdk/log/Log/d(Ljava/lang/String;Ljava/lang/String;)V
iconst_1
ireturn
L2:
astore 0
ldc "ActivityHandler"
ldc "send fail, target ActivityNotFound"
invokestatic com/sina/weibo/sdk/log/Log/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
.limit locals 6
.limit stack 4
.end method

.method public static sendToWeibo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
aload 0
aload 1
ldc "com.sina.weibo.sdk.action.ACTION_WEIBO_ACTIVITY"
aload 2
aload 3
invokestatic com/sina/weibo/sdk/handler/ActivityHandler/send(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
ireturn
.limit locals 4
.limit stack 5
.end method
