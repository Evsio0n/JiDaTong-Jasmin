.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/data/ReceiveItems
.super java/lang/Object
.implements com/nd/android/backpacksystem/data/VerifyObject
.implements java/lang/Comparable
.implements android/os/Parcelable
.signature "Ljava/lang/Object;Lcom/nd/android/backpacksystem/data/VerifyObject;Ljava/lang/Comparable<Lcom/nd/android/backpacksystem/data/ReceiveItems;>;Landroid/os/Parcelable;"
.inner class static final inner com/nd/android/backpacksystem/data/ReceiveItems$1

.field public static final 'CREATOR' Landroid/os/Parcelable$Creator; signature "Landroid/os/Parcelable$Creator<Lcom/nd/android/backpacksystem/data/ReceiveItems;>;"

.field private static final 'DAY_IN_MILLIS' I = 86400000


.field public 'mAmount' I

.field public 'mFromUid' J

.field public 'mItemType' J

.field public 'mMessage' Ljava/lang/String;

.field public 'mServerTime' J

.field public 'mUpdateTime' J

.field public 'mVoiceUrl' Ljava/lang/String;

.method static <clinit>()V
new com/nd/android/backpacksystem/data/ReceiveItems$1
dup
invokespecial com/nd/android/backpacksystem/data/ReceiveItems$1/<init>()V
putstatic com/nd/android/backpacksystem/data/ReceiveItems/CREATOR Landroid/os/Parcelable$Creator;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc2_w -1L
putfield com/nd/android/backpacksystem/data/ReceiveItems/mFromUid J
aload 0
ldc2_w -1L
putfield com/nd/android/backpacksystem/data/ReceiveItems/mItemType J
aload 0
iconst_m1
putfield com/nd/android/backpacksystem/data/ReceiveItems/mAmount I
aload 0
ldc2_w -1L
putfield com/nd/android/backpacksystem/data/ReceiveItems/mUpdateTime J
aload 0
ldc2_w -1L
putfield com/nd/android/backpacksystem/data/ReceiveItems/mServerTime J
return
.limit locals 1
.limit stack 3
.end method

.method private <init>(Landroid/os/Parcel;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc2_w -1L
putfield com/nd/android/backpacksystem/data/ReceiveItems/mFromUid J
aload 0
ldc2_w -1L
putfield com/nd/android/backpacksystem/data/ReceiveItems/mItemType J
aload 0
iconst_m1
putfield com/nd/android/backpacksystem/data/ReceiveItems/mAmount I
aload 0
ldc2_w -1L
putfield com/nd/android/backpacksystem/data/ReceiveItems/mUpdateTime J
aload 0
ldc2_w -1L
putfield com/nd/android/backpacksystem/data/ReceiveItems/mServerTime J
aload 0
aload 1
invokevirtual android/os/Parcel/readLong()J
putfield com/nd/android/backpacksystem/data/ReceiveItems/mFromUid J
aload 0
aload 1
invokevirtual android/os/Parcel/readLong()J
putfield com/nd/android/backpacksystem/data/ReceiveItems/mItemType J
aload 0
aload 1
invokevirtual android/os/Parcel/readInt()I
putfield com/nd/android/backpacksystem/data/ReceiveItems/mAmount I
aload 0
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
putfield com/nd/android/backpacksystem/data/ReceiveItems/mMessage Ljava/lang/String;
aload 0
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
putfield com/nd/android/backpacksystem/data/ReceiveItems/mVoiceUrl Ljava/lang/String;
aload 0
aload 1
invokevirtual android/os/Parcel/readLong()J
putfield com/nd/android/backpacksystem/data/ReceiveItems/mUpdateTime J
aload 0
aload 1
invokevirtual android/os/Parcel/readLong()J
putfield com/nd/android/backpacksystem/data/ReceiveItems/mServerTime J
return
.limit locals 2
.limit stack 3
.end method

.method synthetic <init>(Landroid/os/Parcel;Lcom/nd/android/backpacksystem/data/ReceiveItems$1;)V
aload 0
aload 1
invokespecial com/nd/android/backpacksystem/data/ReceiveItems/<init>(Landroid/os/Parcel;)V
return
.limit locals 3
.limit stack 2
.end method

.method public static Json2ReceiveItem(Lorg/json/JSONObject;)Lcom/nd/android/backpacksystem/data/ReceiveItems;
new com/nd/android/backpacksystem/data/ReceiveItems
dup
invokespecial com/nd/android/backpacksystem/data/ReceiveItems/<init>()V
astore 1
aload 0
ifnull L0
aload 1
aload 0
ldc "uid"
ldc2_w -1L
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;J)J
putfield com/nd/android/backpacksystem/data/ReceiveItems/mFromUid J
aload 1
aload 0
ldc "itemtype"
ldc2_w -1L
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;J)J
putfield com/nd/android/backpacksystem/data/ReceiveItems/mItemType J
aload 1
aload 0
ldc "count"
iconst_m1
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;I)I
putfield com/nd/android/backpacksystem/data/ReceiveItems/mAmount I
aload 1
aload 0
ldc "message"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/backpacksystem/data/ReceiveItems/mMessage Ljava/lang/String;
aload 1
aload 0
ldc "voiceurl"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/backpacksystem/data/ReceiveItems/mVoiceUrl Ljava/lang/String;
aload 1
aload 0
ldc "updatetime"
ldc2_w -1L
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;J)J
putfield com/nd/android/backpacksystem/data/ReceiveItems/mUpdateTime J
aload 1
aload 0
ldc "servertime"
ldc2_w -1L
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;J)J
putfield com/nd/android/backpacksystem/data/ReceiveItems/mServerTime J
L0:
aload 1
areturn
.limit locals 2
.limit stack 5
.end method

