.bytecode 50.0
.class final synchronized com/nd/android/u/image/AppIconImage$1
.super java/lang/Object
.implements android/os/Parcelable$Creator
.signature "Ljava/lang/Object;Landroid/os/Parcelable$Creator<Lcom/nd/android/u/image/AppIconImage;>;"
.enclosing method com/nd/android/u/image/AppIconImage
.inner class static final inner com/nd/android/u/image/AppIconImage$1

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lcom/nd/android/u/image/AppIconImage;
new com/nd/android/u/image/AppIconImage
dup
invokespecial com/nd/android/u/image/AppIconImage/<init>()V
astore 2
aload 2
aload 1
invokevirtual android/os/Parcel/readInt()I
invokestatic com/nd/android/u/image/AppIconImage/access$002(Lcom/nd/android/u/image/AppIconImage;I)I
pop
aload 2
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
invokestatic com/nd/android/u/image/AppIconImage/access$102(Lcom/nd/android/u/image/AppIconImage;Ljava/lang/String;)Ljava/lang/String;
pop
aload 2
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
invokestatic com/nd/android/u/image/AppIconImage/access$202(Lcom/nd/android/u/image/AppIconImage;Ljava/lang/String;)Ljava/lang/String;
pop
aload 2
aload 1
invokevirtual android/os/Parcel/readLong()J
invokestatic com/nd/android/u/image/AppIconImage/access$302(Lcom/nd/android/u/image/AppIconImage;J)J
pop2
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public volatile synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
aload 0
aload 1
invokevirtual com/nd/android/u/image/AppIconImage$1/createFromParcel(Landroid/os/Parcel;)Lcom/nd/android/u/image/AppIconImage;
areturn
.limit locals 2
.limit stack 2
.end method

.method public newArray(I)[Lcom/nd/android/u/image/AppIconImage;
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method

.method public volatile synthetic newArray(I)[Ljava/lang/Object;
aload 0
iload 1
invokevirtual com/nd/android/u/image/AppIconImage$1/newArray(I)[Lcom/nd/android/u/image/AppIconImage;
areturn
.limit locals 2
.limit stack 2
.end method
