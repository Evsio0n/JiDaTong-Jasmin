.bytecode 50.0
.class public synchronized com/product/android/commonInterface/chat/SearchContract
.super java/lang/Object
.implements android/os/Parcelable
.inner class static final inner com/product/android/commonInterface/chat/SearchContract$1

.field public static final 'CREATOR' Landroid/os/Parcelable$Creator; signature "Landroid/os/Parcelable$Creator<Lcom/product/android/commonInterface/chat/SearchContract;>;"

.field private 'classid' Ljava/lang/String;

.field private 'deptid' Ljava/lang/String;

.field private 'fgid' I

.field private 'fid' J

.field private 'isChecked' Z

.field private 'isFriend' Z

.field private 'mobilephone' Ljava/lang/String;

.field private 'note' Ljava/lang/String;

.field private 'signature' Ljava/lang/String;

.field private 'sysavatar' I

.field private 'telephone' Ljava/lang/String;

.field private 'uapuid' J

.field private 'username' Ljava/lang/String;

.field private 'workid' Ljava/lang/String;

.method static <clinit>()V
new com/product/android/commonInterface/chat/SearchContract$1
dup
invokespecial com/product/android/commonInterface/chat/SearchContract$1/<init>()V
putstatic com/product/android/commonInterface/chat/SearchContract/CREATOR Landroid/os/Parcelable$Creator;
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

.method private <init>(Landroid/os/Parcel;)V
iconst_1
istore 2
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
putfield com/product/android/commonInterface/chat/SearchContract/username Ljava/lang/String;
aload 0
aload 1
invokevirtual android/os/Parcel/readString()Ljava/lang/String;
putfield com/product/android/commonInterface/chat/SearchContract/mobilephone Ljava/lang/String;
aload 0
aload 1
invokevirtual android/os/Parcel/readLong()J
putfield com/product/android/commonInterface/chat/SearchContract/fid J
aload 0
aload 1
invokevirtual android/os/Parcel/readLong()J
putfield com/product/android/commonInterface/chat/SearchContract/uapuid J
aload 1
invokevirtual android/os/Parcel/readInt()I
iconst_1
if_icmpne L0
L1:
aload 0
iload 2
putfield com/product/android/commonInterface/chat/SearchContract/isChecked Z
aload 0
aload 1
invokevirtual android/os/Parcel/readInt()I
putfield com/product/android/commonInterface/chat/SearchContract/sysavatar I
return
L0:
iconst_0
istore 2
goto L1
.limit locals 3
.limit stack 3
.end method

.method synthetic <init>(Landroid/os/Parcel;Lcom/product/android/commonInterface/chat/SearchContract$1;)V
aload 0
aload 1
invokespecial com/product/android/commonInterface/chat/SearchContract/<init>(Landroid/os/Parcel;)V
return
.limit locals 3
.limit stack 2
.end method

.method public cloneContract(I)Lcom/product/android/commonInterface/chat/SearchContract;
new com/product/android/commonInterface/chat/SearchContract
dup
invokespecial com/product/android/commonInterface/chat/SearchContract/<init>()V
astore 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
astore 3
iload 1
tableswitch 1
L0
L1
L2
default : L3
L3:
aload 2
aload 0
getfield com/product/android/commonInterface/chat/SearchContract/fid J
putfield com/product/android/commonInterface/chat/SearchContract/fid J
aload 2
aload 0
getfield com/product/android/commonInterface/chat/SearchContract/uapuid J
putfield com/product/android/commonInterface/chat/SearchContract/uapuid J
aload 2
aload 0
getfield com/product/android/commonInterface/chat/SearchContract/sysavatar I
putfield com/product/android/commonInterface/chat/SearchContract/sysavatar I
aload 2
aload 0
getfield com/product/android/commonInterface/chat/SearchContract/signature Ljava/lang/String;
putfield com/product/android/commonInterface/chat/SearchContract/signature Ljava/lang/String;
aload 2
aload 0
invokevirtual com/product/android/commonInterface/chat/SearchContract/getRelTelePhone()Ljava/lang/String;
putfield com/product/android/commonInterface/chat/SearchContract/telephone Ljava/lang/String;
aload 2
areturn
L0:
aload 2
aload 0
getfield com/product/android/commonInterface/chat/SearchContract/fgid I
putfield com/product/android/commonInterface/chat/SearchContract/fgid I
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual com/product/android/commonInterface/chat/SearchContract/getComment()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
getstatic com/nd/android/u/allcommon/R$string/friend I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/chat/SearchContract/setUsername(Ljava/lang/String;)V
goto L3
L1:
aload 2
aload 0
getfield com/product/android/commonInterface/chat/SearchContract/classid Ljava/lang/String;
putfield com/product/android/commonInterface/chat/SearchContract/classid Ljava/lang/String;
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual com/product/android/commonInterface/chat/SearchContract/getComment()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
getstatic com/nd/android/u/allcommon/R$string/edittxtnull_title I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/chat/SearchContract/setUsername(Ljava/lang/String;)V
goto L3
L2:
aload 2
aload 0
getfield com/product/android/commonInterface/chat/SearchContract/deptid Ljava/lang/String;
putfield com/product/android/commonInterface/chat/SearchContract/deptid Ljava/lang/String;
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual com/product/android/commonInterface/chat/SearchContract/getComment()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
getstatic com/nd/android/u/allcommon/R$string/receive_staff I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/chat/SearchContract/setUsername(Ljava/lang/String;)V
goto L3
.limit locals 4
.limit stack 4
.end method

