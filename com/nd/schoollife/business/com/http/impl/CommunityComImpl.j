.bytecode 50.0
.class public synchronized com/nd/schoollife/business/com/http/impl/CommunityComImpl
.super com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom
.implements com/nd/schoollife/business/com/http/ICommunityCom

.field public static final 'TAG' Ljava/lang/String;

.field private static final 'URL_APPROVAL_JOIN' Ljava/lang/String;

.field private static final 'URL_COMMUNITY_CATEGORY' Ljava/lang/String;

.field private static final 'URL_CREATE_COMMUNITY' Ljava/lang/String;

.field private static final 'URL_DISMISS_COMMUNITY' Ljava/lang/String;

.field private static final 'URL_EDIT_COMMUNITY_INFO' Ljava/lang/String;

.field private static final 'URL_GET_COMMUNITY_BY_CATEGORY' Ljava/lang/String;

.field private static final 'URL_GET_COMMUNITY_INFO' Ljava/lang/String;

.field private static final 'URL_GET_HOT_COMMUNITY' Ljava/lang/String;

.field private static final 'URL_GET_HOT_KEY' Ljava/lang/String;

.field private static final 'URL_GET_MEMBERS' Ljava/lang/String;

.field private static final 'URL_GET_MY_JOINED_COMMUNITY' Ljava/lang/String;

.field private static final 'URL_GET_MY_MANAGE_COMMUNITY' Ljava/lang/String;

.field private static final 'URL_GET_RECOMMAND_COMMUNITY' Ljava/lang/String;

.field private static final 'URL_GET_TAGS' Ljava/lang/String;

.field private static final 'URL_JOIN_OR_EXIT_COMMUNITY' Ljava/lang/String;

.field private static final 'URL_SEARCH_COMMUNITY' Ljava/lang/String;

.field private static final 'URL_UPDATE_ROLE' Ljava/lang/String;

