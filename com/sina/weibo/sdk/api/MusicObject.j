.bytecode 50.0
.class public synchronized com/sina/weibo/sdk/api/MusicObject
.super com/sina/weibo/sdk/api/BaseMediaObject
.inner class inner com/sina/weibo/sdk/api/MusicObject$1

.field public static final 'CREATOR' Landroid/os/Parcelable$Creator; signature "Landroid/os/Parcelable$Creator<Lcom/sina/weibo/sdk/api/MusicObject;>;"

.field public 'dataHdUrl' Ljava/lang/String;

.field public 'dataUrl' Ljava/lang/String;

.field public 'duration' I

.field public 'h5Url' Ljava/lang/String;

.method static <clinit>()V
new com/sina/weibo/sdk/api/MusicObject$1
dup
invokespecial com/sina/weibo/sdk/api/MusicObject$1/<init>()V
putstatic com/sina/weibo/sdk/api/MusicObject/CREATOR Landroid/os/Parcelable$Creator;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial com/sina/weibo/sdk/api/BaseMediaObject/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(Landroid/os/Parcel;)V
aload 0
aload 1
invokespecial com/sina/weibo/sdk/api/BaseMediaObject/<init>(Landroid/os/Parcel;)V
aload 0
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
putfield com/sina/weibo/sdk/api/MusicObject/h5Url Ljava/lang/String;
aload 0
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
putfield com/sina/weibo/sdk/api/MusicObject/dataUrl Ljava/lang/String;
aload 0
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
putfield com/sina/weibo/sdk/api/MusicObject/dataHdUrl Ljava/lang/String;
aload 0
aload 1
invokevirtual android/os/Parcel/readInt()I
putfield com/sina/weibo/sdk/api/MusicObject/duration I
return
.limit locals 2
.limit stack 2
.end method

.method public checkArgs()Z
aload 0
invokespecial com/sina/weibo/sdk/api/BaseMediaObject/checkArgs()Z
ifne L0
iconst_0
ireturn
L0:
aload 0
getfield com/sina/weibo/sdk/api/MusicObject/dataUrl Ljava/lang/String;
ifnull L1
aload 0
getfield com/sina/weibo/sdk/api/MusicObject/dataUrl Ljava/lang/String;
invokevirtual java/lang/String/length()I
sipush 512
if_icmple L1
ldc "Weibo.MusicObject"
ldc "checkArgs fail, dataUrl is invalid"
invokestatic com/sina/weibo/sdk/log/Log/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L1:
aload 0
getfield com/sina/weibo/sdk/api/MusicObject/dataHdUrl Ljava/lang/String;
ifnull L2
aload 0
getfield com/sina/weibo/sdk/api/MusicObject/dataHdUrl Ljava/lang/String;
invokevirtual java/lang/String/length()I
sipush 512
if_icmple L2
ldc "Weibo.MusicObject"
ldc "checkArgs fail, dataHdUrl is invalid"
invokestatic com/sina/weibo/sdk/log/Log/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L2:
aload 0
getfield com/sina/weibo/sdk/api/MusicObject/duration I
ifgt L3
ldc "Weibo.MusicObject"
ldc "checkArgs fail, duration is invalid"
invokestatic com/sina/weibo/sdk/log/Log/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L3:
iconst_1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public getObjType()I
iconst_3
ireturn
.limit locals 1
.limit stack 1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
aload 0
aload 1
iload 2
invokespecial com/sina/weibo/sdk/api/BaseMediaObject/writeToParcel(Landroid/os/Parcel;I)V
aload 1
aload 0
getfield com/sina/weibo/sdk/api/MusicObject/h5Url Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 1
aload 0
getfield com/sina/weibo/sdk/api/MusicObject/dataUrl Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 1
aload 0
getfield com/sina/weibo/sdk/api/MusicObject/dataHdUrl Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 1
aload 0
getfield com/sina/weibo/sdk/api/MusicObject/duration I
invokevirtual android/os/Parcel/writeInt(I)V
return
.limit locals 3
.limit stack 3
.end method
