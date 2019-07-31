.bytecode 50.0
.class public synchronized com/alibaba/fastjson/util/IdentityHashMap
.super java/lang/Object
.signature "<K:Ljava/lang/Object;V:Ljava/lang/Object;>Ljava/lang/Object;"
.inner class protected static final Entry inner com/alibaba/fastjson/util/IdentityHashMap$Entry outer com/alibaba/fastjson/util/IdentityHashMap

.field public static final 'DEFAULT_TABLE_SIZE' I = 1024


.field private final 'buckets' [Lcom/alibaba/fastjson/util/IdentityHashMap$Entry; signature "[Lcom/alibaba/fastjson/util/IdentityHashMap$Entry<TK;TV;>;"

.field private final 'indexMask' I

.method public <init>()V
aload 0
sipush 1024
invokespecial com/alibaba/fastjson/util/IdentityHashMap/<init>(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public <init>(I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 1
iconst_1
isub
putfield com/alibaba/fastjson/util/IdentityHashMap/indexMask I
aload 0
iload 1
anewarray com/alibaba/fastjson/util/IdentityHashMap$Entry
putfield com/alibaba/fastjson/util/IdentityHashMap/buckets [Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;
return
.limit locals 2
.limit stack 3
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
.signature "(TK;)TV;"
aload 1
invokestatic java/lang/System/identityHashCode(Ljava/lang/Object;)I
istore 2
aload 0
getfield com/alibaba/fastjson/util/IdentityHashMap/indexMask I
istore 3
aload 0
getfield com/alibaba/fastjson/util/IdentityHashMap/buckets [Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;
iload 2
iload 3
iand
aaload
astore 4
L0:
aload 4
ifnull L1
aload 1
aload 4
getfield com/alibaba/fastjson/util/IdentityHashMap$Entry/key Ljava/lang/Object;
if_acmpne L2
aload 4
getfield com/alibaba/fastjson/util/IdentityHashMap$Entry/value Ljava/lang/Object;
areturn
L2:
aload 4
getfield com/alibaba/fastjson/util/IdentityHashMap$Entry/next Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;
astore 4
goto L0
L1:
aconst_null
areturn
.limit locals 5
.limit stack 3
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
.signature "(TK;TV;)Z"
aload 1
invokestatic java/lang/System/identityHashCode(Ljava/lang/Object;)I
istore 3
iload 3
aload 0
getfield com/alibaba/fastjson/util/IdentityHashMap/indexMask I
iand
istore 4
aload 0
getfield com/alibaba/fastjson/util/IdentityHashMap/buckets [Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;
iload 4
aaload
astore 5
L0:
aload 5
ifnull L1
aload 1
aload 5
getfield com/alibaba/fastjson/util/IdentityHashMap$Entry/key Ljava/lang/Object;
if_acmpne L2
aload 5
aload 2
putfield com/alibaba/fastjson/util/IdentityHashMap$Entry/value Ljava/lang/Object;
iconst_1
ireturn
L2:
aload 5
getfield com/alibaba/fastjson/util/IdentityHashMap$Entry/next Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;
astore 5
goto L0
L1:
new com/alibaba/fastjson/util/IdentityHashMap$Entry
dup
aload 1
aload 2
iload 3
aload 0
getfield com/alibaba/fastjson/util/IdentityHashMap/buckets [Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;
iload 4
aaload
invokespecial com/alibaba/fastjson/util/IdentityHashMap$Entry/<init>(Ljava/lang/Object;Ljava/lang/Object;ILcom/alibaba/fastjson/util/IdentityHashMap$Entry;)V
astore 1
aload 0
getfield com/alibaba/fastjson/util/IdentityHashMap/buckets [Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;
iload 4
aload 1
aastore
iconst_0
ireturn
.limit locals 6
.limit stack 7
.end method

.method public size()I
iconst_0
istore 2
iconst_0
istore 1
L0:
iload 1
aload 0
getfield com/alibaba/fastjson/util/IdentityHashMap/buckets [Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;
arraylength
if_icmpge L1
aload 0
getfield com/alibaba/fastjson/util/IdentityHashMap/buckets [Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;
iload 1
aaload
astore 3
L2:
aload 3
ifnull L3
iload 2
iconst_1
iadd
istore 2
aload 3
getfield com/alibaba/fastjson/util/IdentityHashMap$Entry/next Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;
astore 3
goto L2
L3:
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
iload 2
ireturn
.limit locals 4
.limit stack 2
.end method
