.bytecode 50.0
.class public synchronized com/android/u/weibo/sina/business/comm/LocalSinaSDK
.super java/lang/Object

.field private static final 'SINA_API_CONTENT_TYPE' Ljava/lang/String; = "application/x-www-form-urlencoded"

.field private static final 'URL_ADDTO_GROUP' Ljava/lang/String; = "https://api.weibo.com/2/friendships/groups/members/add.json"

.field private static final 'URL_ADDTO_GROUP_BATCH' Ljava/lang/String; = "https://api.weibo.com/2/friendships/groups/members/add_batch.json"

.field private static final 'URL_AUTHORIZE' Ljava/lang/String; = "https://open.weibo.cn/oauth2/authorize"

.field private static final 'URL_CREATE_GROUP' Ljava/lang/String; = "https://api.weibo.com/2/friendships/groups/create.json"

.field private static final 'URL_DESTORY' Ljava/lang/String; = "https://api.weibo.com/2/friendships/groups/members/destroy.json"

.field private static final 'URL_FOLLOW' Ljava/lang/String; = "https://api.weibo.com/2/friendships/create.json"

.field private static final 'URL_GET_GROUP' Ljava/lang/String; = "https://api.weibo.com/2/friendships/groups.json"

.field private static final 'URL_MEMBERS_IDS' Ljava/lang/String; = "https://api.weibo.com/2/friendships/groups/members/ids.json"

.field private static final 'URL_TIMELINE' Ljava/lang/String; = "https://api.weibo.com/2/friendships/groups/timeline.json"

.field private static final 'URL_UNFOLLOW' Ljava/lang/String; = "https://api.weibo.com/2/friendships/destroy.json"

.field private 'mSinaHttpRequest' Lcom/android/u/weibo/sina/business/comm/SinaHttpRequest;

.field private 'mToken' Ljava/lang/String;

.method public <init>(Landroid/content/Context;Ljava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/android/u/weibo/sina/business/comm/SinaHttpRequest
dup
aload 1
invokespecial com/android/u/weibo/sina/business/comm/SinaHttpRequest/<init>(Landroid/content/Context;)V
putfield com/android/u/weibo/sina/business/comm/LocalSinaSDK/mSinaHttpRequest Lcom/android/u/weibo/sina/business/comm/SinaHttpRequest;
aload 0
aload 2
putfield com/android/u/weibo/sina/business/comm/LocalSinaSDK/mToken Ljava/lang/String;
return
.limit locals 3
.limit stack 4
.end method

.method public static authorize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuilder;)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "https://open.weibo.cn/oauth2/authorize?client_id=82946543&redirect_uri=http://www.sina.com&scope="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&display=mobile"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
new com/android/u/weibo/sina/business/comm/SinaHttpRequest
dup
aload 0
invokespecial com/android/u/weibo/sina/business/comm/SinaHttpRequest/<init>(Landroid/content/Context;)V
aload 1
aload 2
invokevirtual com/android/u/weibo/sina/business/comm/SinaHttpRequest/doGet(Ljava/lang/String;Ljava/lang/StringBuilder;)I
pop
return
.limit locals 3
.limit stack 3
.end method

.method public static getTokenByCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuilder;)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "https://api.weibo.com/oauth2/access_token?client_id=82946543&client_secret=60477193a1fa204db14d7f2f2fe72fae&grant_type=authorization_code&redirect_uri=http://www.sina.com&code="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
new com/android/u/weibo/sina/business/comm/SinaHttpRequest
dup
aload 0
invokespecial com/android/u/weibo/sina/business/comm/SinaHttpRequest/<init>(Landroid/content/Context;)V
aload 1
aconst_null
aload 2
invokevirtual com/android/u/weibo/sina/business/comm/SinaHttpRequest/doPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)I
pop
return
.limit locals 3
.limit stack 4
.end method

.method private getUrl(Ljava/lang/String;)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?access_token="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/sina/business/comm/LocalSinaSDK/mToken Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method public addToGroup(JJLjava/lang/StringBuilder;)I
.catch org/json/JSONException from L0 to L1 using L2
aload 0
ldc "https://api.weibo.com/2/friendships/groups/members/add.json"
invokespecial com/android/u/weibo/sina/business/comm/LocalSinaSDK/getUrl(Ljava/lang/String;)Ljava/lang/String;
astore 6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&list_id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 7
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 6
L0:
aload 6
ldc "list_id"
lload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 6
ldc "uid"
lload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 7
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 7
L1:
aload 0
getfield com/android/u/weibo/sina/business/comm/LocalSinaSDK/mSinaHttpRequest Lcom/android/u/weibo/sina/business/comm/SinaHttpRequest;
aload 7
aload 6
ldc "application/x-www-form-urlencoded"
aload 5
invokevirtual com/android/u/weibo/sina/business/comm/SinaHttpRequest/doPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/StringBuilder;)I
ireturn
L2:
astore 5
aload 5
invokevirtual org/json/JSONException/printStackTrace()V
getstatic com/android/u/weibo/R$string/error_json I
ireturn
.limit locals 8
.limit stack 5
.end method

