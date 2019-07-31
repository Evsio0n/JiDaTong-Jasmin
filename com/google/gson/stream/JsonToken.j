.bytecode 50.0
.class public final synchronized enum com/google/gson/stream/JsonToken
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/google/gson/stream/JsonToken;>;"

.field private static final synthetic '$VALUES' [Lcom/google/gson/stream/JsonToken;

.field public static final enum 'BEGIN_ARRAY' Lcom/google/gson/stream/JsonToken;

.field public static final enum 'BEGIN_OBJECT' Lcom/google/gson/stream/JsonToken;

.field public static final enum 'BOOLEAN' Lcom/google/gson/stream/JsonToken;

.field public static final enum 'END_ARRAY' Lcom/google/gson/stream/JsonToken;

.field public static final enum 'END_DOCUMENT' Lcom/google/gson/stream/JsonToken;

.field public static final enum 'END_OBJECT' Lcom/google/gson/stream/JsonToken;

.field public static final enum 'NAME' Lcom/google/gson/stream/JsonToken;

.field public static final enum 'NULL' Lcom/google/gson/stream/JsonToken;

.field public static final enum 'NUMBER' Lcom/google/gson/stream/JsonToken;

.field public static final enum 'STRING' Lcom/google/gson/stream/JsonToken;

.method static <clinit>()V
new com/google/gson/stream/JsonToken
dup
ldc "BEGIN_ARRAY"
iconst_0
invokespecial com/google/gson/stream/JsonToken/<init>(Ljava/lang/String;I)V
putstatic com/google/gson/stream/JsonToken/BEGIN_ARRAY Lcom/google/gson/stream/JsonToken;
new com/google/gson/stream/JsonToken
dup
ldc "END_ARRAY"
iconst_1
invokespecial com/google/gson/stream/JsonToken/<init>(Ljava/lang/String;I)V
putstatic com/google/gson/stream/JsonToken/END_ARRAY Lcom/google/gson/stream/JsonToken;
new com/google/gson/stream/JsonToken
dup
ldc "BEGIN_OBJECT"
iconst_2
invokespecial com/google/gson/stream/JsonToken/<init>(Ljava/lang/String;I)V
putstatic com/google/gson/stream/JsonToken/BEGIN_OBJECT Lcom/google/gson/stream/JsonToken;
new com/google/gson/stream/JsonToken
dup
ldc "END_OBJECT"
iconst_3
invokespecial com/google/gson/stream/JsonToken/<init>(Ljava/lang/String;I)V
putstatic com/google/gson/stream/JsonToken/END_OBJECT Lcom/google/gson/stream/JsonToken;
new com/google/gson/stream/JsonToken
dup
ldc "NAME"
iconst_4
invokespecial com/google/gson/stream/JsonToken/<init>(Ljava/lang/String;I)V
putstatic com/google/gson/stream/JsonToken/NAME Lcom/google/gson/stream/JsonToken;
new com/google/gson/stream/JsonToken
dup
ldc "STRING"
iconst_5
invokespecial com/google/gson/stream/JsonToken/<init>(Ljava/lang/String;I)V
putstatic com/google/gson/stream/JsonToken/STRING Lcom/google/gson/stream/JsonToken;
new com/google/gson/stream/JsonToken
dup
ldc "NUMBER"
bipush 6
invokespecial com/google/gson/stream/JsonToken/<init>(Ljava/lang/String;I)V
putstatic com/google/gson/stream/JsonToken/NUMBER Lcom/google/gson/stream/JsonToken;
new com/google/gson/stream/JsonToken
dup
ldc "BOOLEAN"
bipush 7
invokespecial com/google/gson/stream/JsonToken/<init>(Ljava/lang/String;I)V
putstatic com/google/gson/stream/JsonToken/BOOLEAN Lcom/google/gson/stream/JsonToken;
new com/google/gson/stream/JsonToken
dup
ldc "NULL"
bipush 8
invokespecial com/google/gson/stream/JsonToken/<init>(Ljava/lang/String;I)V
putstatic com/google/gson/stream/JsonToken/NULL Lcom/google/gson/stream/JsonToken;
new com/google/gson/stream/JsonToken
dup
ldc "END_DOCUMENT"
bipush 9
invokespecial com/google/gson/stream/JsonToken/<init>(Ljava/lang/String;I)V
putstatic com/google/gson/stream/JsonToken/END_DOCUMENT Lcom/google/gson/stream/JsonToken;
bipush 10
anewarray com/google/gson/stream/JsonToken
dup
iconst_0
getstatic com/google/gson/stream/JsonToken/BEGIN_ARRAY Lcom/google/gson/stream/JsonToken;
aastore
dup
iconst_1
getstatic com/google/gson/stream/JsonToken/END_ARRAY Lcom/google/gson/stream/JsonToken;
aastore
dup
iconst_2
getstatic com/google/gson/stream/JsonToken/BEGIN_OBJECT Lcom/google/gson/stream/JsonToken;
aastore
dup
iconst_3
getstatic com/google/gson/stream/JsonToken/END_OBJECT Lcom/google/gson/stream/JsonToken;
aastore
dup
iconst_4
getstatic com/google/gson/stream/JsonToken/NAME Lcom/google/gson/stream/JsonToken;
aastore
dup
iconst_5
getstatic com/google/gson/stream/JsonToken/STRING Lcom/google/gson/stream/JsonToken;
aastore
dup
bipush 6
getstatic com/google/gson/stream/JsonToken/NUMBER Lcom/google/gson/stream/JsonToken;
aastore
dup
bipush 7
getstatic com/google/gson/stream/JsonToken/BOOLEAN Lcom/google/gson/stream/JsonToken;
aastore
dup
bipush 8
getstatic com/google/gson/stream/JsonToken/NULL Lcom/google/gson/stream/JsonToken;
aastore
dup
bipush 9
getstatic com/google/gson/stream/JsonToken/END_DOCUMENT Lcom/google/gson/stream/JsonToken;
aastore
putstatic com/google/gson/stream/JsonToken/$VALUES [Lcom/google/gson/stream/JsonToken;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Ljava/lang/String;I)V
.signature "()V"
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
return
.limit locals 3
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gson/stream/JsonToken;
ldc com/google/gson/stream/JsonToken
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/google/gson/stream/JsonToken
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/google/gson/stream/JsonToken;
getstatic com/google/gson/stream/JsonToken/$VALUES [Lcom/google/gson/stream/JsonToken;
invokevirtual [Lcom/google/gson/stream/JsonToken;/clone()Ljava/lang/Object;
checkcast [Lcom/google/gson/stream/JsonToken;
areturn
.limit locals 0
.limit stack 1
.end method
