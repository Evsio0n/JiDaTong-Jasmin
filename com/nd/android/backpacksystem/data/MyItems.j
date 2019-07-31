.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/data/MyItems
.super java/lang/Object
.implements com/nd/android/backpacksystem/data/VerifyObject
.implements java/lang/Comparable
.implements android/os/Parcelable
.signature "Ljava/lang/Object;Lcom/nd/android/backpacksystem/data/VerifyObject;Ljava/lang/Comparable<Lcom/nd/android/backpacksystem/data/MyItems;>;Landroid/os/Parcelable;"
.inner class static final inner com/nd/android/backpacksystem/data/MyItems$1

.field public static final 'CREATOR' Landroid/os/Parcelable$Creator; signature "Landroid/os/Parcelable$Creator<Lcom/nd/android/backpacksystem/data/MyItems;>;"

.field private static final '_24_HOUR_IN_MILLIS' I = 86400000


.field private 'mAmount' I

.field private 'mDelTime' J

.field private 'mIsInWhiteList' Z

.field private 'mItemId' J

.field private 'mItemTypeId' I

.field private 'mServerTime' J

.field private 'mSourceId' J

.field private 'mSourceStr' Ljava/lang/String;

.field private 'mSourceType' I

.method static <clinit>()V
new com/nd/android/backpacksystem/data/MyItems$1
dup
invokespecial com/nd/android/backpacksystem/data/MyItems$1/<init>()V
putstatic com/nd/android/backpacksystem/data/MyItems/CREATOR Landroid/os/Parcelable$Creator;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc2_w -1L
putfield com/nd/android/backpacksystem/data/MyItems/mItemId J
aload 0
iconst_m1
putfield com/nd/android/backpacksystem/data/MyItems/mItemTypeId I
aload 0
iconst_m1
putfield com/nd/android/backpacksystem/data/MyItems/mAmount I
aload 0
ldc2_w -1L
putfield com/nd/android/backpacksystem/data/MyItems/mDelTime J
aload 0
ldc2_w -1L
putfield com/nd/android/backpacksystem/data/MyItems/mServerTime J
aload 0
ldc ""
putfield com/nd/android/backpacksystem/data/MyItems/mSourceStr Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/android/backpacksystem/data/MyItems/mIsInWhiteList Z
return
.limit locals 1
.limit stack 3
.end method

.method private <init>(Landroid/os/Parcel;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc2_w -1L
putfield com/nd/android/backpacksystem/data/MyItems/mItemId J
aload 0
iconst_m1
putfield com/nd/android/backpacksystem/data/MyItems/mItemTypeId I
aload 0
iconst_m1
putfield com/nd/android/backpacksystem/data/MyItems/mAmount I
aload 0
ldc2_w -1L
putfield com/nd/android/backpacksystem/data/MyItems/mDelTime J
aload 0
ldc2_w -1L
putfield com/nd/android/backpacksystem/data/MyItems/mServerTime J
aload 0
ldc ""
putfield com/nd/android/backpacksystem/data/MyItems/mSourceStr Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/android/backpacksystem/data/MyItems/mIsInWhiteList Z
aload 0
aload 1
invokevirtual android/os/Parcel/readLong()J
putfield com/nd/android/backpacksystem/data/MyItems/mItemId J
aload 0
aload 1
invokevirtual android/os/Parcel/readInt()I
putfield com/nd/android/backpacksystem/data/MyItems/mItemTypeId I
aload 0
aload 1
invokevirtual android/os/Parcel/readInt()I
putfield com/nd/android/backpacksystem/data/MyItems/mAmount I
aload 0
aload 1
invokevirtual android/os/Parcel/readLong()J
putfield com/nd/android/backpacksystem/data/MyItems/mDelTime J
aload 0
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
putfield com/nd/android/backpacksystem/data/MyItems/mSourceStr Ljava/lang/String;
return
.limit locals 2
.limit stack 3
.end method

.method synthetic <init>(Landroid/os/Parcel;Lcom/nd/android/backpacksystem/data/MyItems$1;)V
aload 0
aload 1
invokespecial com/nd/android/backpacksystem/data/MyItems/<init>(Landroid/os/Parcel;)V
return
.limit locals 3
.limit stack 2
.end method

.method public static Json2MyItem(Lorg/json/JSONObject;)Ljava/util/List;
.signature "(Lorg/json/JSONObject;)Ljava/util/List<Lcom/nd/android/backpacksystem/data/MyItems;>;"
.catch org/json/JSONException from L0 to L1 using L2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 7
aload 0
ifnull L3
aload 0
ldc "itemtype"
iconst_m1
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;I)I
istore 2
iload 2
iconst_m1
if_icmpne L4
L3:
aload 7
areturn
L4:
aload 0
ldc "servertime"
ldc2_w -1L
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;J)J
lstore 4
lload 4
ldc2_w -1L
lcmp
ifeq L3
aload 0
ldc "itemids"
invokevirtual org/json/JSONObject/optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 8
aload 8
ifnull L3
aload 8
invokevirtual org/json/JSONArray/length()I
istore 3
iconst_0
istore 1
L5:
iload 1
iload 3
if_icmpge L3
aconst_null
astore 0
L0:
aload 8
iload 1
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 6
L1:
aload 6
astore 0
L6:
aload 0
ifnull L7
new com/nd/android/backpacksystem/data/MyItems
dup
invokespecial com/nd/android/backpacksystem/data/MyItems/<init>()V
astore 6
aload 6
iload 2
putfield com/nd/android/backpacksystem/data/MyItems/mItemTypeId I
aload 6
aload 0
ldc "itemid"
ldc2_w -1L
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;J)J
putfield com/nd/android/backpacksystem/data/MyItems/mItemId J
aload 6
aload 0
ldc "amount"
iconst_m1
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;I)I
putfield com/nd/android/backpacksystem/data/MyItems/mAmount I
aload 6
aload 0
ldc "del_time"
ldc2_w -1L
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;J)J
putfield com/nd/android/backpacksystem/data/MyItems/mDelTime J
aload 6
lload 4
putfield com/nd/android/backpacksystem/data/MyItems/mServerTime J
aload 6
invokevirtual com/nd/android/backpacksystem/data/MyItems/isObjectValid()Z
ifeq L7
aload 7
aload 6
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L7:
iload 1
iconst_1
iadd
istore 1
goto L5
L2:
astore 6
aload 6
invokevirtual org/json/JSONException/printStackTrace()V
goto L6
.limit locals 9
.limit stack 5
.end method

