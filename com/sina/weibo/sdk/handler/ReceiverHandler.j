.bytecode 50.0
.class public synchronized com/sina/weibo/sdk/handler/ReceiverHandler
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;)V
aload 0
ldc "com.sina.weibo.sdk.Intent.ACTION_WEIBO_REGISTER"
aload 1
aconst_null
invokestatic com/sina/weibo/sdk/handler/ReceiverHandler/sendBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 4
.end method

.method public static sendBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
new android/content/Intent
dup
aload 1
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 4
aload 3
ifnull L0
aload 4
aload 3
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
L0:
aload 0
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
astore 3
aload 4
ldc "_weibo_sdkVersion"
bipush 21
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 4
ldc "_weibo_appPackage"
aload 3
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 4
ldc "_weibo_appKey"
aload 2
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 4
ldc "_weibo_flag"
ldc_w 538116905
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 4
ldc "_weibo_sign"
aload 0
aload 3
invokestatic com/sina/weibo/sdk/utils/Util/getSign(Landroid/content/Context;Ljava/lang/String;)[B
invokestatic com/sina/weibo/sdk/utils/MD5/hexdigest([B)Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
aload 4
ldc "com.sina.weibo.permission.WEIBO_SDK_PERMISSION"
invokevirtual android/content/Context/sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
ldc "ReceiverHandler"
new java/lang/StringBuilder
dup
ldc "send message, intent="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", appPackage="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/sina/weibo/sdk/log/Log/d(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 5
.limit stack 4
.end method

.method public static sendToWeibo(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z
aload 0
ldc "com.sina.weibo.sdk.Intent.ACTION_WEIBO_RESPONSE"
aload 1
aload 2
invokestatic com/sina/weibo/sdk/handler/ReceiverHandler/sendBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
iconst_1
ireturn
.limit locals 3
.limit stack 4
.end method
