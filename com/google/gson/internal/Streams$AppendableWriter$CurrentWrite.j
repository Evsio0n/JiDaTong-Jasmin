.bytecode 50.0
.class synchronized com/google/gson/internal/Streams$AppendableWriter$CurrentWrite
.super java/lang/Object
.implements java/lang/CharSequence
.inner class private static final AppendableWriter inner com/google/gson/internal/Streams$AppendableWriter outer com/google/gson/internal/Streams
.inner class static CurrentWrite inner com/google/gson/internal/Streams$AppendableWriter$CurrentWrite outer com/google/gson/internal/Streams$AppendableWriter

.field 'chars' [C

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public charAt(I)C
aload 0
getfield com/google/gson/internal/Streams$AppendableWriter$CurrentWrite/chars [C
iload 1
caload
ireturn
.limit locals 2
.limit stack 2
.end method

.method public length()I
aload 0
getfield com/google/gson/internal/Streams$AppendableWriter$CurrentWrite/chars [C
arraylength
ireturn
.limit locals 1
.limit stack 1
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
new java/lang/String
dup
aload 0
getfield com/google/gson/internal/Streams$AppendableWriter$CurrentWrite/chars [C
iload 1
iload 2
iload 1
isub
invokespecial java/lang/String/<init>([CII)V
areturn
.limit locals 3
.limit stack 6
.end method
