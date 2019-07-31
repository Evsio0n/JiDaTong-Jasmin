.bytecode 50.0
.class public synchronized com/nd/rj/common/suggest/entity/SuggestInfo
.super java/lang/Object

.field private 'mFlag' I

.field private 'mId' Ljava/lang/String;

.field private 'mRespond' Ljava/lang/String;

.field private 'mRespondDate' Ljava/lang/String;

.field private 'mSuggest' Ljava/lang/String;

.field private 'mSuggestDate' Ljava/lang/String;

.field private 'mUid' J

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public LoadFormCursor(Landroid/database/Cursor;)V
aload 0
aload 1
aload 1
ldc "QUEST_NO"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/rj/common/suggest/entity/SuggestInfo/mId Ljava/lang/String;
aload 0
aload 1
aload 1
ldc "UAP_UID"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/nd/rj/common/suggest/entity/SuggestInfo/mUid J
aload 0
aload 1
aload 1
ldc "QUEST"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/rj/common/suggest/entity/SuggestInfo/mSuggest Ljava/lang/String;
aload 0
aload 1
aload 1
ldc "ASK_DATE"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/rj/common/suggest/entity/SuggestInfo/mSuggestDate Ljava/lang/String;
aload 0
aload 1
aload 1
ldc "ANSWER"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/rj/common/suggest/entity/SuggestInfo/mRespond Ljava/lang/String;
aload 0
aload 1
aload 1
ldc "ANSWER_TIME"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/rj/common/suggest/entity/SuggestInfo/mRespondDate Ljava/lang/String;
aload 0
aload 1
aload 1
ldc "FLAG"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/nd/rj/common/suggest/entity/SuggestInfo/mFlag I
return
.limit locals 2
.limit stack 4
.end method

.method public getFlag()I
aload 0
getfield com/nd/rj/common/suggest/entity/SuggestInfo/mFlag I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getId()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/suggest/entity/SuggestInfo/mId Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getRespond()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/suggest/entity/SuggestInfo/mRespond Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getRespondDate()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/suggest/entity/SuggestInfo/mRespondDate Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSuggest()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/suggest/entity/SuggestInfo/mSuggest Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSuggestDate()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/suggest/entity/SuggestInfo/mSuggestDate Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUid()J
aload 0
getfield com/nd/rj/common/suggest/entity/SuggestInfo/mUid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public setFlag(I)V
aload 0
iload 1
putfield com/nd/rj/common/suggest/entity/SuggestInfo/mFlag I
return
.limit locals 2
.limit stack 2
.end method

.method public setId(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/rj/common/suggest/entity/SuggestInfo/mId Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setRespond(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/rj/common/suggest/entity/SuggestInfo/mRespond Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setRespondDate(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/rj/common/suggest/entity/SuggestInfo/mRespondDate Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setSuggest(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/rj/common/suggest/entity/SuggestInfo/mSuggest Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setSuggestDate(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/rj/common/suggest/entity/SuggestInfo/mSuggestDate Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUid(J)V
aload 0
lload 1
putfield com/nd/rj/common/suggest/entity/SuggestInfo/mUid J
return
.limit locals 3
.limit stack 3
.end method
