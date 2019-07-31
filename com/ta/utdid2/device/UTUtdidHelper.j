.bytecode 50.0
.class public synchronized com/ta/utdid2/device/UTUtdidHelper
.super java/lang/Object

.field private static 'random' Ljava/util/Random;

.field private 'mAESKey' Ljava/lang/String;

.method static <clinit>()V
new java/util/Random
dup
invokespecial java/util/Random/<init>()V
putstatic com/ta/utdid2/device/UTUtdidHelper/random Ljava/util/Random;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc "XwYp8WL8bm6S4wu6yEYmLGy4RRRdJDIhxCBdk3CiNZTwGoj1bScVZEeVp9vBiiIsgwDtqZHP8QLoFM6o6MRYjW8QqyrZBI654mqoUk5SOLDyzordzOU5QhYguEJh54q3K1KqMEXpdEQJJjs1Urqjm2s4jgPfCZ4hMuIjAMRrEQluA7FeoqWMJOwghcLcPVleQ8PLzAcaKidybmwhvNAxIyKRpbZlcDjNCcUvsJYvyzEA9VUIaHkIAJ62lpA3EE3H"
putfield com/ta/utdid2/device/UTUtdidHelper/mAESKey Ljava/lang/String;
aload 0
aload 0
getfield com/ta/utdid2/device/UTUtdidHelper/mAESKey Ljava/lang/String;
invokevirtual java/lang/String/getBytes()[B
iconst_2
invokestatic com/ta/utdid2/android/utils/Base64/encodeToString([BI)Ljava/lang/String;
putfield com/ta/utdid2/device/UTUtdidHelper/mAESKey Ljava/lang/String;
return
.limit locals 1
.limit stack 3
.end method

.method public static generateRandomUTDID()Ljava/lang/String;
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 1
iconst_0
istore 0
L0:
iload 0
bipush 24
if_icmpge L1
aload 1
getstatic com/ta/utdid2/device/UTUtdidHelper/random Ljava/util/Random;
bipush 25
invokevirtual java/util/Random/nextInt(I)I
bipush 65
iadd
i2c
invokevirtual java/lang/StringBuffer/append(C)Ljava/lang/StringBuffer;
pop
iload 0
iconst_1
iadd
istore 0
goto L0
L1:
aload 1
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 3
.end method

.method public dePack(Ljava/lang/String;)Ljava/lang/String;
aload 0
getfield com/ta/utdid2/device/UTUtdidHelper/mAESKey Ljava/lang/String;
aload 1
invokestatic com/ta/utdid2/android/utils/AESUtils/decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method public pack([B)Ljava/lang/String;
aload 1
iconst_2
invokestatic com/ta/utdid2/android/utils/Base64/encodeToString([BI)Ljava/lang/String;
astore 1
aload 0
getfield com/ta/utdid2/device/UTUtdidHelper/mAESKey Ljava/lang/String;
aload 1
invokestatic com/ta/utdid2/android/utils/AESUtils/encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method public packUtdidStr(Ljava/lang/String;)Ljava/lang/String;
aload 0
getfield com/ta/utdid2/device/UTUtdidHelper/mAESKey Ljava/lang/String;
aload 1
invokestatic com/ta/utdid2/android/utils/AESUtils/encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method
