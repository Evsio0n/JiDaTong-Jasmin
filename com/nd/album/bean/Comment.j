.bytecode 50.0
.class public synchronized com/nd/album/bean/Comment
.super java/lang/Object

.field public 'cid' J

.field public 'content' Ljava/lang/String;

.field public 'dateline' Ljava/lang/String;

.field public 'pid' J

.field public 'uapid' J

.field public 'uid' J

.field public 'userName' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public parseJson(Lorg/json/JSONObject;)V
aload 0
aload 1
ldc "cid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/nd/album/bean/Comment/cid J
aload 0
aload 1
ldc "uid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/nd/album/bean/Comment/uapid J
aload 0
aload 1
ldc "pid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/nd/album/bean/Comment/pid J
aload 0
aload 1
ldc "content"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/album/bean/Comment/content Ljava/lang/String;
aload 1
ldc "dateline"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
astore 2
aload 2
invokevirtual java/lang/String/length()I
bipush 11
if_icmple L0
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
iconst_0
iconst_4
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "-"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
iconst_4
bipush 6
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "-"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
bipush 6
bipush 8
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
bipush 8
bipush 10
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ":"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
bipush 10
bipush 12
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/album/bean/Comment/dateline Ljava/lang/String;
L0:
aload 0
aload 1
ldc "uid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/nd/album/bean/Comment/uid J
aload 0
aload 1
ldc "nickname"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/album/bean/Comment/userName Ljava/lang/String;
return
.limit locals 3
.limit stack 5
.end method

.method public parseJsonDateline(Lorg/json/JSONObject;)V
aload 0
aload 1
ldc "cid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/nd/album/bean/Comment/cid J
aload 0
aload 1
ldc "uid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/nd/album/bean/Comment/uapid J
aload 0
aload 1
ldc "pid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/nd/album/bean/Comment/pid J
aload 0
aload 1
ldc "content"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/album/bean/Comment/content Ljava/lang/String;
aload 0
new java/text/SimpleDateFormat
dup
ldc "yyyy-MM-dd HH:mm"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
new java/util/Date
dup
aload 1
ldc "dateline"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
ldc2_w 1000L
lmul
invokespecial java/util/Date/<init>(J)V
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
putfield com/nd/album/bean/Comment/dateline Ljava/lang/String;
aload 0
aload 1
ldc "uid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/nd/album/bean/Comment/uid J
aload 0
aload 1
ldc "nickname"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/album/bean/Comment/userName Ljava/lang/String;
aload 0
getfield com/nd/album/bean/Comment/userName Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
getfield com/nd/album/bean/Comment/uid J
invokestatic com/nd/android/u/AlbumCallOtherModel/getOapUserLocal(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 1
aload 1
ifnull L1
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
putfield com/nd/album/bean/Comment/userName Ljava/lang/String;
L1:
aload 0
getfield com/nd/album/bean/Comment/userName Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/album/bean/Comment/uid J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/album/bean/Comment/userName Ljava/lang/String;
L0:
return
.limit locals 2
.limit stack 8
.end method
