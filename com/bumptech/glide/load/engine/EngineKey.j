.bytecode 50.0
.class synchronized com/bumptech/glide/load/engine/EngineKey
.super java/lang/Object
.implements com/bumptech/glide/load/Key

.field private static final 'EMPTY_LOG_STRING' Ljava/lang/String; = ""

.field private final 'cacheDecoder' Lcom/bumptech/glide/load/ResourceDecoder;

.field private final 'decoder' Lcom/bumptech/glide/load/ResourceDecoder;

.field private final 'encoder' Lcom/bumptech/glide/load/ResourceEncoder;

.field private 'hashCode' I

.field private final 'height' I

.field private final 'id' Ljava/lang/String;

.field private 'originalKey' Lcom/bumptech/glide/load/Key;

.field private final 'signature' Lcom/bumptech/glide/load/Key;

.field private final 'sourceEncoder' Lcom/bumptech/glide/load/Encoder;

.field private 'stringKey' Ljava/lang/String;

.field private final 'transcoder' Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

.field private final 'transformation' Lcom/bumptech/glide/load/Transformation;

.field private final 'width' I

.method public <init>(Ljava/lang/String;Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/ResourceEncoder;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/load/Encoder;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/engine/EngineKey/id Ljava/lang/String;
aload 0
aload 2
putfield com/bumptech/glide/load/engine/EngineKey/signature Lcom/bumptech/glide/load/Key;
aload 0
iload 3
putfield com/bumptech/glide/load/engine/EngineKey/width I
aload 0
iload 4
putfield com/bumptech/glide/load/engine/EngineKey/height I
aload 0
aload 5
putfield com/bumptech/glide/load/engine/EngineKey/cacheDecoder Lcom/bumptech/glide/load/ResourceDecoder;
aload 0
aload 6
putfield com/bumptech/glide/load/engine/EngineKey/decoder Lcom/bumptech/glide/load/ResourceDecoder;
aload 0
aload 7
putfield com/bumptech/glide/load/engine/EngineKey/transformation Lcom/bumptech/glide/load/Transformation;
aload 0
aload 8
putfield com/bumptech/glide/load/engine/EngineKey/encoder Lcom/bumptech/glide/load/ResourceEncoder;
aload 0
aload 9
putfield com/bumptech/glide/load/engine/EngineKey/transcoder Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
aload 0
aload 10
putfield com/bumptech/glide/load/engine/EngineKey/sourceEncoder Lcom/bumptech/glide/load/Encoder;
return
.limit locals 11
.limit stack 2
.end method

.method public equals(Ljava/lang/Object;)Z
iconst_0
istore 5
aload 0
aload 1
if_acmpne L0
iconst_1
istore 4
L1:
iload 4
ireturn
L0:
iload 5
istore 4
aload 1
ifnull L1
iload 5
istore 4
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
aload 1
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
if_acmpne L1
aload 1
checkcast com/bumptech/glide/load/engine/EngineKey
astore 1
iload 5
istore 4
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/id Ljava/lang/String;
aload 1
getfield com/bumptech/glide/load/engine/EngineKey/id Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
iload 5
istore 4
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/signature Lcom/bumptech/glide/load/Key;
aload 1
getfield com/bumptech/glide/load/engine/EngineKey/signature Lcom/bumptech/glide/load/Key;
invokeinterface com/bumptech/glide/load/Key/equals(Ljava/lang/Object;)Z 1
ifeq L1
iload 5
istore 4
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/height I
aload 1
getfield com/bumptech/glide/load/engine/EngineKey/height I
if_icmpne L1
iload 5
istore 4
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/width I
aload 1
getfield com/bumptech/glide/load/engine/EngineKey/width I
if_icmpne L1
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/transformation Lcom/bumptech/glide/load/Transformation;
ifnonnull L2
iconst_1
istore 2
L3:
aload 1
getfield com/bumptech/glide/load/engine/EngineKey/transformation Lcom/bumptech/glide/load/Transformation;
ifnonnull L4
iconst_1
istore 3
L5:
iload 5
istore 4
iload 2
iload 3
ixor
ifne L1
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/transformation Lcom/bumptech/glide/load/Transformation;
ifnull L6
iload 5
istore 4
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/transformation Lcom/bumptech/glide/load/Transformation;
invokeinterface com/bumptech/glide/load/Transformation/getId()Ljava/lang/String; 0
aload 1
getfield com/bumptech/glide/load/engine/EngineKey/transformation Lcom/bumptech/glide/load/Transformation;
invokeinterface com/bumptech/glide/load/Transformation/getId()Ljava/lang/String; 0
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L6:
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/decoder Lcom/bumptech/glide/load/ResourceDecoder;
ifnonnull L7
iconst_1
istore 2
L8:
aload 1
getfield com/bumptech/glide/load/engine/EngineKey/decoder Lcom/bumptech/glide/load/ResourceDecoder;
ifnonnull L9
iconst_1
istore 3
L10:
iload 5
istore 4
iload 2
iload 3
ixor
ifne L1
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/decoder Lcom/bumptech/glide/load/ResourceDecoder;
ifnull L11
iload 5
istore 4
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/decoder Lcom/bumptech/glide/load/ResourceDecoder;
invokeinterface com/bumptech/glide/load/ResourceDecoder/getId()Ljava/lang/String; 0
aload 1
getfield com/bumptech/glide/load/engine/EngineKey/decoder Lcom/bumptech/glide/load/ResourceDecoder;
invokeinterface com/bumptech/glide/load/ResourceDecoder/getId()Ljava/lang/String; 0
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L11:
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/cacheDecoder Lcom/bumptech/glide/load/ResourceDecoder;
ifnonnull L12
iconst_1
istore 2
L13:
aload 1
getfield com/bumptech/glide/load/engine/EngineKey/cacheDecoder Lcom/bumptech/glide/load/ResourceDecoder;
ifnonnull L14
iconst_1
istore 3
L15:
iload 5
istore 4
iload 2
iload 3
ixor
ifne L1
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/cacheDecoder Lcom/bumptech/glide/load/ResourceDecoder;
ifnull L16
iload 5
istore 4
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/cacheDecoder Lcom/bumptech/glide/load/ResourceDecoder;
invokeinterface com/bumptech/glide/load/ResourceDecoder/getId()Ljava/lang/String; 0
aload 1
getfield com/bumptech/glide/load/engine/EngineKey/cacheDecoder Lcom/bumptech/glide/load/ResourceDecoder;
invokeinterface com/bumptech/glide/load/ResourceDecoder/getId()Ljava/lang/String; 0
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L16:
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/encoder Lcom/bumptech/glide/load/ResourceEncoder;
ifnonnull L17
iconst_1
istore 2
L18:
aload 1
getfield com/bumptech/glide/load/engine/EngineKey/encoder Lcom/bumptech/glide/load/ResourceEncoder;
ifnonnull L19
iconst_1
istore 3
L20:
iload 5
istore 4
iload 2
iload 3
ixor
ifne L1
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/encoder Lcom/bumptech/glide/load/ResourceEncoder;
ifnull L21
iload 5
istore 4
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/encoder Lcom/bumptech/glide/load/ResourceEncoder;
invokeinterface com/bumptech/glide/load/ResourceEncoder/getId()Ljava/lang/String; 0
aload 1
getfield com/bumptech/glide/load/engine/EngineKey/encoder Lcom/bumptech/glide/load/ResourceEncoder;
invokeinterface com/bumptech/glide/load/ResourceEncoder/getId()Ljava/lang/String; 0
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L21:
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/transcoder Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
ifnonnull L22
iconst_1
istore 2
L23:
aload 1
getfield com/bumptech/glide/load/engine/EngineKey/transcoder Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
ifnonnull L24
iconst_1
istore 3
L25:
iload 5
istore 4
iload 2
iload 3
ixor
ifne L1
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/transcoder Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
ifnull L26
iload 5
istore 4
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/transcoder Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
invokeinterface com/bumptech/glide/load/resource/transcode/ResourceTranscoder/getId()Ljava/lang/String; 0
aload 1
getfield com/bumptech/glide/load/engine/EngineKey/transcoder Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
invokeinterface com/bumptech/glide/load/resource/transcode/ResourceTranscoder/getId()Ljava/lang/String; 0
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L26:
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/sourceEncoder Lcom/bumptech/glide/load/Encoder;
ifnonnull L27
iconst_1
istore 2
L28:
aload 1
getfield com/bumptech/glide/load/engine/EngineKey/sourceEncoder Lcom/bumptech/glide/load/Encoder;
ifnonnull L29
iconst_1
istore 3
L30:
iload 5
istore 4
iload 2
iload 3
ixor
ifne L1
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/sourceEncoder Lcom/bumptech/glide/load/Encoder;
ifnull L31
iload 5
istore 4
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/sourceEncoder Lcom/bumptech/glide/load/Encoder;
invokeinterface com/bumptech/glide/load/Encoder/getId()Ljava/lang/String; 0
aload 1
getfield com/bumptech/glide/load/engine/EngineKey/sourceEncoder Lcom/bumptech/glide/load/Encoder;
invokeinterface com/bumptech/glide/load/Encoder/getId()Ljava/lang/String; 0
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L31:
iconst_1
ireturn
L2:
iconst_0
istore 2
goto L3
L4:
iconst_0
istore 3
goto L5
L7:
iconst_0
istore 2
goto L8
L9:
iconst_0
istore 3
goto L10
L12:
iconst_0
istore 2
goto L13
L14:
iconst_0
istore 3
goto L15
L17:
iconst_0
istore 2
goto L18
L19:
iconst_0
istore 3
goto L20
L22:
iconst_0
istore 2
goto L23
L24:
iconst_0
istore 3
goto L25
L27:
iconst_0
istore 2
goto L28
L29:
iconst_0
istore 3
goto L30
.limit locals 6
.limit stack 2
.end method

.method public getOriginalKey()Lcom/bumptech/glide/load/Key;
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/originalKey Lcom/bumptech/glide/load/Key;
ifnonnull L0
aload 0
new com/bumptech/glide/load/engine/OriginalKey
dup
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/id Ljava/lang/String;
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/signature Lcom/bumptech/glide/load/Key;
invokespecial com/bumptech/glide/load/engine/OriginalKey/<init>(Ljava/lang/String;Lcom/bumptech/glide/load/Key;)V
putfield com/bumptech/glide/load/engine/EngineKey/originalKey Lcom/bumptech/glide/load/Key;
L0:
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/originalKey Lcom/bumptech/glide/load/Key;
areturn
.limit locals 1
.limit stack 5
.end method

.method public hashCode()I
iconst_0
istore 2
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/hashCode I
ifne L0
aload 0
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/id Ljava/lang/String;
invokevirtual java/lang/String/hashCode()I
putfield com/bumptech/glide/load/engine/EngineKey/hashCode I
aload 0
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/hashCode I
bipush 31
imul
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/signature Lcom/bumptech/glide/load/Key;
invokeinterface com/bumptech/glide/load/Key/hashCode()I 0
iadd
putfield com/bumptech/glide/load/engine/EngineKey/hashCode I
aload 0
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/hashCode I
bipush 31
imul
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/width I
iadd
putfield com/bumptech/glide/load/engine/EngineKey/hashCode I
aload 0
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/hashCode I
bipush 31
imul
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/height I
iadd
putfield com/bumptech/glide/load/engine/EngineKey/hashCode I
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/hashCode I
istore 3
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/cacheDecoder Lcom/bumptech/glide/load/ResourceDecoder;
ifnull L1
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/cacheDecoder Lcom/bumptech/glide/load/ResourceDecoder;
invokeinterface com/bumptech/glide/load/ResourceDecoder/getId()Ljava/lang/String; 0
invokevirtual java/lang/String/hashCode()I
istore 1
L2:
aload 0
iload 1
iload 3
bipush 31
imul
iadd
putfield com/bumptech/glide/load/engine/EngineKey/hashCode I
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/hashCode I
istore 3
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/decoder Lcom/bumptech/glide/load/ResourceDecoder;
ifnull L3
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/decoder Lcom/bumptech/glide/load/ResourceDecoder;
invokeinterface com/bumptech/glide/load/ResourceDecoder/getId()Ljava/lang/String; 0
invokevirtual java/lang/String/hashCode()I
istore 1
L4:
aload 0
iload 1
iload 3
bipush 31
imul
iadd
putfield com/bumptech/glide/load/engine/EngineKey/hashCode I
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/hashCode I
istore 3
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/transformation Lcom/bumptech/glide/load/Transformation;
ifnull L5
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/transformation Lcom/bumptech/glide/load/Transformation;
invokeinterface com/bumptech/glide/load/Transformation/getId()Ljava/lang/String; 0
invokevirtual java/lang/String/hashCode()I
istore 1
L6:
aload 0
iload 1
iload 3
bipush 31
imul
iadd
putfield com/bumptech/glide/load/engine/EngineKey/hashCode I
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/hashCode I
istore 3
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/encoder Lcom/bumptech/glide/load/ResourceEncoder;
ifnull L7
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/encoder Lcom/bumptech/glide/load/ResourceEncoder;
invokeinterface com/bumptech/glide/load/ResourceEncoder/getId()Ljava/lang/String; 0
invokevirtual java/lang/String/hashCode()I
istore 1
L8:
aload 0
iload 1
iload 3
bipush 31
imul
iadd
putfield com/bumptech/glide/load/engine/EngineKey/hashCode I
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/hashCode I
istore 3
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/transcoder Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
ifnull L9
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/transcoder Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
invokeinterface com/bumptech/glide/load/resource/transcode/ResourceTranscoder/getId()Ljava/lang/String; 0
invokevirtual java/lang/String/hashCode()I
istore 1
L10:
aload 0
iload 1
iload 3
bipush 31
imul
iadd
putfield com/bumptech/glide/load/engine/EngineKey/hashCode I
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/hashCode I
istore 3
iload 2
istore 1
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/sourceEncoder Lcom/bumptech/glide/load/Encoder;
ifnull L11
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/sourceEncoder Lcom/bumptech/glide/load/Encoder;
invokeinterface com/bumptech/glide/load/Encoder/getId()Ljava/lang/String; 0
invokevirtual java/lang/String/hashCode()I
istore 1
L11:
aload 0
iload 3
bipush 31
imul
iload 1
iadd
putfield com/bumptech/glide/load/engine/EngineKey/hashCode I
L0:
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/hashCode I
ireturn
L1:
iconst_0
istore 1
goto L2
L3:
iconst_0
istore 1
goto L4
L5:
iconst_0
istore 1
goto L6
L7:
iconst_0
istore 1
goto L8
L9:
iconst_0
istore 1
goto L10
.limit locals 4
.limit stack 4
.end method

.method public toString()Ljava/lang/String;
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/stringKey Ljava/lang/String;
ifnonnull L0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "EngineKey{"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/id Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 43
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/signature Lcom/bumptech/glide/load/Key;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc "+["
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/width I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
bipush 120
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/height I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "]+"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 39
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
astore 2
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/cacheDecoder Lcom/bumptech/glide/load/ResourceDecoder;
ifnull L1
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/cacheDecoder Lcom/bumptech/glide/load/ResourceDecoder;
invokeinterface com/bumptech/glide/load/ResourceDecoder/getId()Ljava/lang/String; 0
astore 1
L2:
aload 2
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 39
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
bipush 43
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
bipush 39
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
astore 2
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/decoder Lcom/bumptech/glide/load/ResourceDecoder;
ifnull L3
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/decoder Lcom/bumptech/glide/load/ResourceDecoder;
invokeinterface com/bumptech/glide/load/ResourceDecoder/getId()Ljava/lang/String; 0
astore 1
L4:
aload 2
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 39
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
bipush 43
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
bipush 39
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
astore 2
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/transformation Lcom/bumptech/glide/load/Transformation;
ifnull L5
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/transformation Lcom/bumptech/glide/load/Transformation;
invokeinterface com/bumptech/glide/load/Transformation/getId()Ljava/lang/String; 0
astore 1
L6:
aload 2
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 39
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
bipush 43
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
bipush 39
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
astore 2
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/encoder Lcom/bumptech/glide/load/ResourceEncoder;
ifnull L7
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/encoder Lcom/bumptech/glide/load/ResourceEncoder;
invokeinterface com/bumptech/glide/load/ResourceEncoder/getId()Ljava/lang/String; 0
astore 1
L8:
aload 2
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 39
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
bipush 43
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
bipush 39
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
astore 2
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/transcoder Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
ifnull L9
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/transcoder Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
invokeinterface com/bumptech/glide/load/resource/transcode/ResourceTranscoder/getId()Ljava/lang/String; 0
astore 1
L10:
aload 2
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 39
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
bipush 43
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
bipush 39
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
astore 2
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/sourceEncoder Lcom/bumptech/glide/load/Encoder;
ifnull L11
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/sourceEncoder Lcom/bumptech/glide/load/Encoder;
invokeinterface com/bumptech/glide/load/Encoder/getId()Ljava/lang/String; 0
astore 1
L12:
aload 0
aload 2
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 39
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
bipush 125
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/bumptech/glide/load/engine/EngineKey/stringKey Ljava/lang/String;
L0:
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/stringKey Ljava/lang/String;
areturn
L1:
ldc ""
astore 1
goto L2
L3:
ldc ""
astore 1
goto L4
L5:
ldc ""
astore 1
goto L6
L7:
ldc ""
astore 1
goto L8
L9:
ldc ""
astore 1
goto L10
L11:
ldc ""
astore 1
goto L12
.limit locals 3
.limit stack 3
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
.throws java/io/UnsupportedEncodingException
bipush 8
invokestatic java/nio/ByteBuffer/allocate(I)Ljava/nio/ByteBuffer;
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/width I
invokevirtual java/nio/ByteBuffer/putInt(I)Ljava/nio/ByteBuffer;
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/height I
invokevirtual java/nio/ByteBuffer/putInt(I)Ljava/nio/ByteBuffer;
invokevirtual java/nio/ByteBuffer/array()[B
astore 2
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/signature Lcom/bumptech/glide/load/Key;
aload 1
invokeinterface com/bumptech/glide/load/Key/updateDiskCacheKey(Ljava/security/MessageDigest;)V 1
aload 1
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/id Ljava/lang/String;
ldc "UTF-8"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
invokevirtual java/security/MessageDigest/update([B)V
aload 1
aload 2
invokevirtual java/security/MessageDigest/update([B)V
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/cacheDecoder Lcom/bumptech/glide/load/ResourceDecoder;
ifnull L0
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/cacheDecoder Lcom/bumptech/glide/load/ResourceDecoder;
invokeinterface com/bumptech/glide/load/ResourceDecoder/getId()Ljava/lang/String; 0
astore 2
L1:
aload 1
aload 2
ldc "UTF-8"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
invokevirtual java/security/MessageDigest/update([B)V
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/decoder Lcom/bumptech/glide/load/ResourceDecoder;
ifnull L2
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/decoder Lcom/bumptech/glide/load/ResourceDecoder;
invokeinterface com/bumptech/glide/load/ResourceDecoder/getId()Ljava/lang/String; 0
astore 2
L3:
aload 1
aload 2
ldc "UTF-8"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
invokevirtual java/security/MessageDigest/update([B)V
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/transformation Lcom/bumptech/glide/load/Transformation;
ifnull L4
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/transformation Lcom/bumptech/glide/load/Transformation;
invokeinterface com/bumptech/glide/load/Transformation/getId()Ljava/lang/String; 0
astore 2
L5:
aload 1
aload 2
ldc "UTF-8"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
invokevirtual java/security/MessageDigest/update([B)V
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/encoder Lcom/bumptech/glide/load/ResourceEncoder;
ifnull L6
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/encoder Lcom/bumptech/glide/load/ResourceEncoder;
invokeinterface com/bumptech/glide/load/ResourceEncoder/getId()Ljava/lang/String; 0
astore 2
L7:
aload 1
aload 2
ldc "UTF-8"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
invokevirtual java/security/MessageDigest/update([B)V
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/sourceEncoder Lcom/bumptech/glide/load/Encoder;
ifnull L8
aload 0
getfield com/bumptech/glide/load/engine/EngineKey/sourceEncoder Lcom/bumptech/glide/load/Encoder;
invokeinterface com/bumptech/glide/load/Encoder/getId()Ljava/lang/String; 0
astore 2
L9:
aload 1
aload 2
ldc "UTF-8"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
invokevirtual java/security/MessageDigest/update([B)V
return
L0:
ldc ""
astore 2
goto L1
L2:
ldc ""
astore 2
goto L3
L4:
ldc ""
astore 2
goto L5
L6:
ldc ""
astore 2
goto L7
L8:
ldc ""
astore 2
goto L9
.limit locals 3
.limit stack 3
.end method
