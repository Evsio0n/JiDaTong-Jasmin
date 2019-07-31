.bytecode 50.0
.class final synchronized enum com/google/gson/FieldNamingPolicy$2
.super com/google/gson/FieldNamingPolicy
.enclosing method com/google/gson/FieldNamingPolicy
.inner class static final enum inner com/google/gson/FieldNamingPolicy$2

.method <init>(Ljava/lang/String;I)V
aload 0
aload 1
iload 2
aconst_null
invokespecial com/google/gson/FieldNamingPolicy/<init>(Ljava/lang/String;ILcom/google/gson/FieldNamingPolicy$1;)V
return
.limit locals 3
.limit stack 4
.end method

.method public translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;
aload 1
invokevirtual java/lang/reflect/Field/getName()Ljava/lang/String;
invokestatic com/google/gson/FieldNamingPolicy/access$100(Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 1
.end method
