.bytecode 50.0
.class public final synchronized com/alibaba/fastjson/util/IdentityHashMap$Entry
.super java/lang/Object
.signature "<K:Ljava/lang/Object;V:Ljava/lang/Object;>Ljava/lang/Object;"
.inner class protected static final Entry inner com/alibaba/fastjson/util/IdentityHashMap$Entry outer com/alibaba/fastjson/util/IdentityHashMap

.field public final 'hashCode' I

.field public final 'key' Ljava/lang/Object; signature "TK;"

.field public final 'next' Lcom/alibaba/fastjson/util/IdentityHashMap$Entry; signature "Lcom/alibaba/fastjson/util/IdentityHashMap$Entry<TK;TV;>;"

.field public 'value' Ljava/lang/Object; signature "TV;"

.method public <init>(Ljava/lang/Object;Ljava/lang/Object;ILcom/alibaba/fastjson/util/IdentityHashMap$Entry;)V
.signature "(TK;TV;ILcom/alibaba/fastjson/util/IdentityHashMap$Entry<TK;TV;>;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/alibaba/fastjson/util/IdentityHashMap$Entry/key Ljava/lang/Object;
aload 0
aload 2
putfield com/alibaba/fastjson/util/IdentityHashMap$Entry/value Ljava/lang/Object;
aload 0
aload 4
putfield com/alibaba/fastjson/util/IdentityHashMap$Entry/next Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;
aload 0
iload 3
putfield com/alibaba/fastjson/util/IdentityHashMap$Entry/hashCode I
return
.limit locals 5
.limit stack 2
.end method
