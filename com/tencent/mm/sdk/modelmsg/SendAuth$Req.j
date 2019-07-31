.bytecode 50.0
.class public synchronized com/tencent/mm/sdk/modelmsg/SendAuth$Req
.super com/tencent/mm/sdk/modelbase/BaseReq
.inner class public static Req inner com/tencent/mm/sdk/modelmsg/SendAuth$Req outer com/tencent/mm/sdk/modelmsg/SendAuth

.field private static final 'LENGTH_LIMIT' I = 1024


.field private static final 'TAG' Ljava/lang/String; = "MicroMsg.SDK.SendAuth.Req"

.field public 'scope' Ljava/lang/String;

.field public 'state' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial com/tencent/mm/sdk/modelbase/BaseReq/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(Landroid/os/Bundle;)V
aload 0
invokespecial com/tencent/mm/sdk/modelbase/BaseReq/<init>()V
aload 0
aload 1
invokevirtual com/tencent/mm/sdk/modelmsg/SendAuth$Req/fromBundle(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 2
.end method

.method public checkArgs()Z
aload 0
getfield com/tencent/mm/sdk/modelmsg/SendAuth$Req/scope Ljava/lang/String;
ifnull L0
aload 0
getfield com/tencent/mm/sdk/modelmsg/SendAuth$Req/scope Ljava/lang/String;
invokevirtual java/lang/String/length()I
ifeq L0
aload 0
getfield com/tencent/mm/sdk/modelmsg/SendAuth$Req/scope Ljava/lang/String;
invokevirtual java/lang/String/length()I
sipush 1024
if_icmple L1
L0:
ldc "MicroMsg.SDK.SendAuth.Req"
ldc "checkArgs fail, scope is invalid"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L1:
aload 0
getfield com/tencent/mm/sdk/modelmsg/SendAuth$Req/state Ljava/lang/String;
ifnull L2
aload 0
getfield com/tencent/mm/sdk/modelmsg/SendAuth$Req/state Ljava/lang/String;
invokevirtual java/lang/String/length()I
sipush 1024
if_icmple L2
ldc "MicroMsg.SDK.SendAuth.Req"
ldc "checkArgs fail, state is invalid"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L2:
iconst_1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public fromBundle(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/tencent/mm/sdk/modelbase/BaseReq/fromBundle(Landroid/os/Bundle;)V
aload 0
aload 1
ldc "_wxapi_sendauth_req_scope"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/tencent/mm/sdk/modelmsg/SendAuth$Req/scope Ljava/lang/String;
aload 0
aload 1
ldc "_wxapi_sendauth_req_state"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/tencent/mm/sdk/modelmsg/SendAuth$Req/state Ljava/lang/String;
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
invokespecial com/tencent/mm/sdk/modelbase/BaseReq/toBundle(Landroid/os/Bundle;)V
aload 1
ldc "_wxapi_sendauth_req_scope"
aload 0
getfield com/tencent/mm/sdk/modelmsg/SendAuth$Req/scope Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "_wxapi_sendauth_req_state"
aload 0
getfield com/tencent/mm/sdk/modelmsg/SendAuth$Req/state Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method
