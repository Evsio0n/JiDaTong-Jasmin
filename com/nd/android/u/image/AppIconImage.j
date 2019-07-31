.bytecode 50.0
.class public synchronized com/nd/android/u/image/AppIconImage
.super java/lang/Object
.implements android/os/Parcelable
.implements java/io/Serializable
.inner class static final inner com/nd/android/u/image/AppIconImage$1

.field public static final 'CREATOR' Landroid/os/Parcelable$Creator; signature "Landroid/os/Parcelable$Creator<Lcom/nd/android/u/image/AppIconImage;>;"

.field private static final 'serialVersionUID' J = 1L


.field private 'appid' I

.field private 'code' Ljava/lang/String;

.field private 'uid' J

.field private 'url' Ljava/lang/String;

.method static <clinit>()V
new com/nd/android/u/image/AppIconImage$1
dup
invokespecial com/nd/android/u/image/AppIconImage$1/<init>()V
putstatic com/nd/android/u/image/AppIconImage/CREATOR Landroid/os/Parcelable$Creator;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(JILjava/lang/String;Ljava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
lload 1
putfield com/nd/android/u/image/AppIconImage/uid J
aload 0
aload 4
putfield com/nd/android/u/image/AppIconImage/url Ljava/lang/String;
aload 0
iload 3
putfield com/nd/android/u/image/AppIconImage/appid I
aload 0
aload 5
putfield com/nd/android/u/image/AppIconImage/code Ljava/lang/String;
return
.limit locals 6
.limit stack 3
.end method

.method static synthetic access$002(Lcom/nd/android/u/image/AppIconImage;I)I
aload 0
iload 1
putfield com/nd/android/u/image/AppIconImage/appid I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$102(Lcom/nd/android/u/image/AppIconImage;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/nd/android/u/image/AppIconImage/code Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$202(Lcom/nd/android/u/image/AppIconImage;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/nd/android/u/image/AppIconImage/url Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$302(Lcom/nd/android/u/image/AppIconImage;J)J
aload 0
lload 1
putfield com/nd/android/u/image/AppIconImage/uid J
lload 1
lreturn
.limit locals 3
.limit stack 3
.end method

.method public describeContents()I
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public equals(Ljava/lang/Object;)Z
aload 1
instanceof com/nd/android/u/image/AppIconImage
ifeq L0
aload 1
checkcast com/nd/android/u/image/AppIconImage
astore 1
aload 0
getfield com/nd/android/u/image/AppIconImage/uid J
aload 1
getfield com/nd/android/u/image/AppIconImage/uid J
lcmp
ifne L0
aload 0
getfield com/nd/android/u/image/AppIconImage/code Ljava/lang/String;
ifnull L0
aload 0
getfield com/nd/android/u/image/AppIconImage/code Ljava/lang/String;
aload 1
invokevirtual com/nd/android/u/image/AppIconImage/getCode()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
aload 0
getfield com/nd/android/u/image/AppIconImage/appid I
aload 1
getfield com/nd/android/u/image/AppIconImage/appid I
if_icmpne L0
aload 0
getfield com/nd/android/u/image/AppIconImage/url Ljava/lang/String;
ifnull L0
aload 0
getfield com/nd/android/u/image/AppIconImage/url Ljava/lang/String;
aload 1
invokevirtual com/nd/android/u/image/AppIconImage/getUrl()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 4
.end method

.method public getAppid()I
aload 0
getfield com/nd/android/u/image/AppIconImage/appid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getCode()Ljava/lang/String;
aload 0
getfield com/nd/android/u/image/AppIconImage/code Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFileName()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/image/AppIconImage/uid J
aload 0
getfield com/nd/android/u/image/AppIconImage/appid I
i2l
ladd
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ".png"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/u/image/AppIconImage/url Ljava/lang/String;
ifnull L0
ldc ""
aload 0
getfield com/nd/android/u/image/AppIconImage/url Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
aload 1
areturn
L1:
aload 0
getfield com/nd/android/u/image/AppIconImage/url Ljava/lang/String;
invokestatic com/common/android/utils/MD5ArithmeticUtils/getMd5(Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 5
.end method

.method public getUid()J
aload 0
getfield com/nd/android/u/image/AppIconImage/uid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getUrl()Ljava/lang/String;
aload 0
getfield com/nd/android/u/image/AppIconImage/url Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public hashCode()I
aload 0
getfield com/nd/android/u/image/AppIconImage/uid J
l2i
ireturn
.limit locals 1
.limit stack 2
.end method

.method public setAppid(I)V
aload 0
iload 1
putfield com/nd/android/u/image/AppIconImage/appid I
return
.limit locals 2
.limit stack 2
.end method

.method public setCode(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/image/AppIconImage/code Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUid(J)V
aload 0
lload 1
putfield com/nd/android/u/image/AppIconImage/uid J
return
.limit locals 3
.limit stack 3
.end method

.method public setUrl(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/image/AppIconImage/url Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 1
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/image/AppIconImage/uid J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ",appid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/image/AppIconImage/appid I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ",url="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/image/AppIconImage/url Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ",code="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/image/AppIconImage/code Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
aload 1
aload 0
getfield com/nd/android/u/image/AppIconImage/uid J
invokevirtual android/os/Parcel/writeLong(J)V
aload 1
aload 0
getfield com/nd/android/u/image/AppIconImage/appid I
invokevirtual android/os/Parcel/writeInt(I)V
aload 1
aload 0
getfield com/nd/android/u/image/AppIconImage/url Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 1
aload 0
getfield com/nd/android/u/image/AppIconImage/code Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
return
.limit locals 3
.limit stack 3
.end method
