.bytecode 50.0
.class public synchronized com/sina/weibo/sdk/api/TextObject
.super com/sina/weibo/sdk/api/BaseMediaObject
.inner class inner com/sina/weibo/sdk/api/TextObject$1

.field public static final 'CREATOR' Landroid/os/Parcelable$Creator; signature "Landroid/os/Parcelable$Creator<Lcom/sina/weibo/sdk/api/TextObject;>;"

.field public 'text' Ljava/lang/String;

.method static <clinit>()V
new com/sina/weibo/sdk/api/TextObject$1
dup
invokespecial com/sina/weibo/sdk/api/TextObject$1/<init>()V
putstatic com/sina/weibo/sdk/api/TextObject/CREATOR Landroid/os/Parcelable$Creator;
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
invokespecial com/sina/weibo/sdk/api/BaseMediaObject/<init>()V
aload 0
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
putfield com/sina/weibo/sdk/api/TextObject/text Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public checkArgs()Z
aload 0
getfield com/sina/weibo/sdk/api/TextObject/text Ljava/lang/String;
ifnull L0
aload 0
getfield com/sina/weibo/sdk/api/TextObject/text Ljava/lang/String;
invokevirtual java/lang/String/length()I
ifeq L0
aload 0
getfield com/sina/weibo/sdk/api/TextObject/text Ljava/lang/String;
invokevirtual java/lang/String/length()I
sipush 1024
if_icmple L1
L0:
ldc "Weibo.TextObject"
ldc "checkArgs fail, text is invalid"
invokestatic com/sina/weibo/sdk/log/Log/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L1:
iconst_1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public describeContents()I
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getObjType()I
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
aload 1
aload 0
getfield com/sina/weibo/sdk/api/TextObject/text Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
return
.limit locals 3
.limit stack 2
.end method
