.bytecode 50.0
.class final synchronized com/google/gson/stream/JsonReader$1
.super com/google/gson/internal/JsonReaderInternalAccess
.enclosing method com/google/gson/stream/JsonReader
.inner class static final inner com/google/gson/stream/JsonReader$1

.method <init>()V
aload 0
invokespecial com/google/gson/internal/JsonReaderInternalAccess/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public promoteNameToValue(Lcom/google/gson/stream/JsonReader;)V
.throws java/io/IOException
aload 1
instanceof com/google/gson/internal/bind/JsonTreeReader
ifeq L0
aload 1
checkcast com/google/gson/internal/bind/JsonTreeReader
invokevirtual com/google/gson/internal/bind/JsonTreeReader/promoteNameToValue()V
return
L0:
aload 1
invokestatic com/google/gson/stream/JsonReader/access$000(Lcom/google/gson/stream/JsonReader;)I
istore 3
iload 3
istore 2
iload 3
ifne L1
aload 1
invokestatic com/google/gson/stream/JsonReader/access$100(Lcom/google/gson/stream/JsonReader;)I
istore 2
L1:
iload 2
bipush 13
if_icmpne L2
aload 1
bipush 9
invokestatic com/google/gson/stream/JsonReader/access$002(Lcom/google/gson/stream/JsonReader;I)I
pop
return
L2:
iload 2
bipush 12
if_icmpne L3
aload 1
bipush 8
invokestatic com/google/gson/stream/JsonReader/access$002(Lcom/google/gson/stream/JsonReader;I)I
pop
return
L3:
iload 2
bipush 14
if_icmpne L4
aload 1
bipush 10
invokestatic com/google/gson/stream/JsonReader/access$002(Lcom/google/gson/stream/JsonReader;I)I
pop
return
L4:
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Expected a name but was "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/google/gson/stream/JsonReader/peek()Lcom/google/gson/stream/JsonToken;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " at line "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokestatic com/google/gson/stream/JsonReader/access$200(Lcom/google/gson/stream/JsonReader;)I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " column "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokestatic com/google/gson/stream/JsonReader/access$300(Lcom/google/gson/stream/JsonReader;)I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
.limit locals 4
.limit stack 4
.end method