.method public addToGroupBatch(J[JLjava/lang/StringBuilder;)I
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
.catch org/json/JSONException from L7 to L8 using L2
.catch org/json/JSONException from L8 to L9 using L2
iconst_0
istore 5
aload 0
ldc "https://api.weibo.com/2/friendships/groups/members/add_batch.json"
invokespecial com/android/u/weibo/sina/business/comm/LocalSinaSDK/getUrl(Ljava/lang/String;)Ljava/lang/String;
astore 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 7
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&list_id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 9
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 8
L0:
aload 8
ldc "list_id"
lload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L1:
ldc ""
astore 7
L3:
aload 3
arraylength
istore 6
L4:
iload 5
iload 6
if_icmpge L10
aload 3
iload 5
laload
lstore 1
lload 1
lconst_0
lcmp
ifeq L10
L5:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 7
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 7
L6:
iload 5
iconst_1
iadd
istore 5
goto L4
L10:
aload 7
astore 3
L7:
aload 7
invokevirtual java/lang/String/length()I
ifle L8
aload 7
iconst_0
aload 7
invokevirtual java/lang/String/length()I
iconst_1
isub
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 3
L8:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 9
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&uids="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 7
aload 8
ldc "uids"
aload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L9:
aload 0
getfield com/android/u/weibo/sina/business/comm/LocalSinaSDK/mSinaHttpRequest Lcom/android/u/weibo/sina/business/comm/SinaHttpRequest;
aload 7
aload 8
ldc "application/x-www-form-urlencoded"
aload 4
invokevirtual com/android/u/weibo/sina/business/comm/SinaHttpRequest/doPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/StringBuilder;)I
ireturn
L2:
astore 3
aload 3
invokevirtual org/json/JSONException/printStackTrace()V
getstatic com/android/u/weibo/R$string/error_json I
ireturn
.limit locals 10
.limit stack 5
.end method

.method public createGroup(Ljava/lang/String;Ljava/lang/StringBuilder;)I
.catch org/json/JSONException from L0 to L1 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
ldc "https://api.weibo.com/2/friendships/groups/create.json"
invokespecial com/android/u/weibo/sina/business/comm/LocalSinaSDK/getUrl(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&name="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 4
L0:
aload 4
ldc "name"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
aload 0
getfield com/android/u/weibo/sina/business/comm/LocalSinaSDK/mSinaHttpRequest Lcom/android/u/weibo/sina/business/comm/SinaHttpRequest;
aload 3
aload 4
ldc "application/x-www-form-urlencoded"
aload 2
invokevirtual com/android/u/weibo/sina/business/comm/SinaHttpRequest/doPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/StringBuilder;)I
ireturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
getstatic com/android/u/weibo/R$string/error_json I
ireturn
.limit locals 5
.limit stack 5
.end method

.method public delFromGroup(JJLjava/lang/StringBuilder;)I
.annotation visible Ljava/lang/Deprecated;
.end annotation
.catch org/json/JSONException from L0 to L1 using L2
aload 0
ldc "https://api.weibo.com/2/friendships/groups/members/destroy.json"
invokespecial com/android/u/weibo/sina/business/comm/LocalSinaSDK/getUrl(Ljava/lang/String;)Ljava/lang/String;
astore 6
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 7
L0:
aload 7
ldc "list_id"
lload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 7
ldc "uid"
lload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L1:
aload 0
getfield com/android/u/weibo/sina/business/comm/LocalSinaSDK/mSinaHttpRequest Lcom/android/u/weibo/sina/business/comm/SinaHttpRequest;
aload 6
aload 7
aload 5
invokevirtual com/android/u/weibo/sina/business/comm/SinaHttpRequest/doPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)I
ireturn
L2:
astore 5
aload 5
invokevirtual org/json/JSONException/printStackTrace()V
getstatic com/android/u/weibo/R$string/error_json I
ireturn
.limit locals 8
.limit stack 4
.end method

