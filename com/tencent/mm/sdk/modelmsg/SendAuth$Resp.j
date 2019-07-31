.bytecode 50.0
.class public synchronized com/tencent/mm/sdk/modelmsg/SendAuth$Resp
.super com/tencent/mm/sdk/modelbase/BaseResp
.inner class public static Resp inner com/tencent/mm/sdk/modelmsg/SendAuth$Resp outer com/tencent/mm/sdk/modelmsg/SendAuth

.field private static final 'LENGTH_LIMIT' I = 1024


.field private static final 'TAG' Ljava/lang/String; = "MicroMsg.SDK.SendAuth.Resp"

.field public 'code' Ljava/lang/String;

.field public 'state' Ljava/lang/String;

.field public 'url' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial com/tencent/mm/sdk/modelbase/BaseResp/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(Landroid/os/Bundle;)V
aload 0
invokespecial com/tencent/mm/sdk/modelbase/BaseResp/<init>()V
aload 0
aload 1
invokevirtual com/tencent/mm/sdk/modelmsg/SendAuth$Resp/fromBundle(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 2
.end method

.method public checkArgs()Z
aload 0
getfield com/tencent/mm/sdk/modelmsg/SendAuth$Resp/state Ljava/lang/String;
ifnull L0
aload 0
getfield com/tencent/mm/sdk/modelmsg/SendAuth$Resp/state Ljava/lang/String;
invokevirtual java/lang/String/length()I
sipush 1024
if_icmple L0
ldc "MicroMsg.SDK.SendAuth.Resp"
ldc "checkArgs fail, state is invalid"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public fromBundle(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/tencent/mm/sdk/modelbase/BaseResp/fromBundle(Landroid/os/Bundle;)V
aload 0
aload 1
ldc "_wxapi_sendauth_resp_token"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/tencent/mm/sdk/modelmsg/SendAuth$Resp/code Ljava/lang/String;
aload 0
aload 1
ldc "_wxapi_sendauth_resp_state"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/tencent/mm/sdk/modelmsg/SendAuth$Resp/state Ljava/lang/String;
aload 0
aload 1
ldc "_wxapi_sendauth_resp_url"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/tencent/mm/sdk/modelmsg/SendAuth$Resp/url Ljava/lang/String;
return
.limit locals 2
.limit stack 3
.end method

.method public getType()I
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public toBundle(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/tencent/mm/sdk/modelbase/BaseResp/toBundle(Landroid/os/Bundle;)V
aload 1
ldc "_wxapi_sendauth_resp_token"
aload 0
getfield com/tencent/mm/sdk/modelmsg/SendAuth$Resp/code Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "_wxapi_sendauth_resp_state"
aload 0
getfield com/tencent/mm/sdk/modelmsg/SendAuth$Resp/state Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "_wxapi_sendauth_resp_url"
aload 0
getfield com/tencent/mm/sdk/modelmsg/SendAuth$Resp/url Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method
