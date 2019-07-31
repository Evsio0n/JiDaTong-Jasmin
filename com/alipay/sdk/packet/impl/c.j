.bytecode 50.0
.class public final synchronized com/alipay/sdk/packet/impl/c
.super com/alipay/sdk/packet/d

.field public static final 't' Ljava/lang/String; = "log_v"

.method public <init>()V
aload 0
invokespecial com/alipay/sdk/packet/d/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/packet/b;
.throws java/lang/Throwable
aload 0
aload 1
aload 2
ldc "http://mcgw.alipay.com/sdklog.do"
iconst_1
invokevirtual com/alipay/sdk/packet/impl/c/a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/sdk/packet/b;
areturn
.limit locals 3
.limit stack 5
.end method

.method protected final a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
aload 1
areturn
.limit locals 3
.limit stack 1
.end method

.method protected final a(ZLjava/lang/String;)Ljava/util/List;
.signature "(ZLjava/lang/String;)Ljava/util/List<Lorg/apache/http/Header;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
aload 2
new org/apache/http/message/BasicHeader
dup
ldc "msp-gzip"
iload 1
invokestatic java/lang/String/valueOf(Z)Ljava/lang/String;
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 2
new org/apache/http/message/BasicHeader
dup
ldc "content-type"
ldc "application/octet-stream"
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 2
new org/apache/http/message/BasicHeader
dup
ldc "des-mode"
ldc "CBC"
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 2
areturn
.limit locals 3
.limit stack 5
.end method

.method protected final a()Lorg/json/JSONObject;
.throws org/json/JSONException
aconst_null
areturn
.limit locals 1
.limit stack 1
.end method

.method protected final c()Ljava/lang/String;
.throws org/json/JSONException
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 1
aload 1
ldc "api_name"
ldc "/sdk/log"
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 1
ldc "api_version"
ldc "1.0.0"
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 2
aload 2
ldc "log_v"
ldc "1.0"
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 1
aload 2
invokestatic com/alipay/sdk/packet/impl/c/a(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/lang/String;
areturn
.limit locals 3
.limit stack 3
.end method
