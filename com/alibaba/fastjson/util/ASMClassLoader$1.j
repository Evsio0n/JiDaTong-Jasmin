.bytecode 50.0
.class final synchronized com/alibaba/fastjson/util/ASMClassLoader$1
.super java/lang/Object
.implements java/security/PrivilegedAction
.signature "Ljava/lang/Object;Ljava/security/PrivilegedAction<Ljava/lang/Object;>;"
.enclosing method com/alibaba/fastjson/util/ASMClassLoader
.inner class static final inner com/alibaba/fastjson/util/ASMClassLoader$1

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public run()Ljava/lang/Object;
ldc com/alibaba/fastjson/util/ASMClassLoader
invokevirtual java/lang/Class/getProtectionDomain()Ljava/security/ProtectionDomain;
areturn
.limit locals 1
.limit stack 1
.end method
