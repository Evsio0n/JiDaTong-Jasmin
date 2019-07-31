.bytecode 50.0
.class synchronized com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1
.super com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField
.enclosing method com/google/gson/internal/bind/ReflectiveTypeAdapterFactory/createBoundField(Lcom/google/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/google/gson/reflect/TypeToken;ZZ)Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
.inner class inner com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1

.field final synthetic 'this$0' Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;

.field final 'typeAdapter' Lcom/google/gson/TypeAdapter; signature "Lcom/google/gson/TypeAdapter<*>;"

.field final synthetic 'val$context' Lcom/google/gson/Gson;

.field final synthetic 'val$field' Ljava/lang/reflect/Field;

.field final synthetic 'val$fieldType' Lcom/google/gson/reflect/TypeToken;

.field final synthetic 'val$isPrimitive' Z

.method <init>(Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;Ljava/lang/String;ZZLcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Ljava/lang/reflect/Field;Z)V
aload 0
aload 1
putfield com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1/this$0 Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;
aload 0
aload 5
putfield com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1/val$context Lcom/google/gson/Gson;
aload 0
aload 6
putfield com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1/val$fieldType Lcom/google/gson/reflect/TypeToken;
aload 0
aload 7
putfield com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1/val$field Ljava/lang/reflect/Field;
aload 0
iload 8
putfield com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1/val$isPrimitive Z
aload 0
aload 2
iload 3
iload 4
invokespecial com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField/<init>(Ljava/lang/String;ZZ)V
aload 0
aload 0
getfield com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1/val$context Lcom/google/gson/Gson;
aload 0
getfield com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1/val$fieldType Lcom/google/gson/reflect/TypeToken;
invokevirtual com/google/gson/Gson/getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
putfield com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1/typeAdapter Lcom/google/gson/TypeAdapter;
return
.limit locals 9
.limit stack 4
.end method

.method read(Lcom/google/gson/stream/JsonReader;Ljava/lang/Object;)V
.throws java/io/IOException
.throws java/lang/IllegalAccessException
aload 0
getfield com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1/typeAdapter Lcom/google/gson/TypeAdapter;
aload 1
invokevirtual com/google/gson/TypeAdapter/read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
astore 1
aload 1
ifnonnull L0
aload 0
getfield com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1/val$isPrimitive Z
ifne L1
L0:
aload 0
getfield com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1/val$field Ljava/lang/reflect/Field;
aload 2
aload 1
invokevirtual java/lang/reflect/Field/set(Ljava/lang/Object;Ljava/lang/Object;)V
L1:
return
.limit locals 3
.limit stack 3
.end method

.method write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
.throws java/io/IOException
.throws java/lang/IllegalAccessException
aload 0
getfield com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1/val$field Ljava/lang/reflect/Field;
aload 2
invokevirtual java/lang/reflect/Field/get(Ljava/lang/Object;)Ljava/lang/Object;
astore 2
new com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper
dup
aload 0
getfield com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1/val$context Lcom/google/gson/Gson;
aload 0
getfield com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1/typeAdapter Lcom/google/gson/TypeAdapter;
aload 0
getfield com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1/val$fieldType Lcom/google/gson/reflect/TypeToken;
invokevirtual com/google/gson/reflect/TypeToken/getType()Ljava/lang/reflect/Type;
invokespecial com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper/<init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;Ljava/lang/reflect/Type;)V
aload 1
aload 2
invokevirtual com/google/gson/TypeAdapter/write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
return
.limit locals 3
.limit stack 5
.end method