.method static <clinit>()V
ldc com/nd/schoollife/business/com/http/impl/CommunityComImpl
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/nd/schoollife/business/com/http/impl/CommunityComImpl/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/schoollife/common/constant/SchoolLifeHttpConfig/SERVER_DOMAIN Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "community/tags"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/nd/schoollife/business/com/http/impl/CommunityComImpl/URL_GET_TAGS Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/schoollife/common/constant/SchoolLifeHttpConfig/SERVER_DOMAIN Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "community/categories"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/nd/schoollife/business/com/http/impl/CommunityComImpl/URL_COMMUNITY_CATEGORY Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/schoollife/common/constant/SchoolLifeHttpConfig/SERVER_DOMAIN Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "community/search_hot_words"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/nd/schoollife/business/com/http/impl/CommunityComImpl/URL_GET_HOT_KEY Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/schoollife/common/constant/SchoolLifeHttpConfig/SERVER_DOMAIN Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "community/hots"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/nd/schoollife/business/com/http/impl/CommunityComImpl/URL_GET_HOT_COMMUNITY Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/schoollife/common/constant/SchoolLifeHttpConfig/SERVER_DOMAIN Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "community/recommend"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/nd/schoollife/business/com/http/impl/CommunityComImpl/URL_GET_RECOMMAND_COMMUNITY Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/schoollife/common/constant/SchoolLifeHttpConfig/SERVER_DOMAIN Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "community/request"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/nd/schoollife/business/com/http/impl/CommunityComImpl/URL_CREATE_COMMUNITY Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/schoollife/common/constant/SchoolLifeHttpConfig/SERVER_DOMAIN Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "communities"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/nd/schoollife/business/com/http/impl/CommunityComImpl/URL_EDIT_COMMUNITY_INFO Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/schoollife/common/constant/SchoolLifeHttpConfig/SERVER_DOMAIN Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "communities"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/nd/schoollife/business/com/http/impl/CommunityComImpl/URL_GET_COMMUNITY_INFO Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/schoollife/common/constant/SchoolLifeHttpConfig/SERVER_DOMAIN Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "communities"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/nd/schoollife/business/com/http/impl/CommunityComImpl/URL_SEARCH_COMMUNITY Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/schoollife/common/constant/SchoolLifeHttpConfig/SERVER_DOMAIN Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "communities"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/nd/schoollife/business/com/http/impl/CommunityComImpl/URL_GET_MEMBERS Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/schoollife/common/constant/SchoolLifeHttpConfig/SERVER_DOMAIN Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "community/depute"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/nd/schoollife/business/com/http/impl/CommunityComImpl/URL_UPDATE_ROLE Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/schoollife/common/constant/SchoolLifeHttpConfig/SERVER_DOMAIN Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "communities"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/nd/schoollife/business/com/http/impl/CommunityComImpl/URL_APPROVAL_JOIN Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/schoollife/common/constant/SchoolLifeHttpConfig/SERVER_DOMAIN Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "communities"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/nd/schoollife/business/com/http/impl/CommunityComImpl/URL_GET_COMMUNITY_BY_CATEGORY Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/schoollife/common/constant/SchoolLifeHttpConfig/SERVER_DOMAIN Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "users"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/nd/schoollife/business/com/http/impl/CommunityComImpl/URL_GET_MY_JOINED_COMMUNITY Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/schoollife/common/constant/SchoolLifeHttpConfig/SERVER_DOMAIN Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "users"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/nd/schoollife/business/com/http/impl/CommunityComImpl/URL_GET_MY_MANAGE_COMMUNITY Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/schoollife/common/constant/SchoolLifeHttpConfig/SERVER_DOMAIN Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "users"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/nd/schoollife/business/com/http/impl/CommunityComImpl/URL_JOIN_OR_EXIT_COMMUNITY Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/schoollife/common/constant/SchoolLifeHttpConfig/SERVER_DOMAIN Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "community/dissolve"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/nd/schoollife/business/com/http/impl/CommunityComImpl/URL_DISMISS_COMMUNITY Ljava/lang/String;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public approvalCreate(JJZLjava/lang/String;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
.catch org/json/JSONException from L0 to L1 using L2
new java/lang/StringBuilder
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/schoollife/common/constant/SchoolLifeHttpConfig/SERVER_DOMAIN Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "communities/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "/request"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 7
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 8
L0:
aload 8
ldc "uid"
lload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 8
ldc "approval_action"
iload 5
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Z)Lorg/json/JSONObject;
pop
aload 8
ldc "approval_info"
aload 6
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
aload 0
getstatic com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/PATCH Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;
aload 7
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/schoollife/common/bean/SchoolLifeResultBase
aconst_null
aload 8
invokevirtual com/nd/schoollife/business/com/http/impl/CommunityComImpl/processRequestAndParse(Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;Lorg/json/JSONObject;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
areturn
L2:
astore 6
aload 6
invokevirtual org/json/JSONException/printStackTrace()V
goto L1
.limit locals 9
.limit stack 6
.end method

.method public approvalJoin(JJZLjava/lang/String;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
.catch org/json/JSONException from L0 to L1 using L2
new java/lang/StringBuilder
dup
getstatic com/nd/schoollife/business/com/http/impl/CommunityComImpl/URL_APPROVAL_JOIN Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 7
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "/request"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 8
L0:
aload 8
ldc "uid"
lload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 8
ldc "approval_action"
iload 5
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Z)Lorg/json/JSONObject;
pop
aload 8
ldc "approval_info"
aload 6
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
aload 0
getstatic com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/PATCH Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;
aload 7
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/schoollife/common/bean/SchoolLifeResultBase
aconst_null
aload 8
invokevirtual com/nd/schoollife/business/com/http/impl/CommunityComImpl/processRequestAndParse(Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;Lorg/json/JSONObject;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
areturn
L2:
astore 6
aload 6
invokevirtual org/json/JSONException/printStackTrace()V
goto L1
.limit locals 9
.limit stack 6
.end method

.method public createCommunity(Ljava/lang/String;Ljava/lang/String;[J[JLjava/lang/String;)Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
.catch org/json/JSONException from L7 to L8 using L2
.catch org/json/JSONException from L9 to L10 using L2
.catch org/json/JSONException from L11 to L12 using L2
.catch org/json/JSONException from L12 to L13 using L2
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 7
aload 3
ifnull L6
L0:
new org/json/JSONArray
dup
invokespecial org/json/JSONArray/<init>()V
astore 8
L1:
iconst_0
istore 6
L3:
iload 6
aload 3
arraylength
if_icmpge L5
aload 8
aload 3
iload 6
laload
invokevirtual org/json/JSONArray/put(J)Lorg/json/JSONArray;
pop
L4:
iload 6
iconst_1
iadd
istore 6
goto L3
L5:
aload 7
ldc "category"
aload 8
invokevirtual org/json/JSONObject/accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L6:
aload 4
ifnull L12
L7:
new org/json/JSONArray
dup
invokespecial org/json/JSONArray/<init>()V
astore 3
L8:
iconst_0
istore 6
L9:
iload 6
aload 4
arraylength
if_icmpge L11
aload 3
aload 4
iload 6
laload
invokevirtual org/json/JSONArray/put(J)Lorg/json/JSONArray;
pop
L10:
iload 6
iconst_1
iadd
istore 6
goto L9
L11:
aload 7
ldc "tags"
aload 3
invokevirtual org/json/JSONObject/accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L12:
aload 7
ldc "avatar"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 7
ldc "name"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 7
ldc "intro"
aload 5
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L13:
aload 0
getstatic com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/POST Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;
getstatic com/nd/schoollife/business/com/http/impl/CommunityComImpl/URL_CREATE_COMMUNITY Ljava/lang/String;
ldc com/nd/schoollife/common/bean/result/CommunityInfoBean
aconst_null
aload 7
invokevirtual com/nd/schoollife/business/com/http/impl/CommunityComImpl/processRequestAndParse(Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;Lorg/json/JSONObject;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
checkcast com/nd/schoollife/common/bean/result/CommunityInfoBean
areturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
goto L13
.limit locals 9
.limit stack 6
.end method

.method public dismissCommunity(JZ)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L1 to L3 using L4
.catch org/json/JSONException from L5 to L6 using L4
.catch org/json/JSONException from L7 to L8 using L4
aconst_null
astore 6
L0:
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 4
L1:
aload 4
ldc "id"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L3:
iload 3
ifeq L7
L5:
aload 4
ldc "group_action"
ldc "true"
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L6:
aload 0
getstatic com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/POST Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;
getstatic com/nd/schoollife/business/com/http/impl/CommunityComImpl/URL_DISMISS_COMMUNITY Ljava/lang/String;
ldc com/nd/schoollife/common/bean/SchoolLifeResultBase
aload 4
invokevirtual com/nd/schoollife/business/com/http/impl/CommunityComImpl/processRequestAndParse(Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
areturn
L7:
aload 4
ldc "group_action"
ldc "false"
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L8:
goto L6
L4:
astore 5
L9:
aload 5
invokevirtual org/json/JSONException/printStackTrace()V
goto L6
L2:
astore 5
aload 6
astore 4
goto L9
.limit locals 7
.limit stack 5
.end method

.method public editCommunityInfo(JLjava/lang/String;Ljava/lang/String;[J[JLjava/lang/String;)Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
.catch org/json/JSONException from L7 to L8 using L2
.catch org/json/JSONException from L9 to L10 using L2
new java/lang/StringBuilder
dup
getstatic com/nd/schoollife/business/com/http/impl/CommunityComImpl/URL_EDIT_COMMUNITY_INFO Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 9
aload 9
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 10
L0:
new org/json/JSONArray
dup
invokespecial org/json/JSONArray/<init>()V
astore 11
L1:
iconst_0
istore 8
L3:
iload 8
aload 5
arraylength
if_icmpge L5
aload 11
aload 5
iload 8
laload
invokevirtual org/json/JSONArray/put(J)Lorg/json/JSONArray;
pop
L4:
iload 8
iconst_1
iadd
istore 8
goto L3
L5:
aload 10
ldc "category"
aload 11
invokevirtual org/json/JSONObject/accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
new org/json/JSONArray
dup
invokespecial org/json/JSONArray/<init>()V
astore 5
L6:
iconst_0
istore 8
L7:
iload 8
aload 6
arraylength
if_icmpge L9
aload 5
aload 6
iload 8
laload
invokevirtual org/json/JSONArray/put(J)Lorg/json/JSONArray;
pop
L8:
iload 8
iconst_1
iadd
istore 8
goto L7
L9:
aload 10
ldc "tags"
aload 5
invokevirtual org/json/JSONObject/accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 10
ldc "avatar"
aload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 10
ldc "name"
aload 4
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 10
ldc "intro"
aload 7
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L10:
aload 0
getstatic com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/PATCH Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;
aload 9
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/schoollife/common/bean/result/CommunityInfoBean
aconst_null
aload 10
invokevirtual com/nd/schoollife/business/com/http/impl/CommunityComImpl/processRequestAndParse(Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;Lorg/json/JSONObject;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
checkcast com/nd/schoollife/common/bean/result/CommunityInfoBean
areturn
L2:
astore 3
aload 3
invokevirtual org/json/JSONException/printStackTrace()V
goto L10
.limit locals 12
.limit stack 6
.end method

.method public getAllCommunityCategory()Lcom/nd/schoollife/common/bean/result/ResultGetAllCommunityCategory;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 1
aload 1
getstatic com/nd/schoollife/business/com/http/impl/CommunityComImpl/URL_COMMUNITY_CATEGORY Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
getstatic com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/GET Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/schoollife/common/bean/result/ResultGetAllCommunityCategory
aconst_null
invokevirtual com/nd/schoollife/business/com/http/impl/CommunityComImpl/processRequestAndParse(Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
checkcast com/nd/schoollife/common/bean/result/ResultGetAllCommunityCategory
areturn
.limit locals 2
.limit stack 5
.end method

.method public getCommunityByCategory(JII)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 5
aload 5
getstatic com/nd/schoollife/business/com/http/impl/CommunityComImpl/URL_GET_COMMUNITY_BY_CATEGORY Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
ldc "?filter=category"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
ldc "&value="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
lload 1
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iload 3
ifle L0
aload 5
ldc "&page="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L0:
iload 4
ifle L1
aload 5
ldc "&size="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L1:
aload 0
getstatic com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/GET Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/schoollife/common/bean/result/ResultCommunityInfoList
aconst_null
invokevirtual com/nd/schoollife/business/com/http/impl/CommunityComImpl/processRequestAndParse(Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
checkcast com/nd/schoollife/common/bean/result/ResultCommunityInfoList
areturn
.limit locals 6
.limit stack 5
.end method

.method public getCommunityHotKey(II)Lcom/nd/schoollife/common/bean/result/ResultGetCommunityHotKey;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 3
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/schoollife/business/com/http/impl/CommunityComImpl/URL_GET_HOT_KEY Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iload 1
ifle L0
aload 3
ldc "page="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "&"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L0:
iload 2
ifle L1
aload 3
ldc "size="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L1:
aload 0
getstatic com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/GET Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/schoollife/common/bean/result/ResultGetCommunityHotKey
aconst_null
invokevirtual com/nd/schoollife/business/com/http/impl/CommunityComImpl/processRequestAndParse(Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
checkcast com/nd/schoollife/common/bean/result/ResultGetCommunityHotKey
areturn
.limit locals 4
.limit stack 5
.end method

.method public getCommunityInfo(J)Lcom/nd/schoollife/common/bean/result/ResultGetCommunityInfo;
new java/lang/StringBuilder
dup
getstatic com/nd/schoollife/business/com/http/impl/CommunityComImpl/URL_GET_COMMUNITY_INFO Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 3
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
getstatic com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/GET Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/schoollife/common/bean/result/ResultGetCommunityInfo
aconst_null
invokevirtual com/nd/schoollife/business/com/http/impl/CommunityComImpl/processRequestAndParse(Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
checkcast com/nd/schoollife/common/bean/result/ResultGetCommunityInfo
areturn
.limit locals 4
.limit stack 5
.end method

.method public getErrorBeanClass()Ljava/lang/Class;
.signature "()Ljava/lang/Class<+Ljava/lang/Object;>;"
ldc com/nd/schoollife/common/bean/CommunityErrorBean
areturn
.limit locals 1
.limit stack 1
.end method

.method public getHotCommunity(JII)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 5
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/schoollife/business/com/http/impl/CommunityComImpl/URL_GET_HOT_COMMUNITY Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
lload 1
lconst_0
lcmp
ifle L0
aload 5
ldc "ghost_v="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "&"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L0:
iload 3
ifle L1
aload 5
ldc "page="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "&"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L1:
iload 4
ifle L2
aload 5
ldc "size="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L2:
aload 0
getstatic com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/GET Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/schoollife/common/bean/result/ResultCommunityInfoList
aconst_null
invokevirtual com/nd/schoollife/business/com/http/impl/CommunityComImpl/processRequestAndParse(Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
checkcast com/nd/schoollife/common/bean/result/ResultCommunityInfoList
areturn
.limit locals 6
.limit stack 5
.end method

.method public getMembers(JII)Lcom/nd/schoollife/common/bean/result/ResultUserList;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 5
aload 5
getstatic com/nd/schoollife/business/com/http/impl/CommunityComImpl/URL_GET_MEMBERS Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
ldc "/id/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
ldc "/members?"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iload 3
ifle L0
aload 5
ldc "page="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L0:
iload 4
ifle L1
aload 5
ldc "&size="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L1:
aload 0
getstatic com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/GET Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/schoollife/common/bean/result/ResultUserList
aconst_null
invokevirtual com/nd/schoollife/business/com/http/impl/CommunityComImpl/processRequestAndParse(Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
checkcast com/nd/schoollife/common/bean/result/ResultUserList
areturn
.limit locals 6
.limit stack 5
.end method

.method public getMyJoinedCommunity(II)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 5
aload 5
getstatic com/nd/schoollife/business/com/http/impl/CommunityComImpl/URL_GET_MY_JOINED_COMMUNITY Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lstore 3
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
ldc "/community/joined?"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iload 1
ifle L0
aload 5
ldc "page="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
aload 5
ldc "&"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L0:
iload 2
ifle L1
aload 5
ldc "size="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L1:
aload 0
getstatic com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/GET Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/schoollife/common/bean/result/ResultCommunityInfoList
aconst_null
invokevirtual com/nd/schoollife/business/com/http/impl/CommunityComImpl/processRequestAndParse(Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
checkcast com/nd/schoollife/common/bean/result/ResultCommunityInfoList
areturn
.limit locals 6
.limit stack 5
.end method

.method public getMyManageCommunity(II)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 5
aload 5
getstatic com/nd/schoollife/business/com/http/impl/CommunityComImpl/URL_GET_MY_MANAGE_COMMUNITY Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lstore 3
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
ldc "/community/control?"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iload 1
ifle L0
aload 5
ldc "page="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L0:
iload 2
ifle L1
aload 5
ldc "&size="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L1:
aload 0
getstatic com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/GET Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/schoollife/common/bean/result/ResultCommunityInfoList
aconst_null
invokevirtual com/nd/schoollife/business/com/http/impl/CommunityComImpl/processRequestAndParse(Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
checkcast com/nd/schoollife/common/bean/result/ResultCommunityInfoList
areturn
.limit locals 6
.limit stack 5
.end method

.method public getRecommendCommunity(II)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 3
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/schoollife/business/com/http/impl/CommunityComImpl/URL_GET_RECOMMAND_COMMUNITY Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iload 1
ifle L0
aload 3
ldc "page="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "&"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L0:
iload 2
ifle L1
aload 3
ldc "size="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L1:
aload 0
getstatic com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/GET Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/schoollife/common/bean/result/ResultCommunityInfoList
aconst_null
invokevirtual com/nd/schoollife/business/com/http/impl/CommunityComImpl/processRequestAndParse(Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
checkcast com/nd/schoollife/common/bean/result/ResultCommunityInfoList
areturn
.limit locals 4
.limit stack 5
.end method

.method public getTags(II)Lcom/nd/schoollife/common/bean/result/ResultGetCommunityTags;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 3
aload 3
getstatic com/nd/schoollife/business/com/http/impl/CommunityComImpl/URL_GET_TAGS Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iload 1
ifle L0
aload 3
ldc "/page/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L0:
iload 2
ifle L1
aload 3
ldc "/size/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L1:
aload 0
getstatic com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/GET Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/schoollife/common/bean/result/ResultGetCommunityTags
aconst_null
invokevirtual com/nd/schoollife/business/com/http/impl/CommunityComImpl/processRequestAndParse(Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
checkcast com/nd/schoollife/common/bean/result/ResultGetCommunityTags
areturn
.limit locals 4
.limit stack 5
.end method

.method public joinOrExitCommunity(JZLjava/lang/String;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
.catch org/json/JSONException from L0 to L1 using L2
new java/lang/StringBuilder
dup
getstatic com/nd/schoollife/business/com/http/impl/CommunityComImpl/URL_JOIN_OR_EXIT_COMMUNITY Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 5
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 6
iload 3
ifeq L3
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "/communities/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "/request"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L0:
aload 6
ldc "verify_info"
aload 4
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
getstatic com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/POST Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;
astore 4
L4:
aload 0
aload 4
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/schoollife/common/bean/SchoolLifeResultBase
aconst_null
aload 6
invokevirtual com/nd/schoollife/business/com/http/impl/CommunityComImpl/processRequestAndParse(Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;Lorg/json/JSONObject;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
areturn
L2:
astore 4
aload 4
invokevirtual org/json/JSONException/printStackTrace()V
goto L1
L3:
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "/communities/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
getstatic com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/DELETE Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;
astore 4
goto L4
.limit locals 7
.limit stack 6
.end method

.method public searchCommunity(Ljava/lang/String;II)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 4
aload 4
getstatic com/nd/schoollife/business/com/http/impl/CommunityComImpl/URL_SEARCH_COMMUNITY Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
ldc "?filter=hotword"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
ldc "&value="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
aload 1
invokestatic android/net/Uri/encode(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iload 2
ifle L0
aload 4
ldc "&page="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L0:
iload 3
ifle L1
aload 4
ldc "&size="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L1:
aload 0
getstatic com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/GET Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/schoollife/common/bean/result/ResultCommunityInfoList
aconst_null
invokevirtual com/nd/schoollife/business/com/http/impl/CommunityComImpl/processRequestAndParse(Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
checkcast com/nd/schoollife/common/bean/result/ResultCommunityInfoList
areturn
.limit locals 5
.limit stack 5
.end method

.method public updateRole(JJI)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L1 to L3 using L4
aconst_null
astore 7
L0:
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 6
L1:
aload 6
ldc "id"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 6
ldc "uid"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 6
ldc "power"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 5
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L3:
aload 0
getstatic com/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType/POST Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;
getstatic com/nd/schoollife/business/com/http/impl/CommunityComImpl/URL_UPDATE_ROLE Ljava/lang/String;
ldc com/nd/schoollife/common/bean/SchoolLifeResultBase
aload 6
invokevirtual com/nd/schoollife/business/com/http/impl/CommunityComImpl/processRequestAndParse(Lcom/nd/schoollife/business/com/http/impl/SchoolLifeBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
areturn
L2:
astore 8
aload 7
astore 6
aload 8
astore 7
L5:
aload 7
invokevirtual org/json/JSONException/printStackTrace()V
goto L3
L4:
astore 7
goto L5
.limit locals 9
.limit stack 5
.end method
