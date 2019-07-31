.bytecode 50.0
.class public final synchronized com/tencent/mm/sdk/c/a$a
.super java/lang/Object
.inner class public static final a inner com/tencent/mm/sdk/c/a$a outer com/tencent/mm/sdk/c/a

.method public static a(ILjava/lang/String;)Ljava/lang/Object;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L4 to L5 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L6 to L7 using L2
.catch java/lang/Exception from L7 to L8 using L2
aload 1
astore 2
iload 0
tableswitch 1
L3
L4
L9
L5
L6
L7
default : L0
L0:
ldc "MicroMsg.SDK.PluginProvider.Resolver"
ldc "unknown type"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
L1:
goto L10
L3:
aload 1
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
areturn
L4:
aload 1
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
areturn
L5:
aload 1
invokestatic java/lang/Boolean/valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
areturn
L6:
aload 1
invokestatic java/lang/Float/valueOf(Ljava/lang/String;)Ljava/lang/Float;
areturn
L7:
aload 1
invokestatic java/lang/Double/valueOf(Ljava/lang/String;)Ljava/lang/Double;
astore 1
L8:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
L10:
aconst_null
astore 2
L9:
aload 2
areturn
.limit locals 3
.limit stack 2
.end method
