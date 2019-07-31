.bytecode 50.0
.class public synchronized com/google/gson/stream/JsonWriter
.super java/lang/Object
.implements java/io/Closeable
.implements java/io/Flushable

.field private static final 'HTML_SAFE_REPLACEMENT_CHARS' [Ljava/lang/String;

.field private static final 'REPLACEMENT_CHARS' [Ljava/lang/String;

.field private 'deferredName' Ljava/lang/String;

.field private 'htmlSafe' Z

.field private 'indent' Ljava/lang/String;

.field private 'lenient' Z

.field private final 'out' Ljava/io/Writer;

.field private 'separator' Ljava/lang/String;

.field private 'serializeNulls' Z

.field private 'stack' [I

.field private 'stackSize' I

.method static <clinit>()V
sipush 128
anewarray java/lang/String
putstatic com/google/gson/stream/JsonWriter/REPLACEMENT_CHARS [Ljava/lang/String;
iconst_0
istore 0
L0:
iload 0
bipush 31
if_icmpgt L1
getstatic com/google/gson/stream/JsonWriter/REPLACEMENT_CHARS [Ljava/lang/String;
iload 0
ldc "\\u%04x"
iconst_1
anewarray java/lang/Object
dup
iconst_0
iload 0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
aastore
iload 0
iconst_1
iadd
istore 0
goto L0
L1:
getstatic com/google/gson/stream/JsonWriter/REPLACEMENT_CHARS [Ljava/lang/String;
bipush 34
ldc "\\\""
aastore
getstatic com/google/gson/stream/JsonWriter/REPLACEMENT_CHARS [Ljava/lang/String;
bipush 92
ldc "\\\\"
aastore
getstatic com/google/gson/stream/JsonWriter/REPLACEMENT_CHARS [Ljava/lang/String;
bipush 9
ldc "\\t"
aastore
getstatic com/google/gson/stream/JsonWriter/REPLACEMENT_CHARS [Ljava/lang/String;
bipush 8
ldc "\\b"
aastore
getstatic com/google/gson/stream/JsonWriter/REPLACEMENT_CHARS [Ljava/lang/String;
bipush 10
ldc "\\n"
aastore
getstatic com/google/gson/stream/JsonWriter/REPLACEMENT_CHARS [Ljava/lang/String;
bipush 13
ldc "\\r"
aastore
getstatic com/google/gson/stream/JsonWriter/REPLACEMENT_CHARS [Ljava/lang/String;
bipush 12
ldc "\\f"
aastore
getstatic com/google/gson/stream/JsonWriter/REPLACEMENT_CHARS [Ljava/lang/String;
invokevirtual [Ljava/lang/String;/clone()Ljava/lang/Object;
checkcast [Ljava/lang/String;
putstatic com/google/gson/stream/JsonWriter/HTML_SAFE_REPLACEMENT_CHARS [Ljava/lang/String;
getstatic com/google/gson/stream/JsonWriter/HTML_SAFE_REPLACEMENT_CHARS [Ljava/lang/String;
bipush 60
ldc "\\u003c"
aastore
getstatic com/google/gson/stream/JsonWriter/HTML_SAFE_REPLACEMENT_CHARS [Ljava/lang/String;
bipush 62
ldc "\\u003e"
aastore
getstatic com/google/gson/stream/JsonWriter/HTML_SAFE_REPLACEMENT_CHARS [Ljava/lang/String;
bipush 38
ldc "\\u0026"
aastore
getstatic com/google/gson/stream/JsonWriter/HTML_SAFE_REPLACEMENT_CHARS [Ljava/lang/String;
bipush 61
ldc "\\u003d"
aastore
getstatic com/google/gson/stream/JsonWriter/HTML_SAFE_REPLACEMENT_CHARS [Ljava/lang/String;
bipush 39
ldc "\\u0027"
aastore
return
.limit locals 1
.limit stack 7
.end method

.method public <init>(Ljava/io/Writer;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
bipush 32
newarray int
putfield com/google/gson/stream/JsonWriter/stack [I
aload 0
iconst_0
putfield com/google/gson/stream/JsonWriter/stackSize I
aload 0
bipush 6
invokespecial com/google/gson/stream/JsonWriter/push(I)V
aload 0
ldc ":"
putfield com/google/gson/stream/JsonWriter/separator Ljava/lang/String;
aload 0
iconst_1
putfield com/google/gson/stream/JsonWriter/serializeNulls Z
aload 1
ifnonnull L0
new java/lang/NullPointerException
dup
ldc "out == null"
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
aload 1
putfield com/google/gson/stream/JsonWriter/out Ljava/io/Writer;
return
.limit locals 2
.limit stack 3
.end method

.method private beforeName()V
.throws java/io/IOException
aload 0
invokespecial com/google/gson/stream/JsonWriter/peek()I
istore 1
iload 1
iconst_5
if_icmpne L0
aload 0
getfield com/google/gson/stream/JsonWriter/out Ljava/io/Writer;
bipush 44
invokevirtual java/io/Writer/write(I)V
L1:
aload 0
invokespecial com/google/gson/stream/JsonWriter/newline()V
aload 0
iconst_4
invokespecial com/google/gson/stream/JsonWriter/replaceTop(I)V
return
L0:
iload 1
iconst_3
if_icmpeq L1
new java/lang/IllegalStateException
dup
ldc "Nesting problem."
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
.limit locals 2
.limit stack 3
.end method

.method private beforeValue(Z)V
.throws java/io/IOException
aload 0
invokespecial com/google/gson/stream/JsonWriter/peek()I
tableswitch 1
L0
L1
L2
L3
L2
L4
L5
default : L2
L2:
new java/lang/IllegalStateException
dup
ldc "Nesting problem."
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L5:
aload 0
getfield com/google/gson/stream/JsonWriter/lenient Z
ifne L4
new java/lang/IllegalStateException
dup
ldc "JSON must have only one top-level value."
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L4:
aload 0
getfield com/google/gson/stream/JsonWriter/lenient Z
ifne L6
iload 1
ifne L6
new java/lang/IllegalStateException
dup
ldc "JSON must start with an array or an object."
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L6:
aload 0
bipush 7
invokespecial com/google/gson/stream/JsonWriter/replaceTop(I)V
return
L0:
aload 0
iconst_2
invokespecial com/google/gson/stream/JsonWriter/replaceTop(I)V
aload 0
invokespecial com/google/gson/stream/JsonWriter/newline()V
return
L1:
aload 0
getfield com/google/gson/stream/JsonWriter/out Ljava/io/Writer;
bipush 44
invokevirtual java/io/Writer/append(C)Ljava/io/Writer;
pop
aload 0
invokespecial com/google/gson/stream/JsonWriter/newline()V
return
L3:
aload 0
getfield com/google/gson/stream/JsonWriter/out Ljava/io/Writer;
aload 0
getfield com/google/gson/stream/JsonWriter/separator Ljava/lang/String;
invokevirtual java/io/Writer/append(Ljava/lang/CharSequence;)Ljava/io/Writer;
pop
aload 0
iconst_5
invokespecial com/google/gson/stream/JsonWriter/replaceTop(I)V
return
.limit locals 2
.limit stack 3
.end method

.method private close(IILjava/lang/String;)Lcom/google/gson/stream/JsonWriter;
.throws java/io/IOException
aload 0
invokespecial com/google/gson/stream/JsonWriter/peek()I
istore 4
iload 4
iload 2
if_icmpeq L0
iload 4
iload 1
if_icmpeq L0
new java/lang/IllegalStateException
dup
ldc "Nesting problem."
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield com/google/gson/stream/JsonWriter/deferredName Ljava/lang/String;
ifnull L1
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Dangling name: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/google/gson/stream/JsonWriter/deferredName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
aload 0
getfield com/google/gson/stream/JsonWriter/stackSize I
iconst_1
isub
putfield com/google/gson/stream/JsonWriter/stackSize I
iload 4
iload 2
if_icmpne L2
aload 0
invokespecial com/google/gson/stream/JsonWriter/newline()V
L2:
aload 0
getfield com/google/gson/stream/JsonWriter/out Ljava/io/Writer;
aload 3
invokevirtual java/io/Writer/write(Ljava/lang/String;)V
aload 0
areturn
.limit locals 5
.limit stack 4
.end method

.method private newline()V
.throws java/io/IOException
aload 0
getfield com/google/gson/stream/JsonWriter/indent Ljava/lang/String;
ifnonnull L0
L1:
return
L0:
aload 0
getfield com/google/gson/stream/JsonWriter/out Ljava/io/Writer;
ldc "\n"
invokevirtual java/io/Writer/write(Ljava/lang/String;)V
iconst_1
istore 1
aload 0
getfield com/google/gson/stream/JsonWriter/stackSize I
istore 2
L2:
iload 1
iload 2
if_icmpge L1
aload 0
getfield com/google/gson/stream/JsonWriter/out Ljava/io/Writer;
aload 0
getfield com/google/gson/stream/JsonWriter/indent Ljava/lang/String;
invokevirtual java/io/Writer/write(Ljava/lang/String;)V
iload 1
iconst_1
iadd
istore 1
goto L2
.limit locals 3
.limit stack 2
.end method

.method private open(ILjava/lang/String;)Lcom/google/gson/stream/JsonWriter;
.throws java/io/IOException
aload 0
iconst_1
invokespecial com/google/gson/stream/JsonWriter/beforeValue(Z)V
aload 0
iload 1
invokespecial com/google/gson/stream/JsonWriter/push(I)V
aload 0
getfield com/google/gson/stream/JsonWriter/out Ljava/io/Writer;
aload 2
invokevirtual java/io/Writer/write(Ljava/lang/String;)V
aload 0
areturn
.limit locals 3
.limit stack 2
.end method

.method private peek()I
aload 0
getfield com/google/gson/stream/JsonWriter/stackSize I
ifne L0
new java/lang/IllegalStateException
dup
ldc "JsonWriter is closed."
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield com/google/gson/stream/JsonWriter/stack [I
aload 0
getfield com/google/gson/stream/JsonWriter/stackSize I
iconst_1
isub
iaload
ireturn
.limit locals 1
.limit stack 3
.end method

.method private push(I)V
aload 0
getfield com/google/gson/stream/JsonWriter/stackSize I
aload 0
getfield com/google/gson/stream/JsonWriter/stack [I
arraylength
if_icmpne L0
aload 0
getfield com/google/gson/stream/JsonWriter/stackSize I
iconst_2
imul
newarray int
astore 3
aload 0
getfield com/google/gson/stream/JsonWriter/stack [I
iconst_0
aload 3
iconst_0
aload 0
getfield com/google/gson/stream/JsonWriter/stackSize I
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
aload 3
putfield com/google/gson/stream/JsonWriter/stack [I
L0:
aload 0
getfield com/google/gson/stream/JsonWriter/stack [I
astore 3
aload 0
getfield com/google/gson/stream/JsonWriter/stackSize I
istore 2
aload 0
iload 2
iconst_1
iadd
putfield com/google/gson/stream/JsonWriter/stackSize I
aload 3
iload 2
iload 1
iastore
return
.limit locals 4
.limit stack 5
.end method

.method private replaceTop(I)V
aload 0
getfield com/google/gson/stream/JsonWriter/stack [I
aload 0
getfield com/google/gson/stream/JsonWriter/stackSize I
iconst_1
isub
iload 1
iastore
return
.limit locals 2
.limit stack 3
.end method

.method private string(Ljava/lang/String;)V
.throws java/io/IOException
aload 0
getfield com/google/gson/stream/JsonWriter/htmlSafe Z
ifeq L0
getstatic com/google/gson/stream/JsonWriter/HTML_SAFE_REPLACEMENT_CHARS [Ljava/lang/String;
astore 8
L1:
aload 0
getfield com/google/gson/stream/JsonWriter/out Ljava/io/Writer;
ldc "\""
invokevirtual java/io/Writer/write(Ljava/lang/String;)V
iconst_0
istore 3
aload 1
invokevirtual java/lang/String/length()I
istore 5
iconst_0
istore 2
L2:
iload 2
iload 5
if_icmpge L3
aload 1
iload 2
invokevirtual java/lang/String/charAt(I)C
istore 6
iload 6
sipush 128
if_icmpge L4
aload 8
iload 6
aaload
astore 9
aload 9
astore 7
aload 9
ifnonnull L5
iload 3
istore 4
L6:
iload 2
iconst_1
iadd
istore 2
iload 4
istore 3
goto L2
L0:
getstatic com/google/gson/stream/JsonWriter/REPLACEMENT_CHARS [Ljava/lang/String;
astore 8
goto L1
L4:
iload 6
sipush 8232
if_icmpne L7
ldc "\\u2028"
astore 7
L5:
iload 3
iload 2
if_icmpge L8
aload 0
getfield com/google/gson/stream/JsonWriter/out Ljava/io/Writer;
aload 1
iload 3
iload 2
iload 3
isub
invokevirtual java/io/Writer/write(Ljava/lang/String;II)V
L8:
aload 0
getfield com/google/gson/stream/JsonWriter/out Ljava/io/Writer;
aload 7
invokevirtual java/io/Writer/write(Ljava/lang/String;)V
iload 2
iconst_1
iadd
istore 4
goto L6
L7:
iload 3
istore 4
iload 6
sipush 8233
if_icmpne L6
ldc "\\u2029"
astore 7
goto L5
L3:
iload 3
iload 5
if_icmpge L9
aload 0
getfield com/google/gson/stream/JsonWriter/out Ljava/io/Writer;
aload 1
iload 3
iload 5
iload 3
isub
invokevirtual java/io/Writer/write(Ljava/lang/String;II)V
L9:
aload 0
getfield com/google/gson/stream/JsonWriter/out Ljava/io/Writer;
ldc "\""
invokevirtual java/io/Writer/write(Ljava/lang/String;)V
return
.limit locals 10
.limit stack 5
.end method

.method private writeDeferredName()V
.throws java/io/IOException
aload 0
getfield com/google/gson/stream/JsonWriter/deferredName Ljava/lang/String;
ifnull L0
aload 0
invokespecial com/google/gson/stream/JsonWriter/beforeName()V
aload 0
aload 0
getfield com/google/gson/stream/JsonWriter/deferredName Ljava/lang/String;
invokespecial com/google/gson/stream/JsonWriter/string(Ljava/lang/String;)V
aload 0
aconst_null
putfield com/google/gson/stream/JsonWriter/deferredName Ljava/lang/String;
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public beginArray()Lcom/google/gson/stream/JsonWriter;
.throws java/io/IOException
aload 0
invokespecial com/google/gson/stream/JsonWriter/writeDeferredName()V
aload 0
iconst_1
ldc "["
invokespecial com/google/gson/stream/JsonWriter/open(ILjava/lang/String;)Lcom/google/gson/stream/JsonWriter;
areturn
.limit locals 1
.limit stack 3
.end method

.method public beginObject()Lcom/google/gson/stream/JsonWriter;
.throws java/io/IOException
aload 0
invokespecial com/google/gson/stream/JsonWriter/writeDeferredName()V
aload 0
iconst_3
ldc "{"
invokespecial com/google/gson/stream/JsonWriter/open(ILjava/lang/String;)Lcom/google/gson/stream/JsonWriter;
areturn
.limit locals 1
.limit stack 3
.end method

.method public close()V
.throws java/io/IOException
aload 0
getfield com/google/gson/stream/JsonWriter/out Ljava/io/Writer;
invokevirtual java/io/Writer/close()V
aload 0
getfield com/google/gson/stream/JsonWriter/stackSize I
istore 1
iload 1
iconst_1
if_icmpgt L0
iload 1
iconst_1
if_icmpne L1
aload 0
getfield com/google/gson/stream/JsonWriter/stack [I
iload 1
iconst_1
isub
iaload
bipush 7
if_icmpeq L1
L0:
new java/io/IOException
dup
ldc "Incomplete document"
invokespecial java/io/IOException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
iconst_0
putfield com/google/gson/stream/JsonWriter/stackSize I
return
.limit locals 2
.limit stack 3
.end method

.method public endArray()Lcom/google/gson/stream/JsonWriter;
.throws java/io/IOException
aload 0
iconst_1
iconst_2
ldc "]"
invokespecial com/google/gson/stream/JsonWriter/close(IILjava/lang/String;)Lcom/google/gson/stream/JsonWriter;
areturn
.limit locals 1
.limit stack 4
.end method

.method public endObject()Lcom/google/gson/stream/JsonWriter;
.throws java/io/IOException
aload 0
iconst_3
iconst_5
ldc "}"
invokespecial com/google/gson/stream/JsonWriter/close(IILjava/lang/String;)Lcom/google/gson/stream/JsonWriter;
areturn
.limit locals 1
.limit stack 4
.end method

.method public flush()V
.throws java/io/IOException
aload 0
getfield com/google/gson/stream/JsonWriter/stackSize I
ifne L0
new java/lang/IllegalStateException
dup
ldc "JsonWriter is closed."
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield com/google/gson/stream/JsonWriter/out Ljava/io/Writer;
invokevirtual java/io/Writer/flush()V
return
.limit locals 1
.limit stack 3
.end method

.method public final getSerializeNulls()Z
aload 0
getfield com/google/gson/stream/JsonWriter/serializeNulls Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final isHtmlSafe()Z
aload 0
getfield com/google/gson/stream/JsonWriter/htmlSafe Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isLenient()Z
aload 0
getfield com/google/gson/stream/JsonWriter/lenient Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
.throws java/io/IOException
aload 1
ifnonnull L0
new java/lang/NullPointerException
dup
ldc "name == null"
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield com/google/gson/stream/JsonWriter/deferredName Ljava/lang/String;
ifnull L1
new java/lang/IllegalStateException
dup
invokespecial java/lang/IllegalStateException/<init>()V
athrow
L1:
aload 0
getfield com/google/gson/stream/JsonWriter/stackSize I
ifne L2
new java/lang/IllegalStateException
dup
ldc "JsonWriter is closed."
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L2:
aload 0
aload 1
putfield com/google/gson/stream/JsonWriter/deferredName Ljava/lang/String;
aload 0
areturn
.limit locals 2
.limit stack 3
.end method

.method public nullValue()Lcom/google/gson/stream/JsonWriter;
.throws java/io/IOException
aload 0
getfield com/google/gson/stream/JsonWriter/deferredName Ljava/lang/String;
ifnull L0
aload 0
getfield com/google/gson/stream/JsonWriter/serializeNulls Z
ifeq L1
aload 0
invokespecial com/google/gson/stream/JsonWriter/writeDeferredName()V
L0:
aload 0
iconst_0
invokespecial com/google/gson/stream/JsonWriter/beforeValue(Z)V
aload 0
getfield com/google/gson/stream/JsonWriter/out Ljava/io/Writer;
ldc "null"
invokevirtual java/io/Writer/write(Ljava/lang/String;)V
aload 0
areturn
L1:
aload 0
aconst_null
putfield com/google/gson/stream/JsonWriter/deferredName Ljava/lang/String;
aload 0
areturn
.limit locals 1
.limit stack 2
.end method

.method public final setHtmlSafe(Z)V
aload 0
iload 1
putfield com/google/gson/stream/JsonWriter/htmlSafe Z
return
.limit locals 2
.limit stack 2
.end method

.method public final setIndent(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/String/length()I
ifne L0
aload 0
aconst_null
putfield com/google/gson/stream/JsonWriter/indent Ljava/lang/String;
aload 0
ldc ":"
putfield com/google/gson/stream/JsonWriter/separator Ljava/lang/String;
return
L0:
aload 0
aload 1
putfield com/google/gson/stream/JsonWriter/indent Ljava/lang/String;
aload 0
ldc ": "
putfield com/google/gson/stream/JsonWriter/separator Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public final setLenient(Z)V
aload 0
iload 1
putfield com/google/gson/stream/JsonWriter/lenient Z
return
.limit locals 2
.limit stack 2
.end method

.method public final setSerializeNulls(Z)V
aload 0
iload 1
putfield com/google/gson/stream/JsonWriter/serializeNulls Z
return
.limit locals 2
.limit stack 2
.end method

.method public value(D)Lcom/google/gson/stream/JsonWriter;
.throws java/io/IOException
dload 1
invokestatic java/lang/Double/isNaN(D)Z
ifne L0
dload 1
invokestatic java/lang/Double/isInfinite(D)Z
ifeq L1
L0:
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Numeric values must be finite, but was "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
dload 1
invokevirtual java/lang/StringBuilder/append(D)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
invokespecial com/google/gson/stream/JsonWriter/writeDeferredName()V
aload 0
iconst_0
invokespecial com/google/gson/stream/JsonWriter/beforeValue(Z)V
aload 0
getfield com/google/gson/stream/JsonWriter/out Ljava/io/Writer;
dload 1
invokestatic java/lang/Double/toString(D)Ljava/lang/String;
invokevirtual java/io/Writer/append(Ljava/lang/CharSequence;)Ljava/io/Writer;
pop
aload 0
areturn
.limit locals 3
.limit stack 5
.end method

.method public value(J)Lcom/google/gson/stream/JsonWriter;
.throws java/io/IOException
aload 0
invokespecial com/google/gson/stream/JsonWriter/writeDeferredName()V
aload 0
iconst_0
invokespecial com/google/gson/stream/JsonWriter/beforeValue(Z)V
aload 0
getfield com/google/gson/stream/JsonWriter/out Ljava/io/Writer;
lload 1
invokestatic java/lang/Long/toString(J)Ljava/lang/String;
invokevirtual java/io/Writer/write(Ljava/lang/String;)V
aload 0
areturn
.limit locals 3
.limit stack 3
.end method

.method public value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;
.throws java/io/IOException
aload 1
ifnonnull L0
aload 0
invokevirtual com/google/gson/stream/JsonWriter/nullValue()Lcom/google/gson/stream/JsonWriter;
areturn
L0:
aload 0
invokespecial com/google/gson/stream/JsonWriter/writeDeferredName()V
aload 1
invokevirtual java/lang/Object/toString()Ljava/lang/String;
astore 2
aload 0
getfield com/google/gson/stream/JsonWriter/lenient Z
ifne L1
aload 2
ldc "-Infinity"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L2
aload 2
ldc "Infinity"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L2
aload 2
ldc "NaN"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L2:
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Numeric values must be finite, but was "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
iconst_0
invokespecial com/google/gson/stream/JsonWriter/beforeValue(Z)V
aload 0
getfield com/google/gson/stream/JsonWriter/out Ljava/io/Writer;
aload 2
invokevirtual java/io/Writer/append(Ljava/lang/CharSequence;)Ljava/io/Writer;
pop
aload 0
areturn
.limit locals 3
.limit stack 4
.end method

.method public value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
.throws java/io/IOException
aload 1
ifnonnull L0
aload 0
invokevirtual com/google/gson/stream/JsonWriter/nullValue()Lcom/google/gson/stream/JsonWriter;
areturn
L0:
aload 0
invokespecial com/google/gson/stream/JsonWriter/writeDeferredName()V
aload 0
iconst_0
invokespecial com/google/gson/stream/JsonWriter/beforeValue(Z)V
aload 0
aload 1
invokespecial com/google/gson/stream/JsonWriter/string(Ljava/lang/String;)V
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public value(Z)Lcom/google/gson/stream/JsonWriter;
.throws java/io/IOException
aload 0
invokespecial com/google/gson/stream/JsonWriter/writeDeferredName()V
aload 0
iconst_0
invokespecial com/google/gson/stream/JsonWriter/beforeValue(Z)V
aload 0
getfield com/google/gson/stream/JsonWriter/out Ljava/io/Writer;
astore 3
iload 1
ifeq L0
ldc "true"
astore 2
L1:
aload 3
aload 2
invokevirtual java/io/Writer/write(Ljava/lang/String;)V
aload 0
areturn
L0:
ldc "false"
astore 2
goto L1
.limit locals 4
.limit stack 2
.end method
