.bytecode 50.0
.class final synchronized com/flurry/android/i
.super java/lang/Object

.field private 'a' I

.field private 'b' Ljava/lang/String;

.field private 'c' Ljava/util/Map;

.field private 'd' J

.field private 'e' Z

.field private 'f' J

.method public <init>(Ljava/lang/String;Ljava/util/Map;JZ)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
invokestatic com/flurry/android/FlurryAgent/f()I
putfield com/flurry/android/i/a I
aload 0
aload 1
putfield com/flurry/android/i/b Ljava/lang/String;
aload 0
aload 2
putfield com/flurry/android/i/c Ljava/util/Map;
aload 0
lload 3
putfield com/flurry/android/i/d J
aload 0
iload 5
putfield com/flurry/android/i/e Z
return
.limit locals 6
.limit stack 3
.end method

.method public final a(J)V
aload 0
lload 1
aload 0
getfield com/flurry/android/i/d J
lsub
putfield com/flurry/android/i/f J
ldc "FlurryAgent"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Ended event '"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/flurry/android/i/b Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "' ("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/flurry/android/i/d J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ") after "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/flurry/android/i/f J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "ms"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/flurry/android/ai/a(Ljava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 3
.limit stack 5
.end method

.method public final a(Ljava/lang/String;)Z
aload 0
getfield com/flurry/android/i/e Z
ifeq L0
aload 0
getfield com/flurry/android/i/f J
lconst_0
lcmp
ifne L0
aload 0
getfield com/flurry/android/i/b Ljava/lang/String;
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 4
.end method

.method public final a()[B
.catch java/io/IOException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/io/IOException from L1 to L4 using L5
.catch all from L1 to L4 using L6
.catch java/io/IOException from L4 to L7 using L5
.catch all from L4 to L7 using L6
.catch java/io/IOException from L8 to L9 using L5
.catch all from L8 to L9 using L6
.catch java/io/IOException from L9 to L10 using L5
.catch all from L9 to L10 using L6
L0:
new java/io/ByteArrayOutputStream
dup
invokespecial java/io/ByteArrayOutputStream/<init>()V
astore 2
new java/io/DataOutputStream
dup
aload 2
invokespecial java/io/DataOutputStream/<init>(Ljava/io/OutputStream;)V
astore 1
L1:
aload 1
aload 0
getfield com/flurry/android/i/a I
invokevirtual java/io/DataOutputStream/writeShort(I)V
aload 1
aload 0
getfield com/flurry/android/i/b Ljava/lang/String;
invokevirtual java/io/DataOutputStream/writeUTF(Ljava/lang/String;)V
aload 0
getfield com/flurry/android/i/c Ljava/util/Map;
ifnonnull L8
aload 1
iconst_0
invokevirtual java/io/DataOutputStream/writeShort(I)V
L4:
aload 1
aload 0
getfield com/flurry/android/i/d J
invokevirtual java/io/DataOutputStream/writeLong(J)V
aload 1
aload 0
getfield com/flurry/android/i/f J
invokevirtual java/io/DataOutputStream/writeLong(J)V
aload 1
invokevirtual java/io/DataOutputStream/flush()V
aload 2
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
astore 2
L7:
aload 1
invokestatic com/flurry/android/r/a(Ljava/io/Closeable;)V
aload 2
areturn
L8:
aload 1
aload 0
getfield com/flurry/android/i/c Ljava/util/Map;
invokeinterface java/util/Map/size()I 0
invokevirtual java/io/DataOutputStream/writeShort(I)V
aload 0
getfield com/flurry/android/i/c Ljava/util/Map;
invokeinterface java/util/Map/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 3
L9:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 4
aload 1
aload 4
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast java/lang/String
sipush 255
invokestatic com/flurry/android/r/a(Ljava/lang/String;I)Ljava/lang/String;
invokevirtual java/io/DataOutputStream/writeUTF(Ljava/lang/String;)V
aload 1
aload 4
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast java/lang/String
sipush 255
invokestatic com/flurry/android/r/a(Ljava/lang/String;I)Ljava/lang/String;
invokevirtual java/io/DataOutputStream/writeUTF(Ljava/lang/String;)V
L10:
goto L9
L5:
astore 2
L11:
aload 1
invokestatic com/flurry/android/r/a(Ljava/io/Closeable;)V
iconst_0
newarray byte
areturn
L3:
astore 1
aconst_null
astore 3
aload 1
astore 2
L12:
aload 3
invokestatic com/flurry/android/r/a(Ljava/io/Closeable;)V
aload 2
athrow
L6:
astore 2
aload 1
astore 3
goto L12
astore 1
goto L12
L2:
astore 1
aconst_null
astore 1
goto L11
.limit locals 5
.limit stack 3
.end method
