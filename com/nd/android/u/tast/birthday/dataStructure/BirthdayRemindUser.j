.bytecode 50.0
.class public synchronized com/nd/android/u/tast/birthday/dataStructure/BirthdayRemindUser
.super java/lang/Object

.field public static final 'LOVE' I = 1


.field public static final 'LOVE_FIVEDAYS_NOTMIND' I = 0


.field public static final 'LOVE_TODAY_NOTMIND' I = 1


.field public static final 'OTHER' I = 0


.field public static final 'TODAY_ISMIND' I = 2


.field private 'mBirthday' Ljava/lang/String;

.field private 'mDescription' Ljava/lang/String;

.field private 'mFid' J

.field private 'mMind' I

.field private 'mUid' J

.field private 'mUserName' Ljava/lang/String;

.field private 'mUserType' I

.field private 'mWorkId' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/tast/birthday/dataStructure/BirthdayRemindUser/mMind I
return
.limit locals 1
.limit stack 2
.end method

.method public getBirthday()Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/birthday/dataStructure/BirthdayRemindUser/mBirthday Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getDescription()Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/birthday/dataStructure/BirthdayRemindUser/mDescription Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFid()J
aload 0
getfield com/nd/android/u/tast/birthday/dataStructure/BirthdayRemindUser/mFid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getMind()I
aload 0
getfield com/nd/android/u/tast/birthday/dataStructure/BirthdayRemindUser/mMind I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUid()J
aload 0
getfield com/nd/android/u/tast/birthday/dataStructure/BirthdayRemindUser/mUid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getUserName()Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/birthday/dataStructure/BirthdayRemindUser/mUserName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUserType()I
aload 0
getfield com/nd/android/u/tast/birthday/dataStructure/BirthdayRemindUser/mUserType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getWorkId()Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/birthday/dataStructure/BirthdayRemindUser/mWorkId Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public parseJson(Lorg/json/JSONObject;)V
.catch org/json/JSONException from L0 to L1 using L2
aload 1
ifnonnull L0
return
L0:
aload 0
aload 1
ldc "uid"
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
invokevirtual com/nd/android/u/tast/birthday/dataStructure/BirthdayRemindUser/setFid(J)V
aload 0
aload 1
ldc "type"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
invokevirtual com/nd/android/u/tast/birthday/dataStructure/BirthdayRemindUser/setUserType(I)V
aload 0
aload 1
ldc "username"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/u/tast/birthday/dataStructure/BirthdayRemindUser/setUserName(Ljava/lang/String;)V
aload 0
aload 1
ldc "workid"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/u/tast/birthday/dataStructure/BirthdayRemindUser/setWorkId(Ljava/lang/String;)V
aload 0
aload 1
ldc "birthday"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/u/tast/birthday/dataStructure/BirthdayRemindUser/setBirthday(Ljava/lang/String;)V
L1:
return
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
return
.limit locals 2
.limit stack 3
.end method

.method public setBirthday(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/tast/birthday/dataStructure/BirthdayRemindUser/mBirthday Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setDescription(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/tast/birthday/dataStructure/BirthdayRemindUser/mDescription Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setFid(J)V
aload 0
lload 1
putfield com/nd/android/u/tast/birthday/dataStructure/BirthdayRemindUser/mFid J
return
.limit locals 3
.limit stack 3
.end method

.method public setMind(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/birthday/dataStructure/BirthdayRemindUser/mMind I
return
.limit locals 2
.limit stack 2
.end method

.method public setUid(J)V
aload 0
lload 1
putfield com/nd/android/u/tast/birthday/dataStructure/BirthdayRemindUser/mUid J
return
.limit locals 3
.limit stack 3
.end method

.method public setUserName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/tast/birthday/dataStructure/BirthdayRemindUser/mUserName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUserType(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/birthday/dataStructure/BirthdayRemindUser/mUserType I
return
.limit locals 2
.limit stack 2
.end method

.method public setWorkId(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/tast/birthday/dataStructure/BirthdayRemindUser/mWorkId Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
