.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/business/parser/WbImageParser
.super com/common/android/utils/parser/AbstractObjParser
.signature "Lcom/common/android/utils/parser/AbstractObjParser<Lcom/android/u/weibo/weibo/business/bean/WbImage;>;"

.method public <init>()V
aload 0
invokespecial com/common/android/utils/parser/AbstractObjParser/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/WbImage;
.throws org/json/JSONException
new com/android/u/weibo/weibo/business/bean/WbImage
dup
invokespecial com/android/u/weibo/weibo/business/bean/WbImage/<init>()V
astore 2
aload 1
ifnonnull L0
aload 2
areturn
L0:
aload 2
aload 1
ldc "id"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/android/u/weibo/weibo/business/bean/WbImage/id Ljava/lang/String;
aload 2
aload 1
ldc "image_original"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/android/u/weibo/weibo/business/bean/WbImage/image_original Ljava/lang/String;
aload 2
aload 1
ldc "image_middle"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/android/u/weibo/weibo/business/bean/WbImage/image_middle Ljava/lang/String;
aload 2
aload 1
ldc "image_thumb"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/android/u/weibo/weibo/business/bean/WbImage/image_thumb Ljava/lang/String;
aload 2
aload 1
ldc "image_height"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/android/u/weibo/weibo/business/bean/WbImage/image_height I
aload 2
aload 1
ldc "image_width"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/android/u/weibo/weibo/business/bean/WbImage/image_width I
aload 2
aload 1
ldc "image_size"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/android/u/weibo/weibo/business/bean/WbImage/image_size J
aload 2
aload 1
ldc "image_ext"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/android/u/weibo/weibo/business/bean/WbImage/image_ext Ljava/lang/String;
aload 2
aload 1
ldc "image_type"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/android/u/weibo/weibo/business/bean/WbImage/image_type I
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public volatile synthetic parse(Lorg/json/JSONObject;)Lcom/common/android/utils/parser/BaseType;
.throws org/json/JSONException
aload 0
aload 1
invokevirtual com/android/u/weibo/weibo/business/parser/WbImageParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/WbImage;
areturn
.limit locals 2
.limit stack 2
.end method

.method public toJSONObject(Lcom/android/u/weibo/weibo/business/bean/WbImage;)Lorg/json/JSONObject;
.throws org/json/JSONException
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 2
aload 1
ifnonnull L0
aload 2
areturn
L0:
aload 2
ldc "id"
aload 1
getfield com/android/u/weibo/weibo/business/bean/WbImage/id Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
ldc "image_original"
aload 1
getfield com/android/u/weibo/weibo/business/bean/WbImage/image_original Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
ldc "image_middle"
aload 1
getfield com/android/u/weibo/weibo/business/bean/WbImage/image_middle Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
ldc "image_thumb"
aload 1
getfield com/android/u/weibo/weibo/business/bean/WbImage/image_thumb Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
ldc "image_height"
aload 1
getfield com/android/u/weibo/weibo/business/bean/WbImage/image_height I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 2
ldc "image_width"
aload 1
getfield com/android/u/weibo/weibo/business/bean/WbImage/image_width I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 2
ldc "image_size"
aload 1
getfield com/android/u/weibo/weibo/business/bean/WbImage/image_size J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 2
ldc "image_ext"
aload 1
getfield com/android/u/weibo/weibo/business/bean/WbImage/image_ext Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
ldc "image_type"
aload 1
getfield com/android/u/weibo/weibo/business/bean/WbImage/image_type I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method public volatile synthetic toJSONObject(Lcom/common/android/utils/parser/BaseType;)Lorg/json/JSONObject;
.throws org/json/JSONException
aload 0
aload 1
checkcast com/android/u/weibo/weibo/business/bean/WbImage
invokevirtual com/android/u/weibo/weibo/business/parser/WbImageParser/toJSONObject(Lcom/android/u/weibo/weibo/business/bean/WbImage;)Lorg/json/JSONObject;
areturn
.limit locals 2
.limit stack 2
.end method
