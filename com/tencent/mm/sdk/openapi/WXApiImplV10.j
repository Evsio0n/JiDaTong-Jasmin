.bytecode 50.0
.class final synchronized com/tencent/mm/sdk/openapi/WXApiImplV10
.super java/lang/Object
.implements com/tencent/mm/sdk/openapi/IWXAPI

.field private static final 'TAG' Ljava/lang/String; = "MicroMsg.SDK.WXApiImplV10"

.field private static 'wxappPayEntryClassname' Ljava/lang/String;

.field private 'appId' Ljava/lang/String;

.field private 'checkSignature' Z

.field private 'context' Landroid/content/Context;

.field private 'detached' Z

.method static <clinit>()V
aconst_null
putstatic com/tencent/mm/sdk/openapi/WXApiImplV10/wxappPayEntryClassname Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method <init>(Landroid/content/Context;Ljava/lang/String;Z)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/tencent/mm/sdk/openapi/WXApiImplV10/checkSignature Z
aload 0
iconst_0
putfield com/tencent/mm/sdk/openapi/WXApiImplV10/detached Z
ldc "MicroMsg.SDK.WXApiImplV10"
new java/lang/StringBuilder
dup
ldc "<init>, appId = "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", checkSignature = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/tencent/mm/sdk/b/a/c(Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 1
putfield com/tencent/mm/sdk/openapi/WXApiImplV10/context Landroid/content/Context;
aload 0
aload 2
putfield com/tencent/mm/sdk/openapi/WXApiImplV10/appId Ljava/lang/String;
aload 0
iload 3
putfield com/tencent/mm/sdk/openapi/WXApiImplV10/checkSignature Z
return
.limit locals 4
.limit stack 4
.end method