.method public compareTo(Lcom/nd/android/backpacksystem/data/ReceiveItems;)I
aload 0
getfield com/nd/android/backpacksystem/data/ReceiveItems/mUpdateTime J
aload 1
getfield com/nd/android/backpacksystem/data/ReceiveItems/mUpdateTime J
lcmp
ifne L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/backpacksystem/data/ReceiveItems/mUpdateTime J
aload 1
getfield com/nd/android/backpacksystem/data/ReceiveItems/mUpdateTime J
lcmp
ifle L1
iconst_m1
ireturn
L1:
iconst_1
ireturn
.limit locals 2
.limit stack 4
.end method

.method public volatile synthetic compareTo(Ljava/lang/Object;)I
aload 0
aload 1
checkcast com/nd/android/backpacksystem/data/ReceiveItems
invokevirtual com/nd/android/backpacksystem/data/ReceiveItems/compareTo(Lcom/nd/android/backpacksystem/data/ReceiveItems;)I
ireturn
.limit locals 2
.limit stack 2
.end method

.method public describeContents()I
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public formatTime()Ljava/lang/String;
aload 0
getfield com/nd/android/backpacksystem/data/ReceiveItems/mUpdateTime J
lconst_0
lcmp
ifge L0
ldc ""
areturn
L0:
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
astore 6
aload 6
aload 0
getfield com/nd/android/backpacksystem/data/ReceiveItems/mServerTime J
ldc2_w 1000L
ldiv
invokevirtual java/util/Calendar/setTimeInMillis(J)V
aload 6
iconst_5
invokevirtual java/util/Calendar/get(I)I
istore 2
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
astore 7
aload 7
aload 0
getfield com/nd/android/backpacksystem/data/ReceiveItems/mUpdateTime J
ldc2_w 1000L
ldiv
invokevirtual java/util/Calendar/setTimeInMillis(J)V
aload 7
iconst_5
invokevirtual java/util/Calendar/get(I)I
istore 3
aload 7
bipush 11
invokevirtual java/util/Calendar/get(I)I
istore 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 8
aload 7
aload 6
invokevirtual java/util/Calendar/after(Ljava/lang/Object;)Z
ifeq L1
aload 8
ldc "\u6765\u81ea\u672a\u6765"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L2:
aload 8
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L1:
aload 6
invokevirtual java/util/Calendar/getTimeInMillis()J
aload 7
invokevirtual java/util/Calendar/getTimeInMillis()J
lsub
ldc2_w 86400000L
ldiv
lstore 4
lload 4
lconst_0
lcmp
ifne L3
iload 2
iload 3
if_icmpne L4
lconst_1
aload 6
invokevirtual java/util/Calendar/getTimeInMillis()J
aload 7
invokevirtual java/util/Calendar/getTimeInMillis()J
lsub
ldc2_w 1000L
ldiv
invokestatic java/lang/Math/max(JJ)J
lstore 4
bipush 60
bipush 60
imul
istore 2
lload 4
bipush 60
i2l
lcmp
ifge L5
aload 8
lload 4
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "\u79d2\u524d"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L5:
lload 4
iload 2
i2l
lcmp
ifge L6
aload 8
lload 4
bipush 60
i2l
ldiv
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "\u5206\u949f\u524d"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L6:
lload 4
bipush 60
sipush 3600
imul
i2l
lcmp
ifge L7
aload 8
lload 4
iload 2
i2l
ldiv
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "\u5c0f\u65f6\u524d"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L4:
aload 8
ldc "\u6628\u5929"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L7:
iload 1
iconst_5
if_icmplt L8
iload 1
bipush 6
if_icmpge L8
aload 8
ldc "\u6e05\u6668"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L2
L3:
lload 4
lconst_1
lcmp
ifne L9
aload 8
ldc "\u6628\u5929"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L7
L9:
lload 4
ldc2_w 7L
lcmp
iflt L10
aload 8
bipush 7
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "\u5929\u524d"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L7
L10:
aload 8
lload 4
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "\u5929\u524d"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L7
L8:
iload 1
bipush 6
if_icmplt L11
iload 1
bipush 8
if_icmpge L11
aload 8
ldc "\u65e9\u6668"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L2
L11:
iload 1
bipush 8
if_icmplt L12
iload 1
bipush 11
if_icmpge L12
aload 8
ldc "\u4e0a\u5348"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L2
L12:
iload 1
bipush 11
if_icmplt L13
iload 1
bipush 13
if_icmpge L13
aload 8
ldc "\u4e2d\u5348"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L2
L13:
iload 1
bipush 13
if_icmplt L14
iload 1
bipush 17
if_icmpge L14
aload 8
ldc "\u4e0b\u5348"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L2
L14:
iload 1
bipush 17
if_icmplt L15
iload 1
bipush 18
if_icmpge L15
aload 8
ldc "\u508d\u665a"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L2
L15:
iload 1
bipush 18
if_icmplt L16
iload 1
bipush 23
if_icmpge L16
aload 8
ldc "\u665a\u4e0a"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L2
L16:
iload 1
bipush 23
if_icmpge L17
iload 1
iconst_1
if_icmpge L18
L17:
aload 8
ldc "\u5348\u591c"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L2
L18:
iload 1
iconst_1
if_icmplt L19
iload 1
iconst_3
if_icmpge L19
aload 8
ldc "\u51cc\u6668"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L2
L19:
iload 1
iconst_3
if_icmplt L2
iload 1
iconst_5
if_icmpge L2
aload 8
ldc "\u9ece\u660e"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L2
.limit locals 9
.limit stack 6
.end method

