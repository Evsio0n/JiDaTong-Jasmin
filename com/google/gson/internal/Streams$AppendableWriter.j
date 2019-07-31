.bytecode 50.0
.class final synchronized com/google/gson/internal/Streams$AppendableWriter
.super java/io/Writer
.inner class private static final AppendableWriter inner com/google/gson/internal/Streams$AppendableWriter outer com/google/gson/internal/Streams
.inner class static CurrentWrite inner com/google/gson/internal/Streams$AppendableWriter$CurrentWrite outer com/google/gson/internal/Streams$AppendableWriter

.field private final 'appendable' Ljava/lang/Appendable;

.field private final 'currentWrite' Lcom/google/gson/internal/Streams$AppendableWriter$CurrentWrite;

.method private <init>(Ljava/lang/Appendable;)V
aload 0
invokespecial java/io/Writer/<init>()V
aload 0
new com/google/gson/internal/Streams$AppendableWriter$CurrentWrite
dup
invokespecial com/google/gson/internal/Streams$AppendableWriter$CurrentWrite/<init>()V
putfield com/google/gson/internal/Streams$AppendableWriter/currentWrite Lcom/google/gson/internal/Streams$AppendableWriter$CurrentWrite;
aload 0
aload 1
putfield com/google/gson/internal/Streams$AppendableWriter/appendable Ljava/lang/Appendable;
return
.limit locals 2
.limit stack 3
.end method

.method synthetic <init>(Ljava/lang/Appendable;Lcom/google/gson/internal/Streams$1;)V
aload 0
aload 1
invokespecial com/google/gson/internal/Streams$AppendableWriter/<init>(Ljava/lang/Appendable;)V
return
.limit locals 3
.limit stack 2
.end method

.method public close()V
return
.limit locals 1
.limit stack 0
.end method

.method public flush()V
return
.limit locals 1
.limit stack 0
.end method

.method public write(I)V
.throws java/io/IOException
aload 0
getfield com/google/gson/internal/Streams$AppendableWriter/appendable Ljava/lang/Appendable;
iload 1
i2c
invokeinterface java/lang/Appendable/append(C)Ljava/lang/Appendable; 1
pop
return
.limit locals 2
.limit stack 2
.end method

.method public write([CII)V
.throws java/io/IOException
aload 0
getfield com/google/gson/internal/Streams$AppendableWriter/currentWrite Lcom/google/gson/internal/Streams$AppendableWriter$CurrentWrite;
aload 1
putfield com/google/gson/internal/Streams$AppendableWriter$CurrentWrite/chars [C
aload 0
getfield com/google/gson/internal/Streams$AppendableWriter/appendable Ljava/lang/Appendable;
aload 0
getfield com/google/gson/internal/Streams$AppendableWriter/currentWrite Lcom/google/gson/internal/Streams$AppendableWriter$CurrentWrite;
iload 2
iload 2
iload 3
iadd
invokeinterface java/lang/Appendable/append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable; 3
pop
return
.limit locals 4
.limit stack 5
.end method
