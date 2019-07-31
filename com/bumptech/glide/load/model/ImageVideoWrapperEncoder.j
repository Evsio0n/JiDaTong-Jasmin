.bytecode 50.0
.class public synchronized com/bumptech/glide/load/model/ImageVideoWrapperEncoder
.super java/lang/Object
.implements com/bumptech/glide/load/Encoder
.signature "Ljava/lang/Object;Lcom/bumptech/glide/load/Encoder<Lcom/bumptech/glide/load/model/ImageVideoWrapper;>;"

.field private final 'fileDescriptorEncoder' Lcom/bumptech/glide/load/Encoder; signature "Lcom/bumptech/glide/load/Encoder<Landroid/os/ParcelFileDescriptor;>;"

.field private 'id' Ljava/lang/String;

.field private final 'streamEncoder' Lcom/bumptech/glide/load/Encoder; signature "Lcom/bumptech/glide/load/Encoder<Ljava/io/InputStream;>;"

.method public <init>(Lcom/bumptech/glide/load/Encoder;Lcom/bumptech/glide/load/Encoder;)V
.signature "(Lcom/bumptech/glide/load/Encoder<Ljava/io/InputStream;>;Lcom/bumptech/glide/load/Encoder<Landroid/os/ParcelFileDescriptor;>;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/model/ImageVideoWrapperEncoder/streamEncoder Lcom/bumptech/glide/load/Encoder;
aload 0
aload 2
putfield com/bumptech/glide/load/model/ImageVideoWrapperEncoder/fileDescriptorEncoder Lcom/bumptech/glide/load/Encoder;
return
.limit locals 3
.limit stack 2
.end method

.method public encode(Lcom/bumptech/glide/load/model/ImageVideoWrapper;Ljava/io/OutputStream;)Z
aload 1
invokevirtual com/bumptech/glide/load/model/ImageVideoWrapper/getStream()Ljava/io/InputStream;
ifnull L0
aload 0
getfield com/bumptech/glide/load/model/ImageVideoWrapperEncoder/streamEncoder Lcom/bumptech/glide/load/Encoder;
aload 1
invokevirtual com/bumptech/glide/load/model/ImageVideoWrapper/getStream()Ljava/io/InputStream;
aload 2
invokeinterface com/bumptech/glide/load/Encoder/encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z 2
ireturn
L0:
aload 0
getfield com/bumptech/glide/load/model/ImageVideoWrapperEncoder/fileDescriptorEncoder Lcom/bumptech/glide/load/Encoder;
aload 1
invokevirtual com/bumptech/glide/load/model/ImageVideoWrapper/getFileDescriptor()Landroid/os/ParcelFileDescriptor;
aload 2
invokeinterface com/bumptech/glide/load/Encoder/encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z 2
ireturn
.limit locals 3
.limit stack 3
.end method

.method public volatile synthetic encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z
aload 0
aload 1
checkcast com/bumptech/glide/load/model/ImageVideoWrapper
aload 2
invokevirtual com/bumptech/glide/load/model/ImageVideoWrapperEncoder/encode(Lcom/bumptech/glide/load/model/ImageVideoWrapper;Ljava/io/OutputStream;)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method public getId()Ljava/lang/String;
aload 0
getfield com/bumptech/glide/load/model/ImageVideoWrapperEncoder/id Ljava/lang/String;
ifnonnull L0
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/bumptech/glide/load/model/ImageVideoWrapperEncoder/streamEncoder Lcom/bumptech/glide/load/Encoder;
invokeinterface com/bumptech/glide/load/Encoder/getId()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/load/model/ImageVideoWrapperEncoder/fileDescriptorEncoder Lcom/bumptech/glide/load/Encoder;
invokeinterface com/bumptech/glide/load/Encoder/getId()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/bumptech/glide/load/model/ImageVideoWrapperEncoder/id Ljava/lang/String;
L0:
aload 0
getfield com/bumptech/glide/load/model/ImageVideoWrapperEncoder/id Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method