.method public getGroup(Ljava/lang/StringBuilder;)I
aload 0
ldc "https://api.weibo.com/2/friendships/groups.json"
invokespecial com/android/u/weibo/sina/business/comm/LocalSinaSDK/getUrl(Ljava/lang/String;)Ljava/lang/String;
astore 2
aload 0
getfield com/android/u/weibo/sina/business/comm/LocalSinaSDK/mSinaHttpRequest Lcom/android/u/weibo/sina/business/comm/SinaHttpRequest;
aload 2
aload 1
invokevirtual com/android/u/weibo/sina/business/comm/SinaHttpRequest/doGet(Ljava/lang/String;Ljava/lang/StringBuilder;)I
ireturn
.limit locals 3
.limit stack 3
.end method

.method public getMemberIds(JIILjava/lang/StringBuilder;)I
aload 5
iconst_0
aload 5
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
aload 0
ldc "https://api.weibo.com/2/friendships/groups/members/ids.json"
invokespecial com/android/u/weibo/sina/business/comm/LocalSinaSDK/getUrl(Ljava/lang/String;)Ljava/lang/String;
astore 6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&list_id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "&count="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "&cursor="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 6
aload 0
getfield com/android/u/weibo/sina/business/comm/LocalSinaSDK/mSinaHttpRequest Lcom/android/u/weibo/sina/business/comm/SinaHttpRequest;
aload 6
aload 5
invokevirtual com/android/u/weibo/sina/business/comm/SinaHttpRequest/doGet(Ljava/lang/String;Ljava/lang/StringBuilder;)I
ireturn
.limit locals 7
.limit stack 3
.end method

.method public groupFriendsTimeLine(JJJILjava/lang/StringBuilder;)I
aload 0
ldc "https://api.weibo.com/2/friendships/groups/timeline.json"
invokespecial com/android/u/weibo/sina/business/comm/LocalSinaSDK/getUrl(Ljava/lang/String;)Ljava/lang/String;
astore 9
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 9
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&list_id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "&since_id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "&max_id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 5
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "&count="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 7
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 9
aload 0
getfield com/android/u/weibo/sina/business/comm/LocalSinaSDK/mSinaHttpRequest Lcom/android/u/weibo/sina/business/comm/SinaHttpRequest;
aload 9
aload 8
invokevirtual com/android/u/weibo/sina/business/comm/SinaHttpRequest/doGet(Ljava/lang/String;Ljava/lang/StringBuilder;)I
ireturn
.limit locals 10
.limit stack 3
.end method

.method public sinaFollow(JLjava/lang/String;Ljava/lang/StringBuilder;)I
.catch org/json/JSONException from L0 to L1 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
ldc "https://api.weibo.com/2/friendships/create.json"
invokespecial com/android/u/weibo/sina/business/comm/LocalSinaSDK/getUrl(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 5
ldc "debug"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "LocalSinaSDK sinaFollow:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 6
L0:
aload 6
ldc "uid"
lload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 6
ldc "screen_name"
aload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
aload 0
getfield com/android/u/weibo/sina/business/comm/LocalSinaSDK/mSinaHttpRequest Lcom/android/u/weibo/sina/business/comm/SinaHttpRequest;
aload 5
aload 6
ldc "application/x-www-form-urlencoded"
aload 4
invokevirtual com/android/u/weibo/sina/business/comm/SinaHttpRequest/doPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/StringBuilder;)I
ireturn
L2:
astore 3
aload 3
invokevirtual org/json/JSONException/printStackTrace()V
getstatic com/android/u/weibo/R$string/error_json I
ireturn
.limit locals 7
.limit stack 5
.end method

.method public sinaUnFollow(JLjava/lang/String;Ljava/lang/StringBuilder;)I
.catch org/json/JSONException from L0 to L1 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
ldc "https://api.weibo.com/2/friendships/destroy.json"
invokespecial com/android/u/weibo/sina/business/comm/LocalSinaSDK/getUrl(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 5
ldc "debug"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "LocalSinaSDK sinaUnFollow:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 6
L0:
aload 6
ldc "uid"
lload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 6
ldc "screen_name"
aload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
aload 0
getfield com/android/u/weibo/sina/business/comm/LocalSinaSDK/mSinaHttpRequest Lcom/android/u/weibo/sina/business/comm/SinaHttpRequest;
aload 5
aload 6
ldc "application/x-www-form-urlencoded"
aload 4
invokevirtual com/android/u/weibo/sina/business/comm/SinaHttpRequest/doPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/StringBuilder;)I
ireturn
L2:
astore 3
aload 3
invokevirtual org/json/JSONException/printStackTrace()V
getstatic com/android/u/weibo/R$string/error_json I
ireturn
.limit locals 7
.limit stack 5
.end method
