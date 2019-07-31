.bytecode 50.0
.class public synchronized com/bestpay/util/Tools
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static string2Map(Ljava/lang/String;)Ljava/util/Hashtable;
.signature "(Ljava/lang/String;)Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
new java/util/Hashtable
dup
invokespecial java/util/Hashtable/<init>()V
astore 3
aload 0
ldc "&"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 0
aload 0
arraylength
istore 2
iconst_0
istore 1
L0:
iload 1
iload 2
if_icmplt L1
aload 3
areturn
L1:
aload 0
iload 1
aaload
ldc "="
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 4
aload 4
arraylength
iconst_2
if_icmpne L2
aload 3
aload 4
iconst_0
aaload
aload 4
iconst_1
aaload
invokevirtual java/util/Hashtable/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
L3:
iload 1
iconst_1
iadd
istore 1
goto L0
L2:
aload 3
aload 4
iconst_0
aaload
ldc ""
invokevirtual java/util/Hashtable/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
goto L3
.limit locals 5
.limit stack 4
.end method