.method public compareTo(Lcom/nd/android/backpacksystem/data/MyItems;)I
aload 0
getfield com/nd/android/backpacksystem/data/MyItems/mItemId J
aload 1
getfield com/nd/android/backpacksystem/data/MyItems/mItemId J
lcmp
ifne L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/backpacksystem/data/MyItems/mItemId J
aload 1
getfield com/nd/android/backpacksystem/data/MyItems/mItemId J
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
checkcast com/nd/android/backpacksystem/data/MyItems
invokevirtual com/nd/android/backpacksystem/data/MyItems/compareTo(Lcom/nd/android/backpacksystem/data/MyItems;)I
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

.method public formatDelTime()Ljava/lang/String;
aload 0
getfield com/nd/android/backpacksystem/data/MyItems/mDelTime J
lconst_0
lcmp
ifne L0
ldc ""
areturn
L0:
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
astore 7
aload 7
aload 0
getfield com/nd/android/backpacksystem/data/MyItems/mServerTime J
ldc2_w 1000L
ldiv
invokevirtual java/util/Calendar/setTimeInMillis(J)V
aload 7
iconst_1
invokevirtual java/util/Calendar/get(I)I
istore 5
aload 7
aload 0
getfield com/nd/android/backpacksystem/data/MyItems/mDelTime J
ldc2_w 1000L
ldiv
invokevirtual java/util/Calendar/setTimeInMillis(J)V
aload 7
iconst_1
invokevirtual java/util/Calendar/get(I)I
istore 6
aload 7
iconst_2
invokevirtual java/util/Calendar/get(I)I
istore 1
aload 7
iconst_5
invokevirtual java/util/Calendar/get(I)I
istore 2
aload 7
bipush 11
invokevirtual java/util/Calendar/get(I)I
istore 3
aload 7
bipush 12
invokevirtual java/util/Calendar/get(I)I
istore 4
new java/lang/StringBuilder
dup
ldc "\u81f3"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 7
iload 6
iload 5
if_icmpeq L1
iload 6
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
astore 8
aload 8
invokevirtual java/lang/String/length()I
istore 5
iload 5
iconst_2
if_icmpge L2
aload 7
aload 8
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L3:
aload 7
bipush 47
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
L1:
aload 7
iload 1
iconst_1
iadd
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
bipush 47
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
iload 3
ifne L4
iload 4
ifeq L5
L4:
aload 7
bipush 45
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
invokestatic java/util/Locale/getDefault()Ljava/util/Locale;
ldc "%02d"
iconst_1
anewarray java/lang/Object
dup
iconst_0
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 58
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
invokestatic java/util/Locale/getDefault()Ljava/util/Locale;
ldc "%02d"
iconst_1
anewarray java/lang/Object
dup
iconst_0
iload 4
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L5:
aload 7
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L2:
aload 7
aload 8
iload 5
iconst_2
isub
iconst_1
iadd
iload 5
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L3
.limit locals 9
.limit stack 7
.end method

