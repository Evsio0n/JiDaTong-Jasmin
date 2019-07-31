.bytecode 50.0
.class synchronized com/tencent/mm/sdk/openapi/WXApiImplComm
.super java/lang/Object

.field private static final 'TAG' Ljava/lang/String; = "MicroMsg.SDK.WXMsgImplComm"

.field private static final 'WX_APP_SIGNATURE' Ljava/lang/String; = "308202eb30820254a00302010202044d36f7a4300d06092a864886f70d01010505003081b9310b300906035504061302383631123010060355040813094775616e67646f6e673111300f060355040713085368656e7a68656e31353033060355040a132c54656e63656e7420546563686e6f6c6f6779285368656e7a68656e2920436f6d70616e79204c696d69746564313a3038060355040b133154656e63656e74204775616e677a686f7520526573656172636820616e6420446576656c6f706d656e742043656e7465723110300e0603550403130754656e63656e74301e170d3131303131393134333933325a170d3431303131313134333933325a3081b9310b300906035504061302383631123010060355040813094775616e67646f6e673111300f060355040713085368656e7a68656e31353033060355040a132c54656e63656e7420546563686e6f6c6f6779285368656e7a68656e2920436f6d70616e79204c696d69746564313a3038060355040b133154656e63656e74204775616e677a686f7520526573656172636820616e6420446576656c6f706d656e742043656e7465723110300e0603550403130754656e63656e7430819f300d06092a864886f70d010101050003818d0030818902818100c05f34b231b083fb1323670bfbe7bdab40c0c0a6efc87ef2072a1ff0d60cc67c8edb0d0847f210bea6cbfaa241be70c86daf56be08b723c859e52428a064555d80db448cdcacc1aea2501eba06f8bad12a4fa49d85cacd7abeb68945a5cb5e061629b52e3254c373550ee4e40cb7c8ae6f7a8151ccd8df582d446f39ae0c5e930203010001300d06092a864886f70d0101050500038181009c8d9d7f2f908c42081b4c764c377109a8b2c70582422125ce545842d5f520aea69550b6bd8bfd94e987b75a3077eb04ad341f481aac266e89d3864456e69fba13df018acdc168b9a19dfd7ad9d9cc6f6ace57c746515f71234df3a053e33ba93ece5cd0fc15f3e389a3f365588a9fcb439e069d3629cd7732a13fff7b891499"

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
new java/lang/RuntimeException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " should not be instantiated"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;)V
athrow
.limit locals 1
.limit stack 4
.end method

.method public static isIntentFromWx(Landroid/content/Intent;Ljava/lang/String;)Z
aload 0
ifnonnull L0
L1:
iconst_0
ireturn
L0:
aload 0
ldc "wx_token_key"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 0
aload 0
ifnull L1
aload 0
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static validateAppSignature(Landroid/content/Context;[Landroid/content/pm/Signature;Z)Z
iload 2
ifne L0
ldc "MicroMsg.SDK.WXMsgImplComm"
ldc "ignore wechat app signature validation"
invokestatic com/tencent/mm/sdk/b/a/c(Ljava/lang/String;Ljava/lang/String;)V
iconst_1
ireturn
L0:
aload 1
arraylength
istore 4
iconst_0
istore 3
L1:
iload 3
iload 4
if_icmpge L2
aload 1
iload 3
aaload
invokevirtual android/content/pm/Signature/toCharsString()Ljava/lang/String;
invokevirtual java/lang/String/toLowerCase()Ljava/lang/String;
astore 0
ldc "MicroMsg.SDK.WXMsgImplComm"
new java/lang/StringBuilder
dup
ldc "check signature:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/tencent/mm/sdk/b/a/c(Ljava/lang/String;Ljava/lang/String;)V
aload 0
ldc "308202eb30820254a00302010202044d36f7a4300d06092a864886f70d01010505003081b9310b300906035504061302383631123010060355040813094775616e67646f6e673111300f060355040713085368656e7a68656e31353033060355040a132c54656e63656e7420546563686e6f6c6f6779285368656e7a68656e2920436f6d70616e79204c696d69746564313a3038060355040b133154656e63656e74204775616e677a686f7520526573656172636820616e6420446576656c6f706d656e742043656e7465723110300e0603550403130754656e63656e74301e170d3131303131393134333933325a170d3431303131313134333933325a3081b9310b300906035504061302383631123010060355040813094775616e67646f6e673111300f060355040713085368656e7a68656e31353033060355040a132c54656e63656e7420546563686e6f6c6f6779285368656e7a68656e2920436f6d70616e79204c696d69746564313a3038060355040b133154656e63656e74204775616e677a686f7520526573656172636820616e6420446576656c6f706d656e742043656e7465723110300e0603550403130754656e63656e7430819f300d06092a864886f70d010101050003818d0030818902818100c05f34b231b083fb1323670bfbe7bdab40c0c0a6efc87ef2072a1ff0d60cc67c8edb0d0847f210bea6cbfaa241be70c86daf56be08b723c859e52428a064555d80db448cdcacc1aea2501eba06f8bad12a4fa49d85cacd7abeb68945a5cb5e061629b52e3254c373550ee4e40cb7c8ae6f7a8151ccd8df582d446f39ae0c5e930203010001300d06092a864886f70d0101050500038181009c8d9d7f2f908c42081b4c764c377109a8b2c70582422125ce545842d5f520aea69550b6bd8bfd94e987b75a3077eb04ad341f481aac266e89d3864456e69fba13df018acdc168b9a19dfd7ad9d9cc6f6ace57c746515f71234df3a053e33ba93ece5cd0fc15f3e389a3f365588a9fcb439e069d3629cd7732a13fff7b891499"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
ldc "MicroMsg.SDK.WXMsgImplComm"
ldc "pass"
invokestatic com/tencent/mm/sdk/b/a/c(Ljava/lang/String;Ljava/lang/String;)V
iconst_1
ireturn
L3:
iload 3
iconst_1
iadd
istore 3
goto L1
L2:
iconst_0
ireturn
.limit locals 5
.limit stack 4
.end method

.method public static validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;Z)Z
.catch android/content/pm/PackageManager$NameNotFoundException from L0 to L1 using L2
iload 2
ifne L0
ldc "MicroMsg.SDK.WXMsgImplComm"
ldc "ignore wechat app signature validation"
invokestatic com/tencent/mm/sdk/b/a/c(Ljava/lang/String;Ljava/lang/String;)V
iconst_1
ireturn
L0:
aload 0
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
aload 1
bipush 64
invokevirtual android/content/pm/PackageManager/getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
astore 1
L1:
aload 0
aload 1
getfield android/content/pm/PackageInfo/signatures [Landroid/content/pm/Signature;
iload 2
invokestatic com/tencent/mm/sdk/openapi/WXApiImplComm/validateAppSignature(Landroid/content/Context;[Landroid/content/pm/Signature;Z)Z
ireturn
L2:
astore 0
iconst_0
ireturn
.limit locals 3
.limit stack 3
.end method
