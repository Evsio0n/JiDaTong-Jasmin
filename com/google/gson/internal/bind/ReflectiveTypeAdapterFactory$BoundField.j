.bytecode 50.0
.class synchronized abstract com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField
.super java/lang/Object
.inner class static abstract BoundField inner com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField outer com/google/gson/internal/bind/ReflectiveTypeAdapterFactory

.field final 'deserialized' Z

.field final 'name' Ljava/lang/String;

.field final 'serialized' Z

.method protected <init>(Ljava/lang/String;ZZ)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField/name Ljava/lang/String;
aload 0
iload 2
putfield com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField/serialized Z
aload 0
iload 3
putfield com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField/deserialized Z
return
.limit locals 4
.limit stack 2
.end method

.method abstract read(Lcom/google/gson/stream/JsonReader;Ljava/lang/Object;)V
.throws java/io/IOException
.throws java/lang/IllegalAccessException
.end method

.method abstract write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
.throws java/io/IOException
.throws java/lang/IllegalAccessException
.end method
