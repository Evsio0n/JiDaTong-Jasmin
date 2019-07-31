.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dataStructure/BirthdayRemindUser
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
putfield com/nd/android/u/contact/dataStructure/BirthdayRemindUser/mMind I
return
.limit locals 1
.limit stack 2
.end method

.method public final getBirthday()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/BirthdayRemindUser/mBirthday Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getDescription()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/BirthdayRemindUser/mDescription Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getFid()J
aload 0
getfield com/nd/android/u/contact/dataStructure/BirthdayRemindUser/mFid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public final getMind()I
aload 0
getfield com/nd/android/u/contact/dataStructure/BirthdayRemindUser/mMind I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getUid()J
aload 0
getfield com/nd/android/u/contact/dataStructure/BirthdayRemindUser/mUid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public final getUserName()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/BirthdayRemindUser/mUserName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getUserType()I
aload 0
getfield com/nd/android/u/contact/dataStructure/BirthdayRemindUser/mUserType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getWorkId()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/BirthdayRemindUser/mWorkId Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final parseJson(Lorg/json/JSONObject;)V
.catch org/json/JSONException from L0 to L1 using L2
aload 1
ifnonnull L0
return
L0:
aload 0
aload 1
ldc "uid"
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
invokevirtual com/nd/android/u/contact/dataStructure/BirthdayRemindUser/setFid(J)V
aload 0
aload 1
ldc "type"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
invokevirtual com/nd/android/u/contact/dataStructure/BirthdayRemindUser/setUserType(I)V
aload 0
aload 1
ldc "username"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/u/contact/dataStructure/BirthdayRemindUser/setUserName(Ljava/lang/String;)V
aload 0
aload 1
ldc "workid"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/u/contact/dataStructure/BirthdayRemindUser/setWorkId(Ljava/lang/String;)V
aload 0
aload 1
ldc "birthday"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/u/contact/dataStructure/BirthdayRemindUser/setBirthday(Ljava/lang/String;)V
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

.method public final setBirthday(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/BirthdayRemindUser/mBirthday Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public final setDescription(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/BirthdayRemindUser/mDescription Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public final setFid(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/dataStructure/BirthdayRemindUser/mFid J
return
.limit locals 3
.limit stack 3
.end method

.method public final setMind(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/BirthdayRemindUser/mMind I
return
.limit locals 2
.limit stack 2
.end method

.method public final setUid(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/dataStructure/BirthdayRemindUser/mUid J
return
.limit locals 3
.limit stack 3
.end method

.method public final setUserName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/BirthdayRemindUser/mUserName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public final setUserType(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/BirthdayRemindUser/mUserType I
return
.limit locals 2
.limit stack 2
.end method

.method public final setWorkId(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/BirthdayRemindUser/mWorkId Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
