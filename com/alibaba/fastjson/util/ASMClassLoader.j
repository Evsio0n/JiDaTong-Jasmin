.bytecode 50.0
.class public synchronized com/alibaba/fastjson/util/ASMClassLoader
.super java/lang/ClassLoader
.inner class static final inner com/alibaba/fastjson/util/ASMClassLoader$1

.field private static 'DOMAIN' Ljava/security/ProtectionDomain;

.method static <clinit>()V
new com/alibaba/fastjson/util/ASMClassLoader$1
dup
invokespecial com/alibaba/fastjson/util/ASMClassLoader$1/<init>()V
invokestatic java/security/AccessController/doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
checkcast java/security/ProtectionDomain
putstatic com/alibaba/fastjson/util/ASMClassLoader/DOMAIN Ljava/security/ProtectionDomain;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokestatic com/alibaba/fastjson/util/ASMClassLoader/getParentClassLoader()Ljava/lang/ClassLoader;
invokespecial java/lang/ClassLoader/<init>(Ljava/lang/ClassLoader;)V
return
.limit locals 1
.limit stack 2
.end method

.method static getParentClassLoader()Ljava/lang/ClassLoader;
.catch java/lang/ClassNotFoundException from L0 to L1 using L2
invokestatic java/lang/Thread/currentThread()Ljava/lang/Thread;
invokevirtual java/lang/Thread/getContextClassLoader()Ljava/lang/ClassLoader;
astore 0
aload 0
ifnull L3
L0:
aload 0
ldc com/alibaba/fastjson/JSON
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokevirtual java/lang/ClassLoader/loadClass(Ljava/lang/String;)Ljava/lang/Class;
pop
L1:
aload 0
areturn
L2:
astore 0
L3:
ldc com/alibaba/fastjson/JSON
invokevirtual java/lang/Class/getClassLoader()Ljava/lang/ClassLoader;
areturn
.limit locals 1
.limit stack 2
.end method

.method public defineClassPublic(Ljava/lang/String;[BII)Ljava/lang/Class;
.signature "(Ljava/lang/String;[BII)Ljava/lang/Class<*>;"
.throws java/lang/ClassFormatError
aload 0
aload 1
aload 2
iload 3
iload 4
getstatic com/alibaba/fastjson/util/ASMClassLoader/DOMAIN Ljava/security/ProtectionDomain;
invokevirtual com/alibaba/fastjson/util/ASMClassLoader/defineClass(Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;
areturn
.limit locals 5
.limit stack 6
.end method

.method public isExternalClass(Ljava/lang/Class;)Z
.signature "(Ljava/lang/Class<*>;)Z"
aload 1
invokevirtual java/lang/Class/getClassLoader()Ljava/lang/ClassLoader;
astore 2
aload 2
ifnonnull L0
L1:
iconst_0
ireturn
L0:
aload 0
astore 1
L2:
aload 1
ifnull L3
aload 1
aload 2
if_acmpeq L1
aload 1
invokevirtual java/lang/ClassLoader/getParent()Ljava/lang/ClassLoader;
astore 1
goto L2
L3:
iconst_1
ireturn
.limit locals 3
.limit stack 2
.end method