.method public getAmount()I
aload 0
getfield com/nd/android/backpacksystem/data/MyItems/mAmount I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItemId()J
aload 0
getfield com/nd/android/backpacksystem/data/MyItems/mItemId J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getItemTypeId()I
aload 0
getfield com/nd/android/backpacksystem/data/MyItems/mItemTypeId I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getServerTime()J
aload 0
getfield com/nd/android/backpacksystem/data/MyItems/mServerTime J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getSourceId()J
aload 0
getfield com/nd/android/backpacksystem/data/MyItems/mSourceId J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getSourceStr()Ljava/lang/String;
aload 0
getfield com/nd/android/backpacksystem/data/MyItems/mSourceStr Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSourceType()I
aload 0
getfield com/nd/android/backpacksystem/data/MyItems/mSourceType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public hasExpire()Z
aload 0
getfield com/nd/android/backpacksystem/data/MyItems/mDelTime J
lconst_0
lcmp
ifne L0
L1:
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/backpacksystem/data/MyItems/mServerTime J
aload 0
getfield com/nd/android/backpacksystem/data/MyItems/mDelTime J
lcmp
ifle L1
iconst_1
ireturn
.limit locals 1
.limit stack 4
.end method

.method public isInWhiteList()Z
aload 0
getfield com/nd/android/backpacksystem/data/MyItems/mIsInWhiteList Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isObjectValid()Z
aload 0
getfield com/nd/android/backpacksystem/data/MyItems/mItemId J
ldc2_w -1L
lcmp
ifle L0
aload 0
getfield com/nd/android/backpacksystem/data/MyItems/mItemTypeId I
i2l
invokestatic com/nd/android/backpacksystem/data/ItemType/valueToType(J)Lcom/nd/android/backpacksystem/data/ItemType;
ifnull L0
aload 0
getfield com/nd/android/backpacksystem/data/MyItems/mAmount I
iflt L0
aload 0
getfield com/nd/android/backpacksystem/data/MyItems/mDelTime J
lconst_0
lcmp
iflt L0
aload 0
getfield com/nd/android/backpacksystem/data/MyItems/mServerTime J
lconst_0
lcmp
iflt L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 4
.end method

.method public isWithIn24Hours()Z
aload 0
getfield com/nd/android/backpacksystem/data/MyItems/mDelTime J
lconst_0
lcmp
ifne L0
L1:
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/backpacksystem/data/MyItems/mServerTime J
ldc2_w 1000L
ldiv
lstore 1
aload 0
getfield com/nd/android/backpacksystem/data/MyItems/mDelTime J
ldc2_w 1000L
ldiv
lload 1
lsub
ldc2_w 86400000L
lcmp
ifge L1
iconst_1
ireturn
.limit locals 3
.limit stack 4
.end method

.method public setAmount(I)V
aload 0
iload 1
putfield com/nd/android/backpacksystem/data/MyItems/mAmount I
return
.limit locals 2
.limit stack 2
.end method

.method public setDelTime(J)V
aload 0
lload 1
putfield com/nd/android/backpacksystem/data/MyItems/mDelTime J
return
.limit locals 3
.limit stack 3
.end method

.method public setItemId(J)V
aload 0
lload 1
putfield com/nd/android/backpacksystem/data/MyItems/mItemId J
return
.limit locals 3
.limit stack 3
.end method

.method public setItemTypeId(I)V
aload 0
iload 1
putfield com/nd/android/backpacksystem/data/MyItems/mItemTypeId I
return
.limit locals 2
.limit stack 2
.end method

.method public setServerTime(J)V
aload 0
lload 1
putfield com/nd/android/backpacksystem/data/MyItems/mServerTime J
return
.limit locals 3
.limit stack 3
.end method

.method public setSourceId(J)V
aload 0
lload 1
putfield com/nd/android/backpacksystem/data/MyItems/mSourceId J
return
.limit locals 3
.limit stack 3
.end method

.method public setSourceStr(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/data/MyItems/mSourceStr Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setSourceType(I)V
aload 0
iload 1
putfield com/nd/android/backpacksystem/data/MyItems/mSourceType I
return
.limit locals 2
.limit stack 2
.end method

.method public setWhiteListFlag(Z)V
aload 0
iload 1
putfield com/nd/android/backpacksystem/data/MyItems/mIsInWhiteList Z
return
.limit locals 2
.limit stack 2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
aload 1
aload 0
getfield com/nd/android/backpacksystem/data/MyItems/mItemId J
invokevirtual android/os/Parcel/writeLong(J)V
aload 1
aload 0
getfield com/nd/android/backpacksystem/data/MyItems/mItemTypeId I
invokevirtual android/os/Parcel/writeInt(I)V
aload 1
aload 0
getfield com/nd/android/backpacksystem/data/MyItems/mAmount I
invokevirtual android/os/Parcel/writeInt(I)V
aload 1
aload 0
getfield com/nd/android/backpacksystem/data/MyItems/mDelTime J
invokevirtual android/os/Parcel/writeLong(J)V
aload 1
aload 0
getfield com/nd/android/backpacksystem/data/MyItems/mSourceStr Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
return
.limit locals 3
.limit stack 3
.end method
