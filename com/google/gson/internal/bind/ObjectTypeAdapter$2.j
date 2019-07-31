.bytecode 50.0
.class synchronized synthetic com/google/gson/internal/bind/ObjectTypeAdapter$2
.super java/lang/Object
.enclosing method com/google/gson/internal/bind/ObjectTypeAdapter
.inner class static synthetic inner com/google/gson/internal/bind/ObjectTypeAdapter$2

.field static final synthetic '$SwitchMap$com$google$gson$stream$JsonToken' [I

.method static <clinit>()V
.catch java/lang/NoSuchFieldError from L0 to L1 using L2
.catch java/lang/NoSuchFieldError from L1 to L3 using L4
.catch java/lang/NoSuchFieldError from L3 to L5 using L6
.catch java/lang/NoSuchFieldError from L5 to L7 using L8
.catch java/lang/NoSuchFieldError from L7 to L9 using L10
.catch java/lang/NoSuchFieldError from L9 to L11 using L12
invokestatic com/google/gson/stream/JsonToken/values()[Lcom/google/gson/stream/JsonToken;
arraylength
newarray int
putstatic com/google/gson/internal/bind/ObjectTypeAdapter$2/$SwitchMap$com$google$gson$stream$JsonToken [I
L0:
getstatic com/google/gson/internal/bind/ObjectTypeAdapter$2/$SwitchMap$com$google$gson$stream$JsonToken [I
getstatic com/google/gson/stream/JsonToken/BEGIN_ARRAY Lcom/google/gson/stream/JsonToken;
invokevirtual com/google/gson/stream/JsonToken/ordinal()I
iconst_1
iastore
L1:
getstatic com/google/gson/internal/bind/ObjectTypeAdapter$2/$SwitchMap$com$google$gson$stream$JsonToken [I
getstatic com/google/gson/stream/JsonToken/BEGIN_OBJECT Lcom/google/gson/stream/JsonToken;
invokevirtual com/google/gson/stream/JsonToken/ordinal()I
iconst_2
iastore
L3:
getstatic com/google/gson/internal/bind/ObjectTypeAdapter$2/$SwitchMap$com$google$gson$stream$JsonToken [I
getstatic com/google/gson/stream/JsonToken/STRING Lcom/google/gson/stream/JsonToken;
invokevirtual com/google/gson/stream/JsonToken/ordinal()I
iconst_3
iastore
L5:
getstatic com/google/gson/internal/bind/ObjectTypeAdapter$2/$SwitchMap$com$google$gson$stream$JsonToken [I
getstatic com/google/gson/stream/JsonToken/NUMBER Lcom/google/gson/stream/JsonToken;
invokevirtual com/google/gson/stream/JsonToken/ordinal()I
iconst_4
iastore
L7:
getstatic com/google/gson/internal/bind/ObjectTypeAdapter$2/$SwitchMap$com$google$gson$stream$JsonToken [I
getstatic com/google/gson/stream/JsonToken/BOOLEAN Lcom/google/gson/stream/JsonToken;
invokevirtual com/google/gson/stream/JsonToken/ordinal()I
iconst_5
iastore
L9:
getstatic com/google/gson/internal/bind/ObjectTypeAdapter$2/$SwitchMap$com$google$gson$stream$JsonToken [I
getstatic com/google/gson/stream/JsonToken/NULL Lcom/google/gson/stream/JsonToken;
invokevirtual com/google/gson/stream/JsonToken/ordinal()I
bipush 6
iastore
L11:
return
L12:
astore 0
return
L10:
astore 0
goto L9
L8:
astore 0
goto L7
L6:
astore 0
goto L5
L4:
astore 0
goto L3
L2:
astore 0
goto L1
.limit locals 1
.limit stack 3
.end method
