.bytecode 50.0
.class public final synchronized com/google/gson/JsonNull
.super com/google/gson/JsonElement

.field public static final 'INSTANCE' Lcom/google/gson/JsonNull;

.method static <clinit>()V
new com/google/gson/JsonNull
dup
invokespecial com/google/gson/JsonNull/<init>()V
putstatic com/google/gson/JsonNull/INSTANCE Lcom/google/gson/JsonNull;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
.annotation visible Ljava/lang/Deprecated;
.end annotation
aload 0
invokespecial com/google/gson/JsonElement/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method volatile synthetic deepCopy()Lcom/google/gson/JsonElement;
aload 0
invokevirtual com/google/gson/JsonNull/deepCopy()Lcom/google/gson/JsonNull;
areturn
.limit locals 1
.limit stack 1
.end method

.method deepCopy()Lcom/google/gson/JsonNull;
getstatic com/google/gson/JsonNull/INSTANCE Lcom/google/gson/JsonNull;
areturn
.limit locals 1
.limit stack 1
.end method

.method public equals(Ljava/lang/Object;)Z
aload 0
aload 1
if_acmpeq L0
aload 1
instanceof com/google/gson/JsonNull
ifeq L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public hashCode()I
ldc com/google/gson/JsonNull
invokevirtual java/lang/Object/hashCode()I
ireturn
.limit locals 1
.limit stack 1
.end method
