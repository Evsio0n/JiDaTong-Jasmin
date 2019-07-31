.bytecode 50.0
.class final synchronized com/product/android/commonInterface/album/Image$1
.super java/lang/Object
.implements android/os/Parcelable$Creator
.signature "Ljava/lang/Object;Landroid/os/Parcelable$Creator<Lcom/product/android/commonInterface/album/Image;>;"
.enclosing method com/product/android/commonInterface/album/Image
.inner class static final inner com/product/android/commonInterface/album/Image$1

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lcom/product/android/commonInterface/album/Image;
new com/product/android/commonInterface/album/Image
dup
invokespecial com/product/android/commonInterface/album/Image/<init>()V
astore 2
aload 2
aload 1
invokevirtual android/os/Parcel/readLong()J
invokestatic com/product/android/commonInterface/album/Image/access$002(Lcom/product/android/commonInterface/album/Image;J)J
pop2
aload 2
aload 1
invokevirtual android/os/Parcel/readInt()I
invokestatic com/product/android/commonInterface/album/Image/access$102(Lcom/product/android/commonInterface/album/Image;I)I
pop
aload 2
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
invokestatic com/product/android/commonInterface/album/Image/access$202(Lcom/product/android/commonInterface/album/Image;Ljava/lang/String;)Ljava/lang/String;
pop
aload 2
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
invokestatic com/product/android/commonInterface/album/Image/access$302(Lcom/product/android/commonInterface/album/Image;Ljava/lang/String;)Ljava/lang/String;
pop
aload 2
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
invokestatic com/product/android/commonInterface/album/Image/access$402(Lcom/product/android/commonInterface/album/Image;Ljava/lang/String;)Ljava/lang/String;
pop
aload 2
aload 1
invokevirtual android/os/Parcel/readLong()J
invokestatic com/product/android/commonInterface/album/Image/access$502(Lcom/product/android/commonInterface/album/Image;J)J
pop2
aload 2
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
invokestatic com/product/android/commonInterface/album/Image/access$602(Lcom/product/android/commonInterface/album/Image;Ljava/lang/String;)Ljava/lang/String;
pop
aload 2
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
invokestatic com/product/android/commonInterface/album/Image/access$702(Lcom/product/android/commonInterface/album/Image;Ljava/lang/String;)Ljava/lang/String;
pop
aload 2
aload 1
invokevirtual android/os/Parcel/readLong()J
invokestatic com/product/android/commonInterface/album/Image/access$802(Lcom/product/android/commonInterface/album/Image;J)J
pop2
aload 2
aload 1
invokevirtual android/os/Parcel/readLong()J
invokestatic com/product/android/commonInterface/album/Image/access$002(Lcom/product/android/commonInterface/album/Image;J)J
pop2
aload 2
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
invokestatic com/product/android/commonInterface/album/Image/access$902(Lcom/product/android/commonInterface/album/Image;Ljava/lang/String;)Ljava/lang/String;
pop
aload 2
aload 1
invokevirtual android/os/Parcel/readInt()I
invokestatic com/product/android/commonInterface/album/Image/access$1002(Lcom/product/android/commonInterface/album/Image;I)I
pop
aload 2
aload 1
invokevirtual android/os/Parcel/readInt()I
invokestatic com/product/android/commonInterface/album/Image/access$1102(Lcom/product/android/commonInterface/album/Image;I)I
pop
aload 2
aload 1
invokevirtual android/os/Parcel/readInt()I
invokestatic com/product/android/commonInterface/album/Image/access$1202(Lcom/product/android/commonInterface/album/Image;I)I
pop
aload 2
aload 1
invokevirtual android/os/Parcel/readLong()J
invokestatic com/product/android/commonInterface/album/Image/access$1302(Lcom/product/android/commonInterface/album/Image;J)J
pop2
aload 2
aload 1
invokevirtual android/os/Parcel/readInt()I
invokestatic com/product/android/commonInterface/album/Image/access$1402(Lcom/product/android/commonInterface/album/Image;I)I
pop
aload 2
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
invokestatic com/product/android/commonInterface/album/Image/access$1502(Lcom/product/android/commonInterface/album/Image;Ljava/lang/String;)Ljava/lang/String;
pop
aload 2
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
invokestatic com/product/android/commonInterface/album/Image/access$1602(Lcom/product/android/commonInterface/album/Image;Ljava/lang/String;)Ljava/lang/String;
pop
aload 2
aload 1
invokevirtual android/os/Parcel/readLong()J
invokestatic com/product/android/commonInterface/album/Image/access$1702(Lcom/product/android/commonInterface/album/Image;J)J
pop2
aload 2
aload 1
invokevirtual android/os/Parcel/readInt()I
invokestatic com/product/android/commonInterface/album/Image/access$1802(Lcom/product/android/commonInterface/album/Image;I)I
pop
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public volatile synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
aload 0
aload 1
invokevirtual com/product/android/commonInterface/album/Image$1/createFromParcel(Landroid/os/Parcel;)Lcom/product/android/commonInterface/album/Image;
areturn
.limit locals 2
.limit stack 2
.end method

.method public newArray(I)[Lcom/product/android/commonInterface/album/Image;
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method

.method public volatile synthetic newArray(I)[Ljava/lang/Object;
aload 0
iload 1
invokevirtual com/product/android/commonInterface/album/Image$1/newArray(I)[Lcom/product/android/commonInterface/album/Image;
areturn
.limit locals 2
.limit stack 2
.end method
