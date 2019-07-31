.bytecode 50.0
.class public synchronized com/nd/android/u/controller/bean/contact/ForwardingParam
.super java/lang/Object
.implements android/os/Parcelable
.inner class inner com/nd/android/u/controller/bean/contact/ForwardingParam$1

.field public static final 'CREATOR' Landroid/os/Parcelable$Creator; signature "Landroid/os/Parcelable$Creator<Lcom/nd/android/u/controller/bean/contact/ForwardingParam;>;"

.field public static final 'FWD_TYPE_AUDIO' I = 3


.field public static final 'FWD_TYPE_FILE' I = 5


.field public static final 'FWD_TYPE_MSG' I = 1


.field public static final 'FWD_TYPE_NONE' I = 0


.field public static final 'FWD_TYPE_PIC' I = 2


.field public static final 'FWD_TYPE_TEXT' I = 6


.field public static final 'FWD_TYPE_VIDEO' I = 4


.field public 'filePath' Ljava/lang/String;

.field public 'generateId' Ljava/lang/String;

.field public 'msgType' I

.field public 'type' I

.field public 'userId' J

.method static <clinit>()V
new com/nd/android/u/controller/bean/contact/ForwardingParam$1
dup
invokespecial com/nd/android/u/controller/bean/contact/ForwardingParam$1/<init>()V
putstatic com/nd/android/u/controller/bean/contact/ForwardingParam/CREATOR Landroid/os/Parcelable$Creator;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc2_w -1L
putfield com/nd/android/u/controller/bean/contact/ForwardingParam/userId J
return
.limit locals 1
.limit stack 3
.end method

.method private <init>(Landroid/os/Parcel;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc2_w -1L
putfield com/nd/android/u/controller/bean/contact/ForwardingParam/userId J
aload 0
aload 1
invokevirtual android/os/Parcel/readLong()J
putfield com/nd/android/u/controller/bean/contact/ForwardingParam/userId J
aload 0
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
putfield com/nd/android/u/controller/bean/contact/ForwardingParam/generateId Ljava/lang/String;
aload 0
aload 1
invokevirtual android/os/Parcel/readInt()I
putfield com/nd/android/u/controller/bean/contact/ForwardingParam/msgType I
return
.limit locals 2
.limit stack 3
.end method

.method synthetic <init>(Landroid/os/Parcel;Lcom/nd/android/u/controller/bean/contact/ForwardingParam;)V
aload 0
aload 1
invokespecial com/nd/android/u/controller/bean/contact/ForwardingParam/<init>(Landroid/os/Parcel;)V
return
.limit locals 3
.limit stack 2
.end method

.method public describeContents()I
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
aload 1
aload 0
getfield com/nd/android/u/controller/bean/contact/ForwardingParam/userId J
invokevirtual android/os/Parcel/writeLong(J)V
aload 1
aload 0
getfield com/nd/android/u/controller/bean/contact/ForwardingParam/generateId Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 1
aload 0
getfield com/nd/android/u/controller/bean/contact/ForwardingParam/msgType I
invokevirtual android/os/Parcel/writeInt(I)V
return
.limit locals 3
.limit stack 3
.end method
