.bytecode 50.0
.class public synchronized com/nd/album/util/PhotoUpload
.super java/lang/Object

.field private static final 'TAG' Ljava/lang/String; = "PhotoUpload"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private static uploadProcess(JLjava/lang/String;I[B)V
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpException
ldc2_w 102400L
lstore 5
lload 0
ldc2_w 102400L
ladd
iload 3
i2l
lcmp
ifle L0
iload 3
i2l
lload 0
lsub
lstore 5
L0:
lload 5
lconst_0
lcmp
ifle L1
lload 5
l2i
newarray byte
astore 9
lload 0
lstore 7
L2:
lload 7
lload 0
lload 5
ladd
lcmp
ifge L3
aload 9
lload 7
lload 0
lsub
l2i
aload 4
lload 7
l2i
baload
bastore
lload 7
lconst_1
ladd
lstore 7
goto L2
L3:
ldc "PhotoUpload"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "upload_id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&flen="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 5
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "&offset="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
invokestatic com/nd/album/com/AlbumCom/getInstance()Lcom/nd/album/com/AlbumCom;
aload 2
lload 0
lload 5
aload 9
invokevirtual com/nd/album/com/AlbumCom/uploadImage(Ljava/lang/String;JJ[B)V
lload 0
lload 5
ladd
aload 2
iload 3
aload 4
invokestatic com/nd/album/util/PhotoUpload/uploadProcess(JLjava/lang/String;I[B)V
L1:
return
.limit locals 10
.limit stack 7
.end method

.method public static upoadGPhotoByte(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpException
invokestatic com/nd/album/com/AlbumCom/getInstance()Lcom/nd/album/com/AlbumCom;
aload 0
aload 2
aload 3
ldc "group album"
aload 1
arraylength
aload 4
aload 1
invokevirtual com/nd/album/com/AlbumCom/uploadGImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[B)Lorg/json/JSONObject;
areturn
.limit locals 5
.limit stack 8
.end method

.method public static upoadPhotoByte(Ljava/lang/String;[BJLjava/lang/String;)Lorg/json/JSONObject;
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpException
aload 0
aload 1
lload 2
aload 4
iconst_0
invokestatic com/nd/album/util/PhotoUpload/upoadPhotoByte(Ljava/lang/String;[BJLjava/lang/String;I)Lorg/json/JSONObject;
areturn
.limit locals 5
.limit stack 6
.end method

.method public static upoadPhotoByte(Ljava/lang/String;[BJLjava/lang/String;I)Lorg/json/JSONObject;
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
aload 1
arraylength
istore 6
L0:
invokestatic com/nd/album/com/AlbumCom/getInstance()Lcom/nd/album/com/AlbumCom;
aload 0
lload 2
aload 4
iload 6
iload 5
invokevirtual com/nd/album/com/AlbumCom/requestUpload(Ljava/lang/String;JLjava/lang/String;II)Lorg/json/JSONObject;
astore 0
L1:
aload 0
astore 4
aload 0
ifnull L3
aload 0
ldc "upload_flag"
invokevirtual org/json/JSONObject/getBoolean(Ljava/lang/String;)Z
ifeq L4
aload 0
ldc "upload_id"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 0
lconst_0
aload 0
iload 6
aload 1
invokestatic com/nd/album/util/PhotoUpload/uploadProcess(JLjava/lang/String;I[B)V
ldc "PhotoUpload"
ldc "step 2:"
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
invokestatic com/nd/album/com/AlbumCom/getInstance()Lcom/nd/album/com/AlbumCom;
aload 0
iconst_0
iconst_0
invokevirtual com/nd/album/com/AlbumCom/sendUploadEnd(Ljava/lang/String;II)Lorg/json/JSONObject;
astore 4
ldc "PhotoUpload"
ldc "step 3:"
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
L3:
aload 4
areturn
L2:
astore 0
aload 0
invokevirtual com/common/android/utils/http/HttpException/getStatusCode()I
sipush 400
if_icmpne L5
new org/json/JSONObject
dup
aload 0
invokevirtual com/common/android/utils/http/HttpException/getMessage()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 0
aload 0
ldc "exist"
iconst_1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Z)Lorg/json/JSONObject;
pop
aload 0
areturn
L5:
aconst_null
areturn
L4:
aload 0
areturn
.limit locals 7
.limit stack 7
.end method
