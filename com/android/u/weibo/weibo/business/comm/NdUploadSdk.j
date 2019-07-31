.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/business/comm/NdUploadSdk
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public uploadImage(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
.throws java/lang/IllegalStateException
.throws java/io/IOException
.throws org/json/JSONException
.throws com/android/u/weibo/weibo/controller/WeiBoException
new com/android/u/weibo/weibo/business/comm/NdHttpToolkit
dup
aload 1
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/UPLOAD_IMAGE Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 5
new java/io/File
dup
aload 2
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 2
iload 3
ifeq L0
iconst_1
istore 4
L1:
aload 5
aload 1
aload 2
ldc "image"
iload 4
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/httpUploadFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;I)I
istore 4
new org/json/JSONObject
dup
aload 5
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/getResponse()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 2
iload 4
sipush 200
if_icmpne L2
aload 2
ldc "image_id"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
areturn
L0:
iconst_0
istore 4
goto L1
L2:
aload 1
iload 4
aload 2
invokestatic com/android/u/weibo/weibo/business/comm/NdHttpToolkit/parseWeiboErrMsg(Landroid/content/Context;ILorg/json/JSONObject;)V
ldc ""
areturn
.limit locals 6
.limit stack 5
.end method

.method public uploadImageList(Landroid/content/Context;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
.signature "(Landroid/content/Context;Ljava/util/ArrayList<Ljava/lang/String;>;Z)Ljava/util/ArrayList<Ljava/lang/String;>;"
.throws java/lang/IllegalStateException
.throws java/io/IOException
.throws org/json/JSONException
.throws com/android/u/weibo/weibo/controller/WeiBoException
new java/util/ArrayList
dup
aload 2
invokevirtual java/util/ArrayList/size()I
invokespecial java/util/ArrayList/<init>(I)V
astore 4
aload 2
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 2
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 0
aload 1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/String
iload 3
invokevirtual com/android/u/weibo/weibo/business/comm/NdUploadSdk/uploadImage(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
astore 5
aload 5
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 4
aload 5
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L0
L1:
aload 4
areturn
.limit locals 6
.limit stack 4
.end method