.method public describeContents()I
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getClassid()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/chat/SearchContract/classid Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getComment()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/chat/SearchContract/note Ljava/lang/String;
ifnull L0
aload 0
getfield com/product/android/commonInterface/chat/SearchContract/note Ljava/lang/String;
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 0
getfield com/product/android/commonInterface/chat/SearchContract/note Ljava/lang/String;
ldc "null"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
aload 0
getfield com/product/android/commonInterface/chat/SearchContract/username Ljava/lang/String;
areturn
L1:
aload 0
getfield com/product/android/commonInterface/chat/SearchContract/note Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getDeptid()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/chat/SearchContract/deptid Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFgid()I
aload 0
getfield com/product/android/commonInterface/chat/SearchContract/fgid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getFid()J
aload 0
getfield com/product/android/commonInterface/chat/SearchContract/fid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getMobilephone()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/chat/SearchContract/mobilephone Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getNote()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/chat/SearchContract/note Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getRelTelePhone()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/chat/SearchContract/telephone Ljava/lang/String;
ifnull L0
aload 0
getfield com/product/android/commonInterface/chat/SearchContract/telephone Ljava/lang/String;
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 0
getfield com/product/android/commonInterface/chat/SearchContract/telephone Ljava/lang/String;
ldc "null"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
aload 0
getfield com/product/android/commonInterface/chat/SearchContract/mobilephone Ljava/lang/String;
areturn
L1:
aload 0
getfield com/product/android/commonInterface/chat/SearchContract/telephone Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getSignature()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/chat/SearchContract/signature Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSysavatar()I
aload 0
getfield com/product/android/commonInterface/chat/SearchContract/sysavatar I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getTelephone()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/chat/SearchContract/telephone Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUapuid()J
aload 0
getfield com/product/android/commonInterface/chat/SearchContract/uapuid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getUsername()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/chat/SearchContract/username Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getWorkid()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/chat/SearchContract/workid Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public isChecked()Z
aload 0
getfield com/product/android/commonInterface/chat/SearchContract/isChecked Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isFriend()Z
aload 0
getfield com/product/android/commonInterface/chat/SearchContract/isFriend Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setChecked(Z)V
aload 0
iload 1
putfield com/product/android/commonInterface/chat/SearchContract/isChecked Z
return
.limit locals 2
.limit stack 2
.end method

.method public setClassid(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/chat/SearchContract/classid Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setDeptid(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/chat/SearchContract/deptid Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setFgid(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/chat/SearchContract/fgid I
return
.limit locals 2
.limit stack 2
.end method

.method public setFid(J)V
aload 0
lload 1
putfield com/product/android/commonInterface/chat/SearchContract/fid J
return
.limit locals 3
.limit stack 3
.end method

.method public setIsFriend(Z)V
aload 0
iload 1
putfield com/product/android/commonInterface/chat/SearchContract/isFriend Z
return
.limit locals 2
.limit stack 2
.end method

.method public setMobilephone(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/chat/SearchContract/mobilephone Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setNote(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/chat/SearchContract/note Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setSignature(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/chat/SearchContract/signature Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setSysavatar(I)V
aload 0
iload 1
putfield com/product/android/commonInterface/chat/SearchContract/sysavatar I
return
.limit locals 2
.limit stack 2
.end method

.method public setTelephone(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/chat/SearchContract/telephone Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUapuid(J)V
aload 0
lload 1
putfield com/product/android/commonInterface/chat/SearchContract/uapuid J
return
.limit locals 3
.limit stack 3
.end method

.method public setUsername(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/chat/SearchContract/username Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setWorkid(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/chat/SearchContract/workid Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
aload 1
aload 0
getfield com/product/android/commonInterface/chat/SearchContract/username Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 1
aload 0
getfield com/product/android/commonInterface/chat/SearchContract/mobilephone Ljava/lang/String;
invokevirtual android/os/Parcel/writeString(Ljava/lang/String;)V
aload 1
aload 0
getfield com/product/android/commonInterface/chat/SearchContract/fid J
invokevirtual android/os/Parcel/writeLong(J)V
aload 1
aload 0
getfield com/product/android/commonInterface/chat/SearchContract/uapuid J
invokevirtual android/os/Parcel/writeLong(J)V
aload 0
getfield com/product/android/commonInterface/chat/SearchContract/isChecked Z
ifeq L0
iconst_1
istore 2
L1:
aload 1
iload 2
invokevirtual android/os/Parcel/writeInt(I)V
aload 1
aload 0
getfield com/product/android/commonInterface/chat/SearchContract/sysavatar I
invokevirtual android/os/Parcel/writeInt(I)V
return
L0:
iconst_0
istore 2
goto L1
.limit locals 3
.limit stack 3
.end method