.method private checkSumConsistent([B[B)Z
aload 1
ifnull L0
aload 1
arraylength
ifeq L0
aload 2
ifnull L0
aload 2
arraylength
ifne L1
L0:
ldc "MicroMsg.SDK.WXApiImplV10"
ldc "checkSumConsistent fail, invalid arguments"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
L2:
iconst_0
ireturn
L1:
aload 1
arraylength
aload 2
arraylength
if_icmpeq L3
ldc "MicroMsg.SDK.WXApiImplV10"
ldc "checkSumConsistent fail, length is different"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L3:
iconst_0
istore 3
L4:
iload 3
aload 1
arraylength
if_icmpge L5
aload 1
iload 3
baload
aload 2
iload 3
baload
if_icmpne L2
iload 3
iconst_1
iadd
istore 3
goto L4
L5:
iconst_1
ireturn
.limit locals 4
.limit stack 3
.end method

.method private sendPayReq(Landroid/content/Context;Landroid/os/Bundle;)Z
getstatic com/tencent/mm/sdk/openapi/WXApiImplV10/wxappPayEntryClassname Ljava/lang/String;
ifnonnull L0
new com/tencent/mm/sdk/a
dup
aload 1
invokespecial com/tencent/mm/sdk/a/<init>(Landroid/content/Context;)V
ldc "_wxapp_pay_entry_classname_"
aconst_null
invokevirtual com/tencent/mm/sdk/a/getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
putstatic com/tencent/mm/sdk/openapi/WXApiImplV10/wxappPayEntryClassname Ljava/lang/String;
ldc "MicroMsg.SDK.WXApiImplV10"
new java/lang/StringBuilder
dup
ldc "pay, set wxappPayEntryClassname = "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
getstatic com/tencent/mm/sdk/openapi/WXApiImplV10/wxappPayEntryClassname Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/tencent/mm/sdk/b/a/c(Ljava/lang/String;Ljava/lang/String;)V
getstatic com/tencent/mm/sdk/openapi/WXApiImplV10/wxappPayEntryClassname Ljava/lang/String;
ifnonnull L0
ldc "MicroMsg.SDK.WXApiImplV10"
ldc "pay fail, wxappPayEntryClassname is null"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L0:
new com/tencent/mm/sdk/a/a$a
dup
invokespecial com/tencent/mm/sdk/a/a$a/<init>()V
astore 3
aload 3
aload 2
putfield com/tencent/mm/sdk/a/a$a/k Landroid/os/Bundle;
aload 3
ldc "com.tencent.mm"
putfield com/tencent/mm/sdk/a/a$a/h Ljava/lang/String;
aload 3
getstatic com/tencent/mm/sdk/openapi/WXApiImplV10/wxappPayEntryClassname Ljava/lang/String;
putfield com/tencent/mm/sdk/a/a$a/i Ljava/lang/String;
aload 1
aload 3
invokestatic com/tencent/mm/sdk/a/a/a(Landroid/content/Context;Lcom/tencent/mm/sdk/a/a$a;)Z
ireturn
.limit locals 4
.limit stack 4
.end method

.method public final detach()V
ldc "MicroMsg.SDK.WXApiImplV10"
ldc "detach"
invokestatic com/tencent/mm/sdk/b/a/c(Ljava/lang/String;Ljava/lang/String;)V
aload 0
iconst_1
putfield com/tencent/mm/sdk/openapi/WXApiImplV10/detached Z
aload 0
aconst_null
putfield com/tencent/mm/sdk/openapi/WXApiImplV10/context Landroid/content/Context;
return
.limit locals 1
.limit stack 2
.end method

.method public final getWXAppSupportAPI()I
aload 0
getfield com/tencent/mm/sdk/openapi/WXApiImplV10/detached Z
ifeq L0
new java/lang/IllegalStateException
dup
ldc "getWXAppSupportAPI fail, WXMsgImpl has been detached"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
invokevirtual com/tencent/mm/sdk/openapi/WXApiImplV10/isWXAppInstalled()Z
ifne L1
ldc "MicroMsg.SDK.WXApiImplV10"
ldc "open wx app failed, not installed or signature check failed"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L1:
new com/tencent/mm/sdk/a
dup
aload 0
getfield com/tencent/mm/sdk/openapi/WXApiImplV10/context Landroid/content/Context;
invokespecial com/tencent/mm/sdk/a/<init>(Landroid/content/Context;)V
ldc "_build_info_sdk_int_"
iconst_0
invokevirtual com/tencent/mm/sdk/a/getInt(Ljava/lang/String;I)I
ireturn
.limit locals 1
.limit stack 3
.end method

.method public final handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z
aload 1
ldc "com.tencent.mm.openapi.token"
invokestatic com/tencent/mm/sdk/openapi/WXApiImplComm/isIntentFromWx(Landroid/content/Intent;Ljava/lang/String;)Z
ifne L0
ldc "MicroMsg.SDK.WXApiImplV10"
ldc "handleIntent fail, intent not from weixin msg"
invokestatic com/tencent/mm/sdk/b/a/b(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L0:
aload 0
getfield com/tencent/mm/sdk/openapi/WXApiImplV10/detached Z
ifeq L1
new java/lang/IllegalStateException
dup
ldc "handleIntent fail, WXMsgImpl has been detached"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 1
ldc "_mmessage_content"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 4
aload 1
ldc "_mmessage_sdkVersion"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
istore 3
aload 1
ldc "_mmessage_appPackage"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 5
aload 5
ifnull L2
aload 5
invokevirtual java/lang/String/length()I
ifne L3
L2:
ldc "MicroMsg.SDK.WXApiImplV10"
ldc "invalid argument"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L3:
aload 0
aload 1
ldc "_mmessage_checksum"
invokevirtual android/content/Intent/getByteArrayExtra(Ljava/lang/String;)[B
aload 4
iload 3
aload 5
invokestatic com/tencent/mm/sdk/a/a/b/a(Ljava/lang/String;ILjava/lang/String;)[B
invokespecial com/tencent/mm/sdk/openapi/WXApiImplV10/checkSumConsistent([B[B)Z
ifne L4
ldc "MicroMsg.SDK.WXApiImplV10"
ldc "checksum fail"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L4:
aload 1
ldc "_wxapi_command_type"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
istore 3
iload 3
tableswitch 1
L5
L6
L7
L8
L9
L10
default : L11
L11:
ldc "MicroMsg.SDK.WXApiImplV10"
new java/lang/StringBuilder
dup
ldc "unknown cmd = "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L5:
aload 2
new com/tencent/mm/sdk/modelmsg/SendAuth$Resp
dup
aload 1
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
invokespecial com/tencent/mm/sdk/modelmsg/SendAuth$Resp/<init>(Landroid/os/Bundle;)V
invokeinterface com/tencent/mm/sdk/openapi/IWXAPIEventHandler/onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V 1
iconst_1
ireturn
L6:
aload 2
new com/tencent/mm/sdk/modelmsg/SendMessageToWX$Resp
dup
aload 1
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
invokespecial com/tencent/mm/sdk/modelmsg/SendMessageToWX$Resp/<init>(Landroid/os/Bundle;)V
invokeinterface com/tencent/mm/sdk/openapi/IWXAPIEventHandler/onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V 1
iconst_1
ireturn
L7:
aload 2
new com/tencent/mm/sdk/modelmsg/GetMessageFromWX$Req
dup
aload 1
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
invokespecial com/tencent/mm/sdk/modelmsg/GetMessageFromWX$Req/<init>(Landroid/os/Bundle;)V
invokeinterface com/tencent/mm/sdk/openapi/IWXAPIEventHandler/onReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)V 1
iconst_1
ireturn
L8:
aload 2
new com/tencent/mm/sdk/modelmsg/ShowMessageFromWX$Req
dup
aload 1
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
invokespecial com/tencent/mm/sdk/modelmsg/ShowMessageFromWX$Req/<init>(Landroid/os/Bundle;)V
invokeinterface com/tencent/mm/sdk/openapi/IWXAPIEventHandler/onReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)V 1
iconst_1
ireturn
L9:
aload 2
new com/tencent/mm/sdk/modelpay/PayResp
dup
aload 1
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
invokespecial com/tencent/mm/sdk/modelpay/PayResp/<init>(Landroid/os/Bundle;)V
invokeinterface com/tencent/mm/sdk/openapi/IWXAPIEventHandler/onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V 1
iconst_1
ireturn
L10:
aload 2
new com/tencent/mm/sdk/modelmsg/LaunchFromWX$Req
dup
aload 1
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
invokespecial com/tencent/mm/sdk/modelmsg/LaunchFromWX$Req/<init>(Landroid/os/Bundle;)V
invokeinterface com/tencent/mm/sdk/openapi/IWXAPIEventHandler/onReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)V 1
iconst_1
ireturn
.limit locals 6
.limit stack 5
.end method

.method public final isWXAppInstalled()Z
.catch android/content/pm/PackageManager$NameNotFoundException from L0 to L1 using L2
.catch android/content/pm/PackageManager$NameNotFoundException from L3 to L4 using L2
aload 0
getfield com/tencent/mm/sdk/openapi/WXApiImplV10/detached Z
ifeq L0
new java/lang/IllegalStateException
dup
ldc "isWXAppInstalled fail, WXMsgImpl has been detached"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield com/tencent/mm/sdk/openapi/WXApiImplV10/context Landroid/content/Context;
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
ldc "com.tencent.mm"
bipush 64
invokevirtual android/content/pm/PackageManager/getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
astore 2
L1:
aload 2
ifnonnull L3
iconst_0
ireturn
L3:
aload 0
getfield com/tencent/mm/sdk/openapi/WXApiImplV10/context Landroid/content/Context;
aload 2
getfield android/content/pm/PackageInfo/signatures [Landroid/content/pm/Signature;
aload 0
getfield com/tencent/mm/sdk/openapi/WXApiImplV10/checkSignature Z
invokestatic com/tencent/mm/sdk/openapi/WXApiImplComm/validateAppSignature(Landroid/content/Context;[Landroid/content/pm/Signature;Z)Z
istore 1
L4:
iload 1
ireturn
L2:
astore 2
iconst_0
ireturn
.limit locals 3
.limit stack 3
.end method

.method public final isWXAppSupportAPI()Z
aload 0
getfield com/tencent/mm/sdk/openapi/WXApiImplV10/detached Z
ifeq L0
new java/lang/IllegalStateException
dup
ldc "isWXAppSupportAPI fail, WXMsgImpl has been detached"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
invokevirtual com/tencent/mm/sdk/openapi/WXApiImplV10/getWXAppSupportAPI()I
ldc_w 570425345
if_icmplt L1
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 1
.limit stack 3
.end method

.method public final openWXApp()Z
.catch java/lang/Exception from L0 to L1 using L2
aload 0
getfield com/tencent/mm/sdk/openapi/WXApiImplV10/detached Z
ifeq L3
new java/lang/IllegalStateException
dup
ldc "openWXApp fail, WXMsgImpl has been detached"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L3:
aload 0
invokevirtual com/tencent/mm/sdk/openapi/WXApiImplV10/isWXAppInstalled()Z
ifne L0
ldc "MicroMsg.SDK.WXApiImplV10"
ldc "open wx app failed, not installed or signature check failed"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L0:
aload 0
getfield com/tencent/mm/sdk/openapi/WXApiImplV10/context Landroid/content/Context;
aload 0
getfield com/tencent/mm/sdk/openapi/WXApiImplV10/context Landroid/content/Context;
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
ldc "com.tencent.mm"
invokevirtual android/content/pm/PackageManager/getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
L1:
iconst_1
ireturn
L2:
astore 1
ldc "MicroMsg.SDK.WXApiImplV10"
new java/lang/StringBuilder
dup
ldc "startActivity fail, exception = "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
.limit locals 2
.limit stack 4
.end method

.method public final registerApp(Ljava/lang/String;)Z
aload 0
getfield com/tencent/mm/sdk/openapi/WXApiImplV10/detached Z
ifeq L0
new java/lang/IllegalStateException
dup
ldc "registerApp fail, WXMsgImpl has been detached"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield com/tencent/mm/sdk/openapi/WXApiImplV10/context Landroid/content/Context;
ldc "com.tencent.mm"
aload 0
getfield com/tencent/mm/sdk/openapi/WXApiImplV10/checkSignature Z
invokestatic com/tencent/mm/sdk/openapi/WXApiImplComm/validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;Z)Z
ifne L1
ldc "MicroMsg.SDK.WXApiImplV10"
ldc "register app failed for wechat app signature check failed"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L1:
ldc "MicroMsg.SDK.WXApiImplV10"
new java/lang/StringBuilder
dup
ldc "registerApp, appId = "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/tencent/mm/sdk/b/a/c(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ifnull L2
aload 0
aload 1
putfield com/tencent/mm/sdk/openapi/WXApiImplV10/appId Ljava/lang/String;
L2:
ldc "MicroMsg.SDK.WXApiImplV10"
new java/lang/StringBuilder
dup
ldc "register app "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/tencent/mm/sdk/openapi/WXApiImplV10/context Landroid/content/Context;
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/tencent/mm/sdk/b/a/c(Ljava/lang/String;Ljava/lang/String;)V
new com/tencent/mm/sdk/a/a/a$a
dup
invokespecial com/tencent/mm/sdk/a/a/a$a/<init>()V
astore 1
aload 1
ldc "com.tencent.mm"
putfield com/tencent/mm/sdk/a/a/a$a/l Ljava/lang/String;
aload 1
ldc "com.tencent.mm.plugin.openapi.Intent.ACTION_HANDLE_APP_REGISTER"
putfield com/tencent/mm/sdk/a/a/a$a/m Ljava/lang/String;
aload 1
new java/lang/StringBuilder
dup
ldc "weixin://registerapp?appid="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/tencent/mm/sdk/openapi/WXApiImplV10/appId Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/tencent/mm/sdk/a/a/a$a/j Ljava/lang/String;
aload 0
getfield com/tencent/mm/sdk/openapi/WXApiImplV10/context Landroid/content/Context;
aload 1
invokestatic com/tencent/mm/sdk/a/a/a/a(Landroid/content/Context;Lcom/tencent/mm/sdk/a/a/a$a;)Z
ireturn
.limit locals 2
.limit stack 4
.end method

.method public final sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z
aload 0
getfield com/tencent/mm/sdk/openapi/WXApiImplV10/detached Z
ifeq L0
new java/lang/IllegalStateException
dup
ldc "sendReq fail, WXMsgImpl has been detached"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield com/tencent/mm/sdk/openapi/WXApiImplV10/context Landroid/content/Context;
ldc "com.tencent.mm"
aload 0
getfield com/tencent/mm/sdk/openapi/WXApiImplV10/checkSignature Z
invokestatic com/tencent/mm/sdk/openapi/WXApiImplComm/validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;Z)Z
ifne L1
ldc "MicroMsg.SDK.WXApiImplV10"
ldc "sendReq failed for wechat app signature check failed"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L1:
aload 1
invokevirtual com/tencent/mm/sdk/modelbase/BaseReq/checkArgs()Z
ifne L2
ldc "MicroMsg.SDK.WXApiImplV10"
ldc "sendReq checkArgs fail"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L2:
ldc "MicroMsg.SDK.WXApiImplV10"
new java/lang/StringBuilder
dup
ldc "sendReq, req type = "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual com/tencent/mm/sdk/modelbase/BaseReq/getType()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/tencent/mm/sdk/b/a/c(Ljava/lang/String;Ljava/lang/String;)V
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 1
aload 2
invokevirtual com/tencent/mm/sdk/modelbase/BaseReq/toBundle(Landroid/os/Bundle;)V
aload 1
invokevirtual com/tencent/mm/sdk/modelbase/BaseReq/getType()I
iconst_5
if_icmpne L3
aload 0
aload 0
getfield com/tencent/mm/sdk/openapi/WXApiImplV10/context Landroid/content/Context;
aload 2
invokespecial com/tencent/mm/sdk/openapi/WXApiImplV10/sendPayReq(Landroid/content/Context;Landroid/os/Bundle;)Z
ireturn
L3:
new com/tencent/mm/sdk/a/a$a
dup
invokespecial com/tencent/mm/sdk/a/a$a/<init>()V
astore 1
aload 1
aload 2
putfield com/tencent/mm/sdk/a/a$a/k Landroid/os/Bundle;
aload 1
new java/lang/StringBuilder
dup
ldc "weixin://sendreq?appid="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/tencent/mm/sdk/openapi/WXApiImplV10/appId Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/tencent/mm/sdk/a/a$a/j Ljava/lang/String;
aload 1
ldc "com.tencent.mm"
putfield com/tencent/mm/sdk/a/a$a/h Ljava/lang/String;
aload 1
ldc "com.tencent.mm.plugin.base.stub.WXEntryActivity"
putfield com/tencent/mm/sdk/a/a$a/i Ljava/lang/String;
aload 0
getfield com/tencent/mm/sdk/openapi/WXApiImplV10/context Landroid/content/Context;
aload 1
invokestatic com/tencent/mm/sdk/a/a/a(Landroid/content/Context;Lcom/tencent/mm/sdk/a/a$a;)Z
ireturn
.limit locals 3
.limit stack 4
.end method

.method public final sendResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)Z
aload 0
getfield com/tencent/mm/sdk/openapi/WXApiImplV10/detached Z
ifeq L0
new java/lang/IllegalStateException
dup
ldc "sendResp fail, WXMsgImpl has been detached"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield com/tencent/mm/sdk/openapi/WXApiImplV10/context Landroid/content/Context;
ldc "com.tencent.mm"
aload 0
getfield com/tencent/mm/sdk/openapi/WXApiImplV10/checkSignature Z
invokestatic com/tencent/mm/sdk/openapi/WXApiImplComm/validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;Z)Z
ifne L1
ldc "MicroMsg.SDK.WXApiImplV10"
ldc "sendResp failed for wechat app signature check failed"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L1:
aload 1
invokevirtual com/tencent/mm/sdk/modelbase/BaseResp/checkArgs()Z
ifne L2
ldc "MicroMsg.SDK.WXApiImplV10"
ldc "sendResp checkArgs fail"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L2:
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 1
aload 2
invokevirtual com/tencent/mm/sdk/modelbase/BaseResp/toBundle(Landroid/os/Bundle;)V
new com/tencent/mm/sdk/a/a$a
dup
invokespecial com/tencent/mm/sdk/a/a$a/<init>()V
astore 1
aload 1
aload 2
putfield com/tencent/mm/sdk/a/a$a/k Landroid/os/Bundle;
aload 1
new java/lang/StringBuilder
dup
ldc "weixin://sendresp?appid="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/tencent/mm/sdk/openapi/WXApiImplV10/appId Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/tencent/mm/sdk/a/a$a/j Ljava/lang/String;
aload 1
ldc "com.tencent.mm"
putfield com/tencent/mm/sdk/a/a$a/h Ljava/lang/String;
aload 1
ldc "com.tencent.mm.plugin.base.stub.WXEntryActivity"
putfield com/tencent/mm/sdk/a/a$a/i Ljava/lang/String;
aload 0
getfield com/tencent/mm/sdk/openapi/WXApiImplV10/context Landroid/content/Context;
aload 1
invokestatic com/tencent/mm/sdk/a/a/a(Landroid/content/Context;Lcom/tencent/mm/sdk/a/a$a;)Z
ireturn
.limit locals 3
.limit stack 4
.end method

.method public final unregisterApp()V
aload 0
getfield com/tencent/mm/sdk/openapi/WXApiImplV10/detached Z
ifeq L0
new java/lang/IllegalStateException
dup
ldc "unregisterApp fail, WXMsgImpl has been detached"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield com/tencent/mm/sdk/openapi/WXApiImplV10/context Landroid/content/Context;
ldc "com.tencent.mm"
aload 0
getfield com/tencent/mm/sdk/openapi/WXApiImplV10/checkSignature Z
invokestatic com/tencent/mm/sdk/openapi/WXApiImplComm/validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;Z)Z
ifne L1
ldc "MicroMsg.SDK.WXApiImplV10"
ldc "unregister app failed for wechat app signature check failed"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
return
L1:
ldc "MicroMsg.SDK.WXApiImplV10"
new java/lang/StringBuilder
dup
ldc "unregisterApp, appId = "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/tencent/mm/sdk/openapi/WXApiImplV10/appId Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/tencent/mm/sdk/b/a/c(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/tencent/mm/sdk/openapi/WXApiImplV10/appId Ljava/lang/String;
ifnull L2
aload 0
getfield com/tencent/mm/sdk/openapi/WXApiImplV10/appId Ljava/lang/String;
invokevirtual java/lang/String/length()I
ifne L3
L2:
ldc "MicroMsg.SDK.WXApiImplV10"
ldc "unregisterApp fail, appId is empty"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
return
L3:
ldc "MicroMsg.SDK.WXApiImplV10"
new java/lang/StringBuilder
dup
ldc "unregister app "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/tencent/mm/sdk/openapi/WXApiImplV10/context Landroid/content/Context;
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/tencent/mm/sdk/b/a/c(Ljava/lang/String;Ljava/lang/String;)V
new com/tencent/mm/sdk/a/a/a$a
dup
invokespecial com/tencent/mm/sdk/a/a/a$a/<init>()V
astore 1
aload 1
ldc "com.tencent.mm"
putfield com/tencent/mm/sdk/a/a/a$a/l Ljava/lang/String;
aload 1
ldc "com.tencent.mm.plugin.openapi.Intent.ACTION_HANDLE_APP_UNREGISTER"
putfield com/tencent/mm/sdk/a/a/a$a/m Ljava/lang/String;
aload 1
new java/lang/StringBuilder
dup
ldc "weixin://unregisterapp?appid="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/tencent/mm/sdk/openapi/WXApiImplV10/appId Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/tencent/mm/sdk/a/a/a$a/j Ljava/lang/String;
aload 0
getfield com/tencent/mm/sdk/openapi/WXApiImplV10/context Landroid/content/Context;
aload 1
invokestatic com/tencent/mm/sdk/a/a/a/a(Landroid/content/Context;Lcom/tencent/mm/sdk/a/a/a$a;)Z
pop
return
.limit locals 2
.limit stack 4
.end method