.method public getKey()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/backpacksystem/data/ReceiveItems/mFromUid J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "_"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/backpacksystem/data/ReceiveItems/mUpdateTime J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method

.method public isObjectValid()Z
aload 0
getfield com/nd/android/backpacksystem/data/ReceiveItems/mFromUid J
ldc2_w -1L
lcmp
ifle L0
aload 0
getfield com/nd/android/backpacksystem/data/ReceiveItems/mItemType J
ldc2_w -1L
lcmp
ifle L0
aload 0
getfield com/nd/android/backpacksystem/data/ReceiveItems/mAmount I
ifle L0
aload 0
getfield com/nd/android/backpacksystem/data/ReceiveItems/mUpdateTime J
ldc2_w -1L
lcmp
ifle L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
aload 1
aload 0
getfield com/nd/android/backpacksystem/data/ReceiveItems/mFromUid J
invokevirtual android/os/Parcel/writeLong(J)V
aload 1
aload 0
getfield com/nd/android/backpacksystem/data/ReceiveItems/mItemType J
invokevirtual android/os/Parcel/writeLong(J)V
aload 1
aload 0
getfield com/nd/android/backpacksystem/data/ReceiveItems/mAmount I
invokevirtual android/os/Parcel/writeInt(I)V
aload 1
aload 0
getfield com/nd/android/backpacksystem/data/ReceiveItems/mMessage Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 1
aload 0
getfield com/nd/android/backpacksystem/data/ReceiveItems/mVoiceUrl Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 1
aload 0
getfield com/nd/android/backpacksystem/data/ReceiveItems/mUpdateTime J
invokevirtual android/os/Parcel/writeLong(J)V
aload 1
aload 0
getfield com/nd/android/backpacksystem/data/ReceiveItems/mServerTime J
invokevirtual android/os/Parcel/writeLong(J)V
return
.limit locals 3
.limit stack 3
.end method
