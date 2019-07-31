.bytecode 50.0
.class public final synchronized com/alipay/apmobilesecuritysdk/f/c
.super java/lang/Object

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
aload 0
ifnull L3
aload 1
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifne L3
aload 2
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifeq L0
L3:
aconst_null
areturn
L0:
aload 0
aload 1
aload 2
ldc ""
invokestatic com/alipay/security/mobile/module/localstorage/c/a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 0
aload 0
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifne L3
invokestatic com/alipay/security/mobile/module/commonutils/crypto/i/a()Ljava/lang/String;
aload 0
invokestatic com/alipay/security/mobile/module/commonutils/crypto/i/b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 0
L1:
aload 0
areturn
L2:
astore 0
aconst_null
areturn
.limit locals 3
.limit stack 4
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
aload 0
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifne L3
aload 1
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifeq L0
L3:
aconst_null
areturn
L0:
aload 0
invokestatic com/alipay/security/mobile/module/localstorage/a/a(Ljava/lang/String;)Ljava/lang/String;
astore 0
aload 0
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifne L3
new org/json/JSONObject
dup
aload 0
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
aload 1
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 0
aload 0
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifne L3
invokestatic com/alipay/security/mobile/module/commonutils/crypto/i/a()Ljava/lang/String;
aload 0
invokestatic com/alipay/security/mobile/module/commonutils/crypto/i/b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 0
L1:
aload 0
areturn
L2:
astore 0
aconst_null
areturn
.limit locals 2
.limit stack 3
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.catch java/lang/Exception from L0 to L1 using L2
aload 1
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifne L3
aload 2
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifne L3
aload 0
ifnull L3
aload 3
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifeq L0
L3:
return
L0:
invokestatic com/alipay/security/mobile/module/commonutils/crypto/i/a()Ljava/lang/String;
aload 3
invokestatic com/alipay/security/mobile/module/commonutils/crypto/i/a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 3
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 4
aload 4
aload 2
aload 3
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 0
aload 1
aload 4
invokestatic com/alipay/security/mobile/module/localstorage/c/a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
L1:
return
L2:
astore 0
return
.limit locals 5
.limit stack 3
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifne L3
aload 1
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifne L3
aload 2
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifeq L0
L3:
return
L0:
invokestatic com/alipay/security/mobile/module/commonutils/crypto/i/a()Ljava/lang/String;
aload 2
invokestatic com/alipay/security/mobile/module/commonutils/crypto/i/a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 2
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 3
aload 3
aload 1
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 0
aload 3
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
invokestatic com/alipay/security/mobile/module/localstorage/a/a(Ljava/lang/String;Ljava/lang/String;)V
L1:
return
L2:
astore 0
return
.limit locals 4
.limit stack 3
.end method
